GHIDRA_INSTALL_PATH=${HOME}/ghidra_11.3.2_PUBLIC

fetch-ghidra-files:
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Features/Base/lib/Base.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Features/Decompiler/lib/Decompiler.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/Docking/lib/Docking.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/Generic/lib/Generic.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/Project/lib/Project.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/SoftwareModeling/lib/SoftwareModeling.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/Utility/lib/Utility.jar ./lib
	cp ${GHIDRA_INSTALL_PATH}/Ghidra/Framework/Gui/lib/Gui.jar ./lib

install:
	mvn clean package assembly:single -Dmaven.repo.local=${PWD}/.m2/repository

