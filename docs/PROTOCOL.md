# LANtastic v6.0 Protocol Documentation

## TSR Interrupt Chain

### Load Order
```
NE3.EXE → AILANBIO.EXE → REDIR.EXE → SERVER.EXE → NET.EXE
```

### Interrupt Hooks

| Binary | INT 21h | INT 2Fh | INT 5Ch | Role |
|--------|---------|---------|---------|------|
| NE3 | 26 calls | 4 calls | 0 | NIC driver, hooks INT 21h for TSR install |
| AILANBIO | 27 calls | 6 calls | 2 | NetBIOS layer, hooks INT 5Ch |
| REDIR | 37 calls | 3 calls | 2 | DOS redirector, hooks INT 21h/2Fh |
| SERVER | 33 calls | 13 calls | 1 | File/print server, hooks INT 2Fh |
| NET | 145 calls | 4 calls | 3 | Command-line tool (not TSR) |

### INT 2Fh Multiplex — AH=B8h
LANtastic registers on INT 2Fh with AH=B8h.
- AL=00h: Installation check (returns AL=FFh if installed)
- AL=01h-FFh: Various LANtastic services

### INT 5Ch — NetBIOS Interface
AILANBIO installs the NetBIOS handler on INT 5Ch.
Standard NetBIOS NCB (Network Control Block) commands supported.

## REDIR.EXE Parameters (V6.00.082/AI)

```
ADD_NAME_NCBS         APPLY_RLOGIN         BEEP_CYCLE
BEEP_DELAY            BUFFERS              BUFFER_IN_USE
CANCEL_NCB_NO_POST    CHECK_REDIR_CONFIG   CURRENT_ACTTE
DATAGRAM_POST         DESCRIBE             DISABLED
DISABLE_NCP_ENCRYPT   DISCARD_ALL_BUFFERS
```

## SERVER.EXE Parameters (V6.00.082/AI)

```
ACCOUNT_SERVER        ACL_SUPPORT          ACTIVE
ADAPTERS              AUDITING             CLEAR_MONO_SCREEN
CURRENT_LOGIN_ENTRY   DESCRIBE             DESPOOLER_STOPPED
DISABLED              DISABLE_LOCK_HOLD    ENABLED
ENABLE_LOCK_HOLD
```

Server event scripts:
- LOGINON.SLM — runs on user login
- LOGINOFF.SLM — runs on user logout
- SHAREON.SLM — runs on share connect
- SHAREOFF.SLM — runs on share disconnect

## NET.EXE Commands

```
ATTACH      AUDIT       BEEP        CHANGEPW    CHAT
CLOCK       COPY        DATE        DELAY       DETACH
DISABLEA    ECHO        EXPAND      FLUSH       HELP
INDIRECT    LOGIN       LOGOUT      LPT         MAIL
MESSAGE     POSTBOX     PRINT       QUEUE       SEND
SHARE       SHOW        SHUTDOWN    UNUSE       USE
USER
```

Key commands:
- `NET USE D: \\SERVER\SHARE` — map network drive
- `NET LOGIN \\SERVER` — authenticate to server
- `NET SHOW \\SERVER` — display shared resources
- `NET SEND \\SERVER message` — send message
- `NET QUEUE \\SERVER` — show print queue

## AILANBIO Parameters (V4.06)

```
ACK_TIMEOUT           ADAPTER              BUFFERS
DESCRIBE              DISCONNECT_TIMEOUT   FORCE_ACK_MODE
HELP                  INITIAL_SEND_SIZE    INTERNAL
IPX_ROUTING           IPX_SIZE             KEEP_ALIVE_TIMEOUT
NCBs                  SESSIONS             PACKET_SIZE
```

## Packet Format

LANtastic uses raw IEEE 802.3/802.2 LLC frames (no specific EtherType).
The protocol is NetBIOS-based (similar to NetBEUI/NBF):
- NE3 handles the raw Ethernet frame (src MAC, dst MAC, length)
- AILANBIO adds NetBIOS session/datagram headers
- REDIR/SERVER add SMB-like file sharing protocol on top

## Architecture

```
+------------------+
|    NET.EXE       | ← User commands (NET USE, NET SHOW)
+------------------+
|   SERVER.EXE     | ← File/print server (INT 2Fh)
+------------------+
|   REDIR.EXE      | ← DOS redirector (INT 21h/2Fh)
+------------------+
|  AILANBIO.EXE    | ← NetBIOS layer (INT 5Ch)
+------------------+
|    NE3.EXE       | ← NIC driver (NE2000 hardware)
+------------------+
|  DOSBox-X NE2000 | ← Hardware emulation
+------------------+
|     SLIRP        | ← TCP/IP tunnel
+------------------+
```
