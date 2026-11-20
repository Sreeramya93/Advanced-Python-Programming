
import logging
logging.basicConfig(
    
    filename="app2.log",
    level=logging.INFO,
    format="%(asctime)s- %(levelname)s- %(message)s"
    )

logging.info("this is info message")
logging.warning("Low disk space")
logging.error("Unable to connect to server")
print("logging completed")

