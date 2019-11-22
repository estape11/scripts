# Execution
# Example > python3 Training.py Model Epoch BatchSize BatchSizeTest Steps ValidationSteps

DIR="patrones"
if [ -d "$DIR" ]; then
	cd patrones
	git checkout EntrenamientoServidor
else
	# Clonacion
	git clone https://estape11:thekillers97@gitlab.com/debruynmonge/patrones.git
	cd patrones
	git checkout EntrenamientoServidor
fi

python3 Training.py 3 4 100 30 1000 200
python3 Training.py 3 4 100 30 1000 200
python3 Training.py 3 4 100 30 1000 200
python3 Training.py 3 4 100 30 1000 200

python3 Training.py 4 4 200 30 700 200
python3 Training.py 4 4 200 30 700 200