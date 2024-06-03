dados <- read.table(file = "updated_cybersecurity_attacks.csv",  header = T,  sep=",", dec = ".", quote = '"')
head(dados)
tail(dados)
str(dados)

# Exibindo valores únicos para cada variável no console
unique(dados$Timestamp)#
unique(dados$Source.IP.Address)#
unique(dados$Destination.IP.Address)#
unique(dados$Source.Port)
unique(dados$Destination.Port)
unique(dados$Protocol)
unique(dados$Packet.Type)###
unique(dados$Traffic.Type)
unique(dados$Malware.Indicators)
unique(dados$Alerts.Warnings)
unique(dados$Attack.Type)
unique(dados$Attack.Signature)
unique(dados$Action.Taken)
unique(dados$Severity.Level)
unique(dados$User.Information)
unique(dados$Network.Segment)
unique(dados$Geo.location.dados)
unique(dados$Proxy.Information)
unique(dados$Firewall.Logs)
unique(dados$IDS.IPS.Alerts)
unique(dados$Log.Source)
unique(dados$Browser)
unique(dados$Device.OS)
unique(dados$Year)
unique(dados$Month)
unique(dados$Day)
unique(dados$Hour)
unique(dados$Minute)
unique(dados$Second)
unique(dados$DayOfWeek)

dados$Protocol <- as.factor(dados$Protocol)

head(dados$Protocol)

# Calculando a moda para uma coluna específica
moda <- names(sort(-table(dados$yers)))[1]
print(moda)

qtdProtocolo <- length(dados$Protocol)
print(qtdProtocolo)

colSums(is.na(dados))

table(dados$DayOfWeek)


# Lista para armazenar as tabelas de contagem
contagens <- list()

# Iterar sobre todas as colunas, exceto a primeira (X)
for (coluna in names(dados)[-1]) {
  contagens[[coluna]] <- table(dados[[coluna]])
}

# Exibir as tabelas de contagem
contagens

length(unique(dados$Hour))
length(unique(dados$Hour))


tabela <- table(dados$Device.OS)
# Criar um gráfico de barras
barplot(tabela, main = "Números de ataques por sistema operacional", xlab = "Sistemas operacionais", ylab = "Número de ataques")
