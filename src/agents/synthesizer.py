"""Synthesizer agent."""
from .base import BaseAgent


class SynthesizerAgent(BaseAgent):
    """Combines retrieved context."""
    
    @property
    def name(self) -> str:
        return "Synthesizer"
