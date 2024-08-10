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
