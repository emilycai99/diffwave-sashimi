import subprocess
from subprocess import STDOUT
import os
os.environ["CUDA_VISIBLE_DEVICES"] = "0"
subprocess.run(['python', 'generate.py',
                'model=wavenet','generate.ckpt_iter=500000','generate.n_samples=1024','generate.batch_size=128'
               ], stderr=STDOUT)