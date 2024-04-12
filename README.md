

```yaml
# FIXME: template.yaml 
Environment:
  Variables:
    SAMPLE_TABLE: http-crud-tutorial-items
    # 如果使用 SAMPLE_TABLE: !Ref SampleTable
    # 在做 local debug 的時候, Lambda Function 裏頭會抓不到環境變數QQ
```