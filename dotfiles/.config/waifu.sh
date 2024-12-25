case $1 in
    "nsfw") TYPE="nsfw";;
    "sfw") TYPE="sfw";;
    *) TYPE="sfw";;
esac

URL="https://api.waifu.pics/${TYPE}/waifu"

function update_waifu() {
    curl -s $URL \
    | jq '.url' \
    | xargs wget -q -O tyan
}

wezterm imgcat tyan
update_waifu &
