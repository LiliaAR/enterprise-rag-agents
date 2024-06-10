"""LangGraph workflow definition."""
from langgraph.graph import StateGraph


def create_rag_graph():
    """Create the multi-agent RAG graph."""
    workflow = StateGraph()
    # Graph definition here
    return workflow.compile()
