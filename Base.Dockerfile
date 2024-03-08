# Use a base image do WSO2 API Manager
FROM wso2/wso2am:3.2.0

# Exponha as portas necessárias para acessar o WSO2 API Manager
EXPOSE 9443 9763 8243 8280

# Inicie o servidor WSO2 API Manager
CMD ["wso2server.sh"]