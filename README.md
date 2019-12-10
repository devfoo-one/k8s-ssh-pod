# K8s-ssh-pod

A small ssh pod that allows ssh connection via one pre-defined ssh-key.
I use this to sftp into the cluster filesystem.

## Installation

- Create a K8s secret containing your public ssh key
  - ` kubectl create secret generic my-ssh-public-key --from-file=id_rsa.pub=/home/YOURUSERNAME/.ssh/id_rsa.pub`
- Create Pod
  - `kubectl create -f k8s-ssh-pod.yaml`

## Usage

You can access the pod by connecting with ssh using the *root* user (`ssh -p <YOUR_ASSIGNED_NODE_PORT> root@<YOUR_SERVER_URL>`)

or 

You may now forward the ssh port to your local machine via `kubectl port-forward ssh 4444:22` and connect to it by using the *root* user (`ssh -p4444 root@localhost`).
