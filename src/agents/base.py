"""Base agent class with common functionality."""
from abc import ABC, abstractmethod
from typing import Any
import time
from langchain_openai import ChatOpenAI
import tiktoken

from ..config import settings
from ..utils.logger import setup_logger


class BaseAgent(ABC):
    """Abstract base class for all agents."""
    
    def __init__(self):
        self.logger = setup_logger(self.__class__.__name__)
        self.llm = ChatOpenAI(
            model=settings.model_name,
            temperature=settings.temperature,
            openai_api_key=settings.openai_api_key
        )
        self.encoder = tiktoken.encoding_for_model(settings.model_name)
        self.total_tokens = 0
        self.total_cost = 0.0
    
    @property
    @abstractmethod
    def name(self) -> str:
        """Agent name for logging."""
        pass
    
    @abstractmethod
    async def process(self, state: dict[str, Any]) -> dict[str, Any]:
        """Process state and return updates."""
        pass
    
    def count_tokens(self, text: str) -> int:
        """Count tokens in text."""
        return len(self.encoder.encode(text))
# Feb 25
# Aug 20
# Jan 28
# Jul 8
# Oct 8
# 2025-02-08T15:00:00
# 2025-03-02T14:00:00
# 2025-03-13T10:00:00
# 2025-02-08T15:00:00
# 2025-03-02T14:00:00
# 2025-03-13T10:00:00
# 2025-04-02T14:00:00
# 2025-04-13T10:00:00
# 2025-04-23T11:00:00
# 2025-05-02T14:00:00
# 2025-05-13T10:00:00
# 2025-05-23T11:00:00
# 2025-06-02T14:00:00
# 2025-06-13T10:00:00
# 2025-06-23T11:00:00
# 2025-07-02T14:00:00
# 2025-07-13T10:00:00
# 2025-07-23T11:00:00
# 2025-08-02T14:00:00
# 2025-08-13T10:00:00
# 2025-08-23T11:00:00
# 2025-09-02T14:00:00
# 2025-09-13T10:00:00
# 2025-09-23T11:00:00
# 2025-10-02T14:00:00
# 2025-10-13T10:00:00
# 2025-10-23T11:00:00
# 2025-11-02T14:00:00
# 2025-11-13T10:00:00
