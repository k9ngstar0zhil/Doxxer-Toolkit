function install() {
   clear
   echo -e "\033[31mActualizando paquetes..."
   emerge -aqv dev-lang/python dev-lang/php dev-python/pip dev-python/pipx
   echo -e "\nInstalando pip3..."
   wget https://bootstrap.pypa.io/get-pip.py
   python3 get-pip.py
   rm get-pip.py
   echo -e "\nInstalando requerimientos..."
   pip3 install -r requirements.txt --break-system-packages
   echo -e "\n\033[32mInstalacion completa."
   echo -e "\n[~] Utiliza el comando: python3 dox.py para ejecutar la herramienta."
}
install
