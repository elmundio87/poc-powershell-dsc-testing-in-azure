Ruby 2.0.0 didn't work, needed to install 2.3.1

Read the [kitchen-azurerm docs](https://github.com/test-kitchen/kitchen-azurerm) for the guide on how to set up azure credentials

To run;

```
export AZURERM_SUBSCRIPTION="1234-YOUR-SUBSCRIPTION-ID-5678"
kitchen test
```

If your powershell is failing to compile into a MOF for whatever reason, add the `--log-level=DEBUG` parameter to diagnose.

I have made a PR in the kitchen-dsc repo that should make it easier to diagnose errors without having to run in DEBUG logging mode.
In the meantime, I have pointed the gemfile at my own fork of kitchen-dsc.

Need to consider our options when testing resources that use WSUS urls for hosted installer files.

While it may seem obvious now, the project folder name MUST match the name of the module if you want to do module-style testing (ie. the module is in the root of the project)
