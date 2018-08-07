cd sg2im-service
export FLASK_APP=app.py
source env/bin/activate
pip install -r requirements.txt
echo $PWD > env/lib/python3.5/site-packages/sg2im.pth

if [ -d sg2im-models ];
then
  python app.py
else
  mkdir -p sg2im-models
  wget https://storage.googleapis.com/sg2im-data/small/vg128.pt -O sg2im-models/vg128.pt
fi
