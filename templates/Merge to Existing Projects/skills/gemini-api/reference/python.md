# Python Gemini API (`google-genai`)

**Installation:** `pip install google-genai` (or `pip install google-genai pydantic` if using structured outputs).

**Initialization:**
```python
import os
from google import genai

# Automatically uses GEMINI_API_KEY env var
client = genai.Client()
```

## Basic Text Generation
```python
response = client.models.generate_content(
    model='gemini-2.5-flash',
    contents='Explain quantum mechanics in one sentence.'
)
print(response.text)
```

## System Instructions & Configuration
```python
from google.genai import types

response = client.models.generate_content(
    model='gemini-2.5-flash',
    contents='Explain quantum mechanics.',
    config=types.GenerateContentConfig(
        system_instruction='You are a pirate.',
        temperature=0.7,
    )
)
print(response.text)
```

## Structured Outputs (JSON)
Using Pydantic is highly recommended:
```python
from pydantic import BaseModel
from google.genai import types

class CityInfo(BaseModel):
    name: str
    population: int
    country: str

response = client.models.generate_content(
    model='gemini-2.5-flash',
    contents='Tell me about Tokyo.',
    config=types.GenerateContentConfig(
        response_mime_type="application/json",
        response_schema=CityInfo,
    ),
)
# Make sure to parse the text back into JSON/dict or Pydantic object
import json
print(json.loads(response.text))
```

## Tool Calling
```python
def get_weather(location: str) -> str:
    """Returns the weather for a given location."""
    return f"The weather in {location} is sunny."

response = client.models.generate_content(
    model='gemini-2.5-flash',
    contents='What is the weather in Paris?',
    config=types.GenerateContentConfig(
        tools=[get_weather],
        temperature=0,
    )
)

if response.candidates[0].content.parts[0].function_call:
    func_call = response.candidates[0].content.parts[0].function_call
    print(f"Model wants to call {func_call.name} with args {func_call.args}")
```

## Streaming
```python
response = client.models.generate_content_stream(
    model="gemini-2.5-flash",
    contents="Tell me a story about a magic backpack.",
)
for chunk in response:
    print(chunk.text, end="")
```
