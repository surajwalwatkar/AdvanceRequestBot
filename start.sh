if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/surajwalwatkar/AdvanceRequestBot /AdvanceRequestBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AdvanceRequestBot
fi
cd /AdvanceRequestBot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
