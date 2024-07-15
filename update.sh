# Código desarrollado por @gata_dios 
  https://click.discord.com/ls/click?upn=u001.a0NJ38DJJG1sulNx5wS1jjC3-2FytEgbSbq-2FUmpxbpkbg14puiUN75BQU-2BrfLFYuAWB8X0py2eeyVjD738fhGFSHhMPsyUEndqfLtACp5zPj0vjfPcC3G1jvcquDbkdstS32dz0bJWFvPTn-2FAvvLDKrRf7grQqlAG9KK39QSJ5p90-2BWW9qUyZNggQqDPblolB7YDWFZK-2FhgshNHIdkuLieXmhCATbvnhcJPyFIYfdFkCM-3DIzgt_DC2mLSuw-2BGdNjXXJGz6qZODze6aow2jS5IQbAEd5B73JkpsJdc3zUkgyPgFnz-2F9swP2XB3kbaMnPP7bqBSREmYGUzo3ilC3xDwqWYBlBmzjNb-2BpyvbclYhET4ROLWEDxQ16Yp6GomOpdyOS0jZ6knQrt5e-2FCKvPz90qCgkrnWvfFJtg1dXL80-2B-2FJJ0hBTW9IMY-2FW90a6xYJqD1zAGuf-2FpheM8XV7DFW9wfvIi4uJVGCw1WeHrQgBtZiFHBz4roxaYMdh13a811tel6oepJfeeQ-3D-3D
#!/data/data/com.termux/files/usr/bin/bash 
BOT_DIR="GataBot-MD"  
BOT_REPO="https://github.com/GataNina-Li/$BOT_DIR"
DB_FILE="database.json"
 
GREEN='\033[32m'
BOLD='\033[1m'
RESET='\033[0m'
  
if [[ $(basename "$PWD") == "$BOT_DIR" ]]; then
if [ -e "$DB_FILE" ]; then 
echo -e "${BOLD}${GREEN}Moviendo \"$DB_FILE\" a \"$HOME\" y clonando repositorio \"$BOT_REPO\" en \"$HOME\"...${RESET}"
echo -e "${BOLD}${GREEN}Moving \"$DB_FILE\" to \"$HOME\" and cloning repository \"$BOT_REPO\" into \"$HOME\"...\n${RESET}"
mv "$HOME/$BOT_DIR/$DB_FILE" "$HOME" && cd && rm -rf "$HOME/$BOT_DIR" && git clone "$BOT_REPO" && cd "$HOME/$BOT_DIR" && yarn --ignore-scripts && npm install && cd
if [ -e "$HOME/$DB_FILE" ]; then
echo -e "${BOLD}${GREEN}Rescatando archivo \"$DB_FILE\" y moviendo a \"$BOT_DIR\".${RESET}"
echo -e "${BOLD}${GREEN}Rescuing file \"$DB_FILE\" and moving it to \"$BOT_DIR\".\n${RESET}"
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
mv "$HOME/$DB_FILE" "$HOME/$BOT_DIR/" && cd "$BOT_DIR" && npm start
else
echo -e "${BOLD}${GREEN}\"$DB_FILE\" No existe en \"$HOME\"${RESET}"
echo -e "${BOLD}${GREEN}\"$DB_FILE\" does not exist in \"$HOME\"\n${RESET}"
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
cd "$BOT_DIR" && npm start
fi

else
echo -e "${BOLD}${GREEN}\"$DB_FILE\" no se encontró en \"$BOT_DIR\", clonando repositorio \"$BOT_REPO\" en \"$HOME\"...${RESET}"
echo -e "${BOLD}${GREEN}\"$DB_FILE\" not found in \"$BOT_DIR\", cloning repository \"$BOT_REPO\" to \"$HOME\"...\n${RESET}"
cd && rm -rf "$HOME/$BOT_DIR" && git clone "$BOT_REPO" && cd "$HOME/$BOT_DIR" && yarn --ignore-scripts && npm install && cd
if [ -e "$HOME/$DB_FILE" ]; then
echo -e "${BOLD}${GREEN}Rescatando archivo \"$DB_FILE\" y moviendo a \"$BOT_DIR\".${RESET}"
echo -e "${BOLD}${GREEN}Rescuing file \"$DB_FILE\" and moving it to \"$BOT_DIR\".\n${RESET}"
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
mv "$HOME/$DB_FILE" "$HOME/$BOT_DIR/" && cd "$BOT_DIR" && npm start
else
echo -e "${BOLD}${GREEN}\"$DB_FILE\" No existe en \"$HOME\"${RESET}"
echo -e "${BOLD}${GREEN}\"$DB_FILE\" does not exist in \"$HOME\"\n${RESET}"
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
cd "$BOT_DIR" && npm start
fi
fi

else
echo -e "${BOLD}${GREEN}Ubicación actual: \"$HOME\"${RESET}"
echo -e "${BOLD}${GREEN}Current location: \"$HOME\"\n${RESET}"
cd "$HOME"
if [ -e "$HOME/$BOT_DIR" ]; then
echo -e "${BOLD}${GREEN}Dirigiéndome a \"$BOT_DIR\".${RESET}"
echo -e "${BOLD}${GREEN}Heading to \"$BOT_DIR\".\n${RESET}"
cd "$HOME/$BOT_DIR"
if [ -e "$HOME/$BOT_DIR/$DB_FILE" ]; then
echo -e "${BOLD}${GREEN}Moviendo \"$DB_FILE\" a \"$HOME\" y clonando repositorio \"$BOT_REPO\" en \"$HOME\"...${RESET}"
echo -e "${BOLD}${GREEN}Moving \"$DB_FILE\" to \"$HOME\" and cloning repository \"$BOT_REPO\" in \"$HOME\"...\n${RESET}"
mv "$HOME/$BOT_DIR/$DB_FILE" "$HOME" && cd && rm -rf "$BOT_DIR" && git clone "$BOT_REPO" && cd "$BOT_DIR" && yarn --ignore-scripts && npm install && cd
if [ -e "$HOME/$DB_FILE" ]; then
echo -e "${BOLD}${GREEN}Rescatando archivo \"$DB_FILE\" y moviendo a \"$BOT_DIR\".${RESET}"
echo -e "${BOLD}${GREEN}Rescuing file \"$DB_FILE\" and moving it to \"$BOT_DIR\".\n${RESET}"
mv "$HOME/$DB_FILE" "$HOME/$BOT_DIR/" && cd "$BOT_DIR" &&
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
npm start
else
echo -e "${BOLD}${GREEN}Dirigiéndome a \"$BOT_DIR\"...${RESET}"
echo -e "${BOLD}${GREEN}Heading to \"$BOT_DIR\".\n${RESET}"
cd "$BOT_DIR" && 
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
npm start
fi
else
echo -e "${BOLD}${GREEN}\"$DB_FILE\" no existe, clonando repositorio \"$BOT_REPO\" en \"$HOME\"...${RESET}"
echo -e "${BOLD}${GREEN} \"$DB_FILE\" does not exist, cloning \"$BOT_REPO\" in \"$HOME\"...\n${RESET}"
cd && rm -rf "$BOT_DIR" && git clone "$BOT_REPO" && cd "$BOT_DIR" && yarn --ignore-scripts && npm install &&
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
npm start
fi
else
echo -e "${BOLD}${GREEN}\"$BOT_DIR\" no existe, clonando repositorio \"$BOT_REPO\" en \"$HOME\"...${RESET}"
echo -e "${BOLD}${GREEN} \"$BOT_DIR\" does not exist, cloning \"$BOT_REPO\" in \"$HOME\"...\n${RESET}"
git clone "$BOT_REPO" && cd "$BOT_DIR" && yarn --ignore-scripts && npm install && cd
if [ -e "$HOME/$DB_FILE" ]; then
echo -e "${BOLD}${GREEN}He encontrado un archivo \"$DB_FILE\" en \"$HOME\", lo moveré a \"$BOT_DIR\".${RESET}"
echo -e "${BOLD}${GREEN}I have found a file \"$DB_FILE\" in \"$HOME\", moving it to \"$BOT_DIR\".\n${RESET}"
mv "$HOME/$DB_FILE" "$HOME/$BOT_DIR/" && cd "$BOT_DIR" &&
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
npm start
else
cd "$BOT_DIR" &&
echo -e "${BOLD}${GREEN}Iniciando $BOT_DIR...${RESET}"
echo -e "${BOLD}${GREEN}Starting  $BOT_DIR...\n${RESET}"
npm start
fi
fi
fi
