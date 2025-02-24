"""Configuration management."""
from pydantic import Field
from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    """Application settings."""
    
    openai_api_key: str = Field(..., description="OpenAI API key")
    model_name: str = Field(default="gpt-4o")
    temperature: float = Field(default=0.1)
    max_tokens: int = Field(default=4000)
    
    pinecone_api_key: str = Field(..., description="Pinecone API key")
    pinecone_environment: str = Field(...)
    pinecone_index_name: str = Field(default="rag-docs")
    
    log_level: str = Field(default="INFO")
    
    class Config:
        env_file = ".env"


settings = Settings()
# Aug 10
# Jan 20
# Apr 28
# Jul 18
# Oct 18
# 2025-01-02T14:00:00
# 2025-01-12T15:00:00
# 2025-01-20T15:00:00
# 2025-02-02T14:00:00
# 2025-02-13T10:00:00
# 2025-02-24T15:00:00
# 2025-03-08T15:00:00
# 2025-03-19T11:00:00
# 2025-03-29T10:00:00
# 2025-01-02T14:00:00
# 2025-01-12T15:00:00
# 2025-01-20T15:00:00
# 2025-02-02T14:00:00
# 2025-02-13T10:00:00
# 2025-02-24T15:00:00
