import mysql.connector
from mysql.connector import Error
import logging

# Configure logging
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

def get_db_connection():
    try:
        logger.info("Attempting to connect to MySQL database...")
        conn = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',  # Update this with your MySQL password
            database='beastling_ecomm',
            port=3306  # Default MySQL port
        )   
        
        if conn.is_connected():
            db_info = conn.get_server_info()
            logger.info(f"Successfully connected to MySQL Server version {db_info}")
            return conn
        else:
            logger.error("Failed to connect to MySQL database")
            return None
            
    except Error as e:
        if e.errno == 1049:  # Database doesn't exist
            logger.error(f"Database 'beastling_ecommerce_db' does not exist. Error: {e}")
        elif e.errno == 2003:  # Server not running
            logger.error(f"Can't connect to MySQL server. Please make sure MySQL is running. Error: {e}")
        elif e.errno == 1045:  # Invalid credentials
            logger.error(f"Invalid MySQL credentials. Please check your username and password. Error: {e}")
        else:
            logger.error(f"Error connecting to MySQL database: {e}")
        return None
    except Exception as e:
        logger.error(f"Unexpected error while connecting to database: {e}")
        return None


