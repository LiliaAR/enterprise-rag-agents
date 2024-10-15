"""Validator agent."""
from .base import BaseAgent


class ValidatorAgent(BaseAgent):
    """Validates responses."""
    
    @property
    def name(self) -> str:
        return "Validator"
# Oct 15
