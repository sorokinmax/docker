## Grok patterns

### IIS logs default scheme

```
%{TIMESTAMP_ISO8601:logtime} %{IPORHOST:s-ip} %{WORD:cs-method} %{URIPATH:cs-uri-stem} %{NOTSPACE:cs-uri-query} %{NUMBER:s-port} %{NOTSPACE:cs-username} %{IPORHOST:c-ip} %{NOTSPACE:cs(User-Agent)} %{NOTSPACE:cs(Referer)} %{NUMBER:sc-status} %{NUMBER:sc-substatus} %{NUMBER:sc-win32-status} %{NUMBER:time-taken}
```
