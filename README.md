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