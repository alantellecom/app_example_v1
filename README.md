
Binarios inclusos:

curl -LO https://storage.googleapis.com/spinnaker-artifacts/spin/$(curl -s https://storage.googleapis.com/spinnaker-artifacts/spin/latest)/linux/amd64/spin

Create cloud builder trigger

Select Connect with repository e choose github (mirror) 

Set the following trigger settings:
Name: sample-app-tags
Trigger type: Branch
Tag (regex): ^master$
Build configuration: Cloud Build configuration file (yaml or json)
Cloud Build configuration file location: cloudbuild.yaml


Ajustar informações nos scripts e rodar.

1- setup_app_pipeline.sh
    project_gcp="robotic-tide-284315"
    app_name="sample-app"
    email="allanasodreferreira@gmail.com"
    default_image_version="v1"
    gate_ip="http://35.237.72.41"

2- setup_deploy_files.sh 
    project_gcp="robotic-tide-284315"
    app_name="sample-app"
    image_version="v1"

3- cloudbuild.yaml
    Após setup dos arquivos de deploy (2), apenas atualizar versão da imagem a cada novo deploy