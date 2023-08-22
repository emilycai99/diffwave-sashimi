import subprocess
from subprocess import STDOUT
import os
os.environ["CUDA_VISIBLE_DEVICES"] = "2"
subprocess.run(['python', 'train.py',
                'model=wavenet'
               ], stderr=STDOUT)