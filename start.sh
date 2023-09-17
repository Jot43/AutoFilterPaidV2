if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jot43/AutoFilterPaidV2.git /AutoFilterPaidV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilterpaidv2
fi
cd AutoFilterPaidV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
