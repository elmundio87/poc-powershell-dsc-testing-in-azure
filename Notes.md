Ruby 2.0.0 didn't work, needed to install 2.3.1

Read the [kitchen-azurerm docs](https://github.com/test-kitchen/kitchen-azurerm) for the guide on how to set up azure credentials

To run;

```
export AZURERM_SUBSCRIPTION="1234-YOUR-SUBSCRIPTION-ID-5678"
kitchen test
```

If your powershell is failing to compile into a MOF for whatever reason, add the `--log-level=DEBUG` parameter to diagnose.
