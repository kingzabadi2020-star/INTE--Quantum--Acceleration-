import Array "mo:core/Array";
import LLM "mo:llm";
import Types "../types";

mixin (systemPrompt : Text) {
  // Single-turn inference via the IC LLM canister (Llama 3.1 8B).
  // No API keys; inference runs on ICP nodes.
  public func prompt(p : Text) : async Text {
    await LLM.prompt(#Llama3_1_8B, p);
  };

  // Multi-turn chat. The INTE brand system prompt is prepended to every
  // conversation so the model answers as INTE.
  public func chat(messages : [Types.ChatMessage]) : async Text {
    let branded = [#system_({ content = systemPrompt })].concat(messages);
    let response = await LLM.chat(#Llama3_1_8B).withMessages(branded).send();
    response.message.content ?? "";
  };

  // Read-only: which model backs this canister.
  public query func model() : async Text {
    "Llama3_1_8B";
  };

  // Read-only: which on-chain canister serves inference.
  public query func llmCanister() : async Text {
    "w36hm-eqaaa-aaaal-qr76a-cai";
  };
};
