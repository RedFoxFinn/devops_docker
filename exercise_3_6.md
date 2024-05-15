
# Ex 3.6 (ex3_6.sh)

### Image sizes prior to optimization

| Image | Size | Difference |
| :---: | :--: |  |
| backend | 1.07 GB |  |
| frontend | 1.27 GB |  |

### Running image optimizations

- Run RUN commands with && instead of separate ones
- Run `apt purge -y --auto-remove curl`
- Run `rm -rf /var/lib/apt/lists/*`

### Image sizes after the optimizations

| Image | Size | Difference |
| :---: | :--: |  |
| backend | 1.07 GB | 0.0 GB |
| frontend | 1.27 GB | 0.0GB |
