# Use the official Microsoft SQL Server 2022 image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Vishal@12345

# Expose SQL Server port
EXPOSE 1433

# Start SQL Server
CMD ["/opt/mssql/bin/sqlservr"]


# docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Vishal@12345' \
#   -p 1433:1433 \
#   -v mssql_vol:/var/opt/mssql \
#   -d mymssql
