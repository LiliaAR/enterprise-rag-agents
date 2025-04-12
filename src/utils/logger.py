"""Logging configuration."""
import logging
import sys
from pythonjsonlogger import jsonlogger


def setup_logger(name: str) -> logging.Logger:
    """Configure structured logging."""
    logger = logging.getLogger(name)
    logger.setLevel(logging.INFO)
    
    handler = logging.StreamHandler(sys.stdout)
    formatter = jsonlogger.JsonFormatter(
        "%(asctime)s %(name)s %(levelname)s %(message)s"
    )
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    
    return logger
# Feb 28
# 2025-02-21T10:00:00
# 2025-03-12T15:00:00
# 2025-02-21T10:00:00
# 2025-03-12T15:00:00
# 2025-04-12T15:00:00
