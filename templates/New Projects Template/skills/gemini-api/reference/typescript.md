# TypeScript / Node.js Gemini API (`@google/genai`)

**Installation:** `npm install @google/genai`

**Initialization:**
```javascript
import { GoogleGenAI } from '@google/genai';

// Automatically uses GEMINI_API_KEY env var
const ai = new GoogleGenAI();
```

## Basic Text Generation
```javascript
const response = await ai.models.generateContent({
    model: 'gemini-2.5-flash',
    contents: 'Explain quantum mechanics in one sentence.',
});
console.log(response.text);
```

## System Instructions & Configuration
```javascript
const response = await ai.models.generateContent({
    model: 'gemini-2.5-flash',
    contents: 'Explain quantum mechanics.',
    config: {
        systemInstruction: 'You are a pirate.',
        temperature: 0.7,
    }
});
console.log(response.text);
```

## Structured Outputs (JSON)
```javascript
import { Type } from '@google/genai';

const response = await ai.models.generateContent({
    model: 'gemini-2.5-flash',
    contents: 'Tell me about Tokyo.',
    config: {
        responseMimeType: "application/json",
        responseSchema: {
            type: Type.OBJECT,
            properties: {
                name: { type: Type.STRING },
                population: { type: Type.INTEGER },
                country: { type: Type.STRING }
            },
            required: ["name", "population", "country"]
        }
    }
});
console.log(JSON.parse(response.text));
```

## Tool Calling
```javascript
function getWeather(location) {
    return `The weather in ${location} is sunny.`;
}

// In JavaScript, you manually define the tool declaration.
// There is no automatic reflection like in Python.
const weatherTool = {
    functionDeclarations: [
        {
            name: "getWeather",
            description: "Returns the weather for a given location",
            parameters: {
                type: Type.OBJECT,
                properties: {
                    location: { type: Type.STRING }
                },
                required: ["location"]
            }
        }
    ]
};

const response = await ai.models.generateContent({
    model: 'gemini-2.5-flash',
    contents: 'What is the weather in Paris?',
    config: {
        tools: [weatherTool],
    }
});

const call = response.candidates[0].content.parts[0].functionCall;
if (call) {
    console.log(`Model wants to call ${call.name} with args`, call.args);
}
```

## Streaming
```javascript
const responseStream = await ai.models.generateContentStream({
    model: "gemini-2.5-flash",
    contents: "Tell me a story about a magic backpack.",
});

for await (const chunk of responseStream) {
    process.stdout.write(chunk.text);
}
```
