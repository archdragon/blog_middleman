---
title: "PostgreSQL error fix: This data directory appears to be running a pre-existing postmaster"
date: 2017-05-22 18:25 UTC
icon: "database"
custom_summary: 'Fix for "this data directory appears to be running a pre-existing postmaster" error.'
tags:
id: 3
---

## Error

On MacOs, after system restart or when computer is waking up from sleep the following message appears:

```bash
this data directory appears to be running a pre-existing postmaster
```

## Solution

1. Run:

    ```bash
    declare -x PGDATA="/Users/your_name/Library/Application Support/Postgres/var-9.4/"
    ```

    where `your_name` is your user name (you can get it by running `whoami` command in the terminal).

2. Restart or stop postgres

    ```bash
    pg_ctl restart -m fast
    ```

    or

    ```bash
    pg_ctl stop -m fast
    ```
