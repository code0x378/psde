# PSDE - Powershell Developer Environment

**Barely alpha status. Works on my computer. Probably not yours.**

Powershell Developer Environment (PSDE) is a simple module that sets paths to local SDKs and sets related environment variables 
such as JAVA_HOME. Global settings can exist along with local project settings.  The PSDE can be invoked manually 
from powershell or automatically from your powershell profile.  In addition to tooling there are pre and post 
hooks for use when needed. PSDE is very simplistic so don't expect it to do much.

![Powershell Developer Environment](screenshot.png?raw=true "Powershell Developer Environment")

## Limitations (There are many)

* No sdk installation.  You need to manually download and extract the required files.
* Doesn't update via directory traversal.  It would need to be manually run again.
* Only supports nodejs, python and java
* Not tested using Powershell Core on nix platforms yet

## Installation

This is not in the Powershell Gallery yet so just clone the repo to your user's local powershell dir.  Add
Enable-Psde to your powershell profile or run manually.

## Getting started

Coming soon.
