# Enterprise RAG Agents

A multi-agent retrieval-augmented generation system for enterprise document querying.
Built with LangGraph, featuring routing, retrieval, synthesis, and validation agents.

## Architecture
- **Router Agent** — classifies and routes incoming queries
- **Retriever Agent** — hybrid search across vector + keyword stores
- **Synthesizer Agent** — generates grounded responses
- **Validator Agent** — checks response quality and groundedness

## Stack
- Python 3.11+
- LangGraph / LangChain
- OpenAI GPT-4o
- ChromaDB / FAISS
- FastAPI

## Setup
```bash
pip install -r requirements.txt
cp .env.example .env
python app.py
```
