# Event Attestator Api

Small flask api to retrieve information from a running Event Attestator.

## Run

Run with `./run.sh`.

## Examples

### Signer details

```bash
curl -X POST -H 'Content-Type: application/json' -d '{"method":"getSignerDetails"}' http://api-uri/
```

Output:

```bash
{"result":{"account":"0x...","attestationCertificate":"0x...","attestationSignature":"0x...","publicKey":"0x..."}}
```

### Signed event

```bash
curl -X POST -H 'Content-Type: application/json' -d '{"method":"getSignedEvent","params":[$EVENT_ID]}' http://api-uri/
```

Output:

```bash
{"result":{"block_id_hash":"0x...","event_id":"...","event_payload":"...","log":{"address":"0x...","data":[...],"topics":["0x...","0x...","0x...", "0x..."]},"origin":"Mainnet","protocol":"Ethereum","public_key":"...","signature":"...","tx_id_hash":"0x...","version":"V1"}}
```
