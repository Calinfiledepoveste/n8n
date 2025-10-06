# Folosește imaginea oficială n8n ca punct de plecare
FROM n8nio/n8n:110.0

# Treci la utilizatorul root pentru a avea permisiunea de a instala
USER root

# Instalează pachetele de noduri comunitare necesare
RUN npm install n8n-nodes-pdf-parse @n8n/n8n-nodes-langchain

# Treci înapoi la utilizatorul securizat 'node'
USER node
