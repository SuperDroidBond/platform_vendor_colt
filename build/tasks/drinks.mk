COLT_TARGET_PACKAGE := $(PRODUCT_OUT)/COLT-$(COLT_VERSION).zip

.PHONY: otapackage drinks
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
drinks: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(COLT_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(COLT_TARGET_PACKAGE) | cut -d ' ' -f1 > $(COLT_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}COLT ${txtrst}";
	@echo -e ""
	@echo -e ${CL_GRN}"	 ▄████▄   ▒█████   ██▓  ▄▄▄█████▓ ▒█████    ██████	"
	@echo -e ${CL_GRN}"	▒██▀ ▀█  ▒██▒  ██▒▓██▒  ▓  ██▒ ▓▒▒██▒  ██▒▒██    ▒ 	"
	@echo -e ${CL_GRN}"	▒▓█    ▄ ▒██░  ██▒▒██░   ▒ ▓██░ ▒░▒██░  ██▒░ ▓██▄   	"
	@echo -e ${CL_GRN}"	▒▓▓▄ ▄██▒▒██   ██░▒██░  ░ ▓██▓ ░ ▒██   ██░  ▒   ██▒	"
	@echo -e ${CL_GRN}"	▒ ▓███▀ ░░ ████▓▒░░██████▒▒██▒ ░ ░ ████▓▒░▒██████▒▒	"
	@echo -e ${CL_GRN}"	░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░▓  ░▒ ░░   ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░	"
	@echo -e ${CL_GRN}"	  ░  ▒     ░ ▒ ▒░ ░ ░ ▒  ░  ░      ░ ▒ ▒░ ░ ░▒  ░ ░	"
	@echo -e ${CL_GRN}"	░        ░ ░ ░ ▒    ░ ░   ░      ░ ░ ░ ▒  ░  ░  ░  	"
	@echo -e ${CL_GRN}"	░ ░          ░ ░      ░  ░           ░ ░        ░  	"
	@echo -e ${CL_GRN}"	░                                                  	"
	@echo -e ""
	@echo -e ${CL_MAG}"zip: "${CL_CYN} $(COLT_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_MAG}"md5: "${CL_CYN}" `cat $(COLT_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_MAG}"size:"${CL_CYN}" `ls -lah $(COLT_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
@echo -e ""
