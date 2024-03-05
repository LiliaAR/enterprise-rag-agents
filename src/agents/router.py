"""Router agent for query classification."""
from typing import Any
from .base import BaseAgent
from ..models.state import QueryClassification


class RouterAgent(BaseAgent):
    """Classifies queries and extracts entities."""
    
    @property
    def name(self) -> str:
        return "Router"
    
    async def process(self, state: dict[str, Any]) -> dict[str, Any]:
        query = state["query"]
        # Classification logic here
        classification = QueryClassification(
            intent="factual",
            entities=[],
            complexity="moderate",
            confidence=0.9
        )
        return {"classification": classification}
