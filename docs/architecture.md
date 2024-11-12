# System Architecture

## Multi-Agent Design

The system uses 5 specialized agents:

1. **Router** - Classifies queries
2. **Retriever** - Fetches relevant documents
3. **Synthesizer** - Combines context
4. **Validator** - Verifies responses
5. **Response** - Generates final answer

## LangGraph State Machine

Agents communicate via shared state, enabling:
- Type-safe data flow
- Clear execution order
- Easy debugging
- Metrics tracking
# Nov 12
