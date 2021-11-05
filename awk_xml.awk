#!/usr/bin/awk

# Section begin
BEGIN {
# Positionnement du separateur de champ
  FS="[<|>]"
}

/tns/ {          # SI une ligne contient le mot "tns"
	tns=$3 	 # Assigne la valeur du 3e champ dans la variable tns
}

/user/ {          # SI une ligne contient le mot "user"
        user=$3   # Assigne la valeur du 3e champ dans la variable user
}

/password/ {          # SI une ligne contient le mot "password"
        password=$3   # Assigne la valeur du 3e champ dans la variable password
        printf "sqlplus %s/%s@%s\n", user, password, tns
}

