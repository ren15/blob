# blob

We could have used oras. However the api is a little bit confusing so for now we put bin in apline.

Standard:
```
/blob/a_pkg.zst
```


## Tools

skopeo

nerdctl

## One-liner

```bash
curl -fsSL https://raw.githubusercontent.com/ren15/blob/HEAD/upload.sh | bash -s ${{ env.IMAGE_REPO }}/${{ env.IMAGE_NAME }}:${{ env.IMAGE_TAG }} data.txt

curl -fsSL https://raw.githubusercontent.com/ren15/blob/HEAD/download.sh | bash -s ${{ env.IMAGE_REPO }}/${{ env.IMAGE_NAME }}:${{ env.IMAGE_TAG }} data.txt
```