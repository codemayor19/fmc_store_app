#!/bash/bin

#building the project
echo "building the project..."
python3.9 -m pip install -r requirements.text

# run this project
echo "Make migrations...."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect static"
python3.9 manage.py collectstatic --noinput --clear
