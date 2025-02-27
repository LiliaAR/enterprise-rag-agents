"""State definitions for LangGraph agents."""
from typing import TypedDict, Annotated, Sequence, Optional
from langchain_core.messages import BaseMessage
from pydantic import BaseModel, Field
import operator


class DocumentChunk(BaseModel):
    """Represents a retrieved document chunk."""
    content: str = Field(..., description="Chunk text content")
    source: str = Field(..., description="Source document name")
    score: float = Field(..., description="Relevance score")
    metadata: dict = Field(default_factory=dict, description="Additional 
metadata")


class QueryClassification(BaseModel):
    """Classification of user query."""
    intent: str = Field(..., description="Query intent")
    entities: list[str] = Field(default_factory=list)
    complexity: str = Field(..., description="Query complexity")
    confidence: float = Field(..., description="Classification confidence")


class ValidationResult(BaseModel):
    """Result of response validation."""
    is_valid: bool = Field(..., description="Whether response passed 
validation")
    issues: list[str] = Field(default_factory=list)
    confidence: float = Field(..., description="Validation confidence")


class AgentState(TypedDict):
    """Shared state passed between agents."""
    query: str
    classification: Optional[QueryClassification]
    retrieved_docs: Annotated[Sequence[DocumentChunk], operator.add]
    synthesized_context: Optional[str]
    validation: Optional[ValidationResult]
    response: Optional[str]
    sources: list[str]
    total_tokens: int
    total_cost: float
    processing_time_ms: int
    messages: Annotated[Sequence[BaseMessage], operator.add]
# Feb 20
# Feb 18
# Aug 28
# 2025-01-06T14:00:00
# 2025-02-16T15:00:00
# 2025-02-27T11:00:00
# 2025-03-09T10:00:00
# 2025-03-20T15:00:00
# 2025-01-06T14:00:00
# 2025-02-16T15:00:00
# 2025-02-27T11:00:00
