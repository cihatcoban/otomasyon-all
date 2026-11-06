# Tam Otomasyon Kataloğu (`CATALOG.md`)
Bu katalogda toplam **287 adet** doğrulanmış ve modernize edilmiş n8n otomasyonu yer almaktadır.

## `00-keystone-core-ops` — Keystone Çekirdek Operasyon, Güvenlik ve Yönetişim (Yeni Eklendi) (6 Otomasyon)
Keystone mimarisi kapsamında sıfırdan eklenen; Merkezi Hata Yönetimi (DLQ), Otomatik Git Yedekleme, AI Prompt/PII Güvenlik Duvarı, HMAC Webhook Gateway, LLM Maliyet/Performans Telemetrisi ve Multi-Agent Supervisor otomasyonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **[Keystone Core] Global Error Handler, AI RCA & Dead-Letter Queue (DLQ)** | `workflows/00-keystone-core-ops/keystone-global-error-handler-dlq.json` | 6 | `NEW_KEYSTONE_CORE_WORKFLOW` |
| 2 | **[Keystone Core] Automated n8n Workflow GitOps Backup & Secret Sanitizer** | `workflows/00-keystone-core-ops/keystone-automated-workflow-git-backup.json` | 4 | `NEW_KEYSTONE_CORE_WORKFLOW` |
| 3 | **[Keystone Core] AI Security Guardrail: Prompt Injection & KVKK/GDPR PII Firewall** | `workflows/00-keystone-core-ops/keystone-ai-guardrail-pii-prompt-firewall.json` | 5 | `NEW_KEYSTONE_CORE_WORKFLOW` |
| 4 | **[Keystone Core] Enterprise Webhook Gateway: HMAC-SHA256 & Idempotency Guard** | `workflows/00-keystone-core-ops/keystone-webhook-hmac-rate-limit-gateway.json` | 5 | `NEW_KEYSTONE_CORE_WORKFLOW` |
| 5 | **[Keystone Core] LLM Cost, Token Budget & Latency FinOps Telemetry Monitor** | `workflows/00-keystone-core-ops/keystone-llm-cost-latency-telemetry-monitor.json` | 4 | `NEW_KEYSTONE_CORE_WORKFLOW` |
| 6 | **[Keystone Core] Multi-Agent Supervisor Router with Irreversible Action Safety Gate** | `workflows/00-keystone-core-ops/keystone-multi-agent-supervisor-router.json` | 8 | `NEW_KEYSTONE_CORE_WORKFLOW` |

## `01-ai-rag-and-knowledge-bases` — RAG, Vektör Veritabanları ve Kurumsal Bilgi Asistanları (43 Otomasyon)
Qdrant, Pinecone, Supabase PGVector ve yerel dokümanlar (PDF, Google Drive, Notion, Confluence) üzerinde çalışan Retrieval-Augmented Generation (RAG) ve semantik arama iş akışları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Agent To Chat With Files In Supabase Storage** | `workflows/01-ai-rag-and-knowledge-bases/ai-agent-to-chat-with-files-in-supabase-storage.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **Stock Q&A Workflow** | `workflows/01-ai-rag-and-knowledge-bases/ai-crew-to-automate-fundamental-stock-analysis-q-a-workflow.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **Voice RAG Chatbot with ElevenLabs and OpenAI** | `workflows/01-ai-rag-and-knowledge-bases/ai-voice-chatbot-with-elevenlabs-openai-for-customer-service-and-restaurant.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **Email AI Auto-responder. Summerize and send email** | `workflows/01-ai-rag-and-knowledge-bases/ai-powered-email-automation-for-business-summarize-respond-with-rag.json` | 23 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **RAG Workflow For Stock Earnings Report Analysis** | `workflows/01-ai-rag-and-knowledge-bases/ai-powered-rag-workflow-for-stock-earnings-report-analysis.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **AI Email processing autoresponder with approval (Yes/No)** | `workflows/01-ai-rag-and-knowledge-bases/ai-powered-email-processing-autoresponder-and-response-approval-yes-no.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **API Schema Extractor** | `workflows/01-ai-rag-and-knowledge-bases/api-schema-extractor.json` | 82 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **Advanced AI Demo (Presented at AI Developers #14 meetup)** | `workflows/01-ai-rag-and-knowledge-bases/advanced-ai-demo-presented-at-ai-developers-14-meetup.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Ask questions about a PDF using AI** | `workflows/01-ai-rag-and-knowledge-bases/ask-questions-about-a-pdf-using-ai.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Automate SIEM Alert Enrichment with MITRE ATT&CK, Qdrant & Zendesk in n8n** | `workflows/01-ai-rag-and-knowledge-bases/automate-siem-alert-enrichment-with-mitre-att-ck-qdrant-zendesk-in-n8n.json` | 23 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **BambooHR AI-Powered Company Policies and Benefits Chatbot** | `workflows/01-ai-rag-and-knowledge-bases/bamboohr-ai-powered-company-policies-and-benefits-chatbot.json` | 39 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Breakdown Documents into Study Notes using Templating MistralAI and Qdrant** | `workflows/01-ai-rag-and-knowledge-bases/breakdown-documents-into-study-notes-using-templating-mistralai-and-qdrant.json` | 35 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Build a Financial Documents Assistant using Qdrant and Mistral.ai** | `workflows/01-ai-rag-and-knowledge-bases/build-a-financial-documents-assistant-using-qdrant-and-mistral-ai.json` | 23 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Build a Tax Code Assistant with Qdrant, Mistral.ai and OpenAI** | `workflows/01-ai-rag-and-knowledge-bases/build-a-tax-code-assistant-with-qdrant-mistral-ai-and-openai.json` | 31 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 15 | **Building RAG Chatbot for Movie Recommendations with Qdrant and Open AI** | `workflows/01-ai-rag-and-knowledge-bases/building-rag-chatbot-for-movie-recommendations-with-qdrant-and-open-ai.json` | 25 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Building Your First WhatsApp Chatbot** | `workflows/01-ai-rag-and-knowledge-bases/building-your-first-whatsapp-chatbot.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Chat with GitHub OpenAPI Specification using RAG (Pinecone and OpenAI)** | `workflows/01-ai-rag-and-knowledge-bases/chat-with-github-api-documentation-rag-powered-chatbot-with-pinecone-openai.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 18 | **Chat with PDF docs using AI (quoting sources)** | `workflows/01-ai-rag-and-knowledge-bases/chat-with-pdf-docs-using-ai-quoting-sources.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 19 | **Business WhatsApp AI RAG Chatbot** | `workflows/01-ai-rag-and-knowledge-bases/complete-business-whatsapp-ai-powered-rag-chatbot-using-openai.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **Customer Insights with Qdrant, Python and Information Extractor** | `workflows/01-ai-rag-and-knowledge-bases/customer-insights-with-qdrant-python-and-information-extractor.json` | 24 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **Effortless Email Management with AI** | `workflows/01-ai-rag-and-knowledge-bases/effortless-email-management-with-ai-powered-summarization-review.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 22 | **Generating Image Embeddings via Textual Summarisation** | `workflows/01-ai-rag-and-knowledge-bases/generating-image-embeddings-via-textual-summarisation.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 23 | **HR & IT Helpdesk Chatbot with Audio Transcription** | `workflows/01-ai-rag-and-knowledge-bases/hr-it-helpdesk-chatbot-with-audio-transcription.json` | 21 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 24 | **IT Ops AI SlackBot Workflow - Chat with your knowledge base** | `workflows/01-ai-rag-and-knowledge-bases/it-ops-ai-slackbot-workflow-chat-with-your-knowledge-base.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **KB Tool - Confluence Knowledge Base** | `workflows/01-ai-rag-and-knowledge-bases/kb-tool-confluence-knowledge-base.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 26 | **Make OpenAI Citation for File Retrieval RAG** | `workflows/01-ai-rag-and-knowledge-bases/make-openai-citation-for-file-retrieval-rag.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Notion knowledge base AI assistant** | `workflows/01-ai-rag-and-knowledge-bases/notion-knowledge-base-ai-assistant.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 28 | **Prod: Notion to Vector Store - Dimension 768** | `workflows/01-ai-rag-and-knowledge-bases/notion-to-pinecone-vector-store-integration.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 29 | **OpenAI Personal Shopper with RAG and WooCommerce** | `workflows/01-ai-rag-and-knowledge-bases/personal-shopper-chatbot-for-woocommerce-with-rag-using-google-drive-and-op.json` | 21 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 30 | **RAG Workflow For Company Documents stored in Google Drive** | `workflows/01-ai-rag-and-knowledge-bases/rag-chatbot-for-company-documents-using-google-drive-and-gemini.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 31 | **RAG:Context-Aware Chunking - Google Drive to Pinecone via OpenRouter & Gemini** | `workflows/01-ai-rag-and-knowledge-bases/rag-context-aware-chunking-google-drive-to-pinecone-via-openrouter-gemini.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 32 | **Recipe Recommendations with Qdrant and Mistral** | `workflows/01-ai-rag-and-knowledge-bases/recipe-recommendations-with-qdrant-and-mistral.json` | 24 | `REPAIRED_CORRUPTED_JSON` |
| 33 | **Store Notion's Pages as Vector Documents into Supabase with OpenAI** | `workflows/01-ai-rag-and-knowledge-bases/store-notion-s-pages-as-vector-documents-into-supabase-with-openai.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 34 | **Supabase Insertion & Upsertion & Retrieval** | `workflows/01-ai-rag-and-knowledge-bases/supabase-insertion-upsertion-retrieval.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 35 | **Survey Insights with Qdrant, Python and Information Extractor** | `workflows/01-ai-rag-and-knowledge-bases/survey-insights-with-qdrant-python-and-information-extractor.json` | 30 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 36 | **Telegram RAG pdf** | `workflows/01-ai-rag-and-knowledge-bases/telegram-chat-with-pdf.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 37 | **RAG on living data** | `workflows/01-ai-rag-and-knowledge-bases/upsert-huge-documents-in-a-vector-store-with-supabase-and-notion.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 38 | **[1/3 - anomaly detection] [1/2 - KNN classification] Batch upload dataset to Qdrant (crops dataset)** | `workflows/01-ai-rag-and-knowledge-bases/vector-database-as-a-big-data-analysis-tool-for-ai-agents-1-3-anomaly-1-2-k.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 39 | **[2/2] KNN classifier (lands dataset)** | `workflows/01-ai-rag-and-knowledge-bases/vector-database-as-a-big-data-analysis-tool-for-ai-agents-2-2-knn.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 40 | **[2/3] Set up medoids (2 types) for anomaly detection (crops dataset)** | `workflows/01-ai-rag-and-knowledge-bases/vector-database-as-a-big-data-analysis-tool-for-ai-agents-2-3-anomaly.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 41 | **[3/3] Anomaly detection tool (crops dataset)** | `workflows/01-ai-rag-and-knowledge-bases/vector-database-as-a-big-data-analysis-tool-for-ai-agents-3-3-anomaly.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 42 | **RAG & GenAI App With WordPress Content** | `workflows/01-ai-rag-and-knowledge-bases/wordpress-ai-chatbot-to-enhance-user-experience-with-supabase-and-openai.json` | 45 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 43 | **🤖🧠 AI Agent Chatbot + LONG TERM Memory + Note Storage + Telegram** | `workflows/01-ai-rag-and-knowledge-bases/ai-agent-chatbot-long-term-memory-note-storage-telegram.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `02-chatbots-messaging-and-voice` — Çok Kanallı Chatbotlar, Mesajlaşma ve Sesli Asistanlar (53 Otomasyon)
Telegram, WhatsApp, Slack, Discord, Line, Mattermost ve Ses (ElevenLabs, OpenAI Audio/Whisper, Siri/Apple Shortcuts) tabanlı interaktif AI botları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Voice Chat using Webhook, Memory Manager, OpenAI, Google Gemini & ElevenLabs** | `workflows/02-chatbots-messaging-and-voice/ai-voice-chat-using-webhook-memory-manager-openai-google-gemini-elevenlabs.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **AI chatbot that can search the web** | `workflows/02-chatbots-messaging-and-voice/ai-chatbot-that-can-search-the-web.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **AI-Powered Children/s Arabic Storytelling on Telegram** | `workflows/02-chatbots-messaging-and-voice/ai-powered-children-s-arabic-storytelling-on-telegram.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **AI-Powered Children/s English Storytelling on Telegram with OpenAI** | `workflows/02-chatbots-messaging-and-voice/ai-powered-children-s-english-storytelling-on-telegram-with-openai.json` | 12 | `UPGRADED_LEGACY_LLM_MODEL` |
| 5 | **AI-Powered Information Monitoring with OpenAI, Google Sheets, Jina AI and Slack** | `workflows/02-chatbots-messaging-and-voice/ai-powered-information-monitoring-with-openai-google-sheets-jina-ai-and-sla.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Agentic Telegram AI bot with LangChain nodes and new tools** | `workflows/02-chatbots-messaging-and-voice/agentic-telegram-ai-bot-with-with-langchain-nodes-and-new-tools.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Analyze the sentiment of feedback and send a message on Mattermost** | `workflows/02-chatbots-messaging-and-voice/analyze-feedback-and-send-a-message-on-mattermost.json` | 5 | `ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 8 | **Analyze feedback using AWS Comprehend and send it to a Mattermost channel** | `workflows/02-chatbots-messaging-and-voice/analyze-feedback-using-aws-comprehend-and-send-it-to-a-mattermost-channel.json` | 5 | `ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 9 | **Angie, Personal AI Assistant with Telegram Voice and Text** | `workflows/02-chatbots-messaging-and-voice/angie-personal-ai-assistant-with-telegram-voice-and-text.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Automate Blog Creation in Brand Voice with AI** | `workflows/02-chatbots-messaging-and-voice/automate-blog-creation-in-brand-voice-with-ai.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Automate Sales Meeting Prep with AI & APIFY Sent To WhatsApp** | `workflows/02-chatbots-messaging-and-voice/automate-sales-meeting-prep-with-ai-apify-sent-to-whatsapp.json` | 47 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Automated AI image analysis and response via Telegram** | `workflows/02-chatbots-messaging-and-voice/automated-ai-image-analysis-and-response-via-telegram.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Bitrix24 Chatbot Application Workflow example with Webhook Integration** | `workflows/02-chatbots-messaging-and-voice/bitrix24-chatbot-application-workflow-example-with-webhook-integration.json` | 13 | `MIGRATED_FUNCTION_TO_CODE_V2, MIGRATED_FUNCTION_TO_CODE_V2, MIGRATED_FUNCTION_TO_CODE_V2` |
| 14 | **Chat with OpenAIs GPT via a simple Telegram Bot** | `workflows/02-chatbots-messaging-and-voice/chat-with-openais-gpt-via-a-simple-telegram-bot.json` | 4 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 15 | **Telegram-bot AI Da Nang** | `workflows/02-chatbots-messaging-and-voice/chat-with-your-event-schedule-from-google-sheets-in-telegram.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Text to Speech (OpenAI)** | `workflows/02-chatbots-messaging-and-voice/convert-text-to-speech-with-openai.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Create a Branded AI-Powered Website Chatbot** | `workflows/02-chatbots-messaging-and-voice/create-a-branded-ai-powered-website-chatbot.json` | 17 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 18 | **Google Analytics: Weekly Report** | `workflows/02-chatbots-messaging-and-voice/create-a-google-analytics-data-report-with-ai-and-sent-it-to-e-mail-and-tel.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 19 | **Creating a AI Slack Bot with Google Gemini** | `workflows/02-chatbots-messaging-and-voice/creating-a-ai-slack-bot-with-google-gemini.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **Customer Support Channel and Ticketing System with Slack and Linear** | `workflows/02-chatbots-messaging-and-voice/customer-support-channel-and-ticketing-system-with-slack-and-linear.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **Detect toxic language in Telegram messages** | `workflows/02-chatbots-messaging-and-voice/detect-toxic-language-in-telegram-messages.json` | 5 | `REPAIRED_CORRUPTED_JSON, ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 22 | **Discord AI bot** | `workflows/02-chatbots-messaging-and-voice/discord-ai-powered-bot.json` | 9 | `UPGRADED_LEGACY_LLM_MODEL` |
| 23 | **ETL pipeline** | `workflows/02-chatbots-messaging-and-voice/etl-pipeline-for-text-processing.json` | 9 | `ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 24 | **Enhance Security Operations with the Qualys Slack Shortcut Bot!** | `workflows/02-chatbots-messaging-and-voice/enhance-security-operations-with-the-qualys-slack-shortcut-bot.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **piepdrive-test** | `workflows/02-chatbots-messaging-and-voice/enrich-pipedrive-s-organization-data-with-openai-gpt-4o-notify-it-in-slack.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 26 | **Generate Text-to-Speech Using Elevenlabs via API** | `workflows/02-chatbots-messaging-and-voice/generate-text-to-speech-using-elevenlabs-via-api.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Generate audio from text using OpenAI - text-to-speech Workflow** | `workflows/02-chatbots-messaging-and-voice/generate-audio-from-text-using-openai-and-webhook-text-to-speech-workflow.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 28 | **Image Creation with OpenAI and Telegram** | `workflows/02-chatbots-messaging-and-voice/image-creation-with-openai-and-telegram.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 29 | **Invoice data extraction with LlamaParse and OpenAI** | `workflows/02-chatbots-messaging-and-voice/invoice-data-extraction-with-llamaparse-and-openai.json` | 17 | `UPGRADED_LEGACY_LLM_MODEL` |
| 30 | **LINE Assistant with Google Calendar and Gmail Integration** | `workflows/02-chatbots-messaging-and-voice/line-assistant-with-google-calendar-and-gmail-integration.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 31 | **Obsidian Notes Read Aloud: Available as a Podcast Feed** | `workflows/02-chatbots-messaging-and-voice/obsidian-notes-read-aloud-using-ai-available-as-a-podcast-feed.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 32 | **Respond to WhatsApp Messages with AI Like a Pro!** | `workflows/02-chatbots-messaging-and-voice/respond-to-whatsapp-messages-with-ai-like-a-pro.json` | 24 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 33 | **Send a random recipe once a day to Telegram** | `workflows/02-chatbots-messaging-and-voice/send-a-random-recipe-once-a-day-to-telegram.json` | 15 | `ADDED_MISSING_NODE_IDS` |
| 34 | **Send daily translated Calvin and Hobbes Comics to Discord** | `workflows/02-chatbots-messaging-and-voice/send-daily-translated-calvin-and-hobbes-comics-to-discord.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 35 | **Sentiment Analysis Tracking on Support Issues with Linear and Slack** | `workflows/02-chatbots-messaging-and-voice/sentiment-analysis-tracking-on-support-issues-with-linear-and-slack.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 36 | **YouTube Videos with AI Summaries on Discord** | `workflows/02-chatbots-messaging-and-voice/share-youtube-videos-with-ai-summaries-on-discord.json` | 7 | `UPGRADED_LEGACY_LLM_MODEL` |
| 37 | **Siri AI Agent: Apple Shortcuts powered voice template** | `workflows/02-chatbots-messaging-and-voice/siri-ai-agent-apple-shortcuts-powered-voice-template.json` | 4 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 38 | **My workflow 6** | `workflows/02-chatbots-messaging-and-voice/slack-slash-commands-ai-chat-bot.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 39 | **Summarize emails with A.I. then send to messenger** | `workflows/02-chatbots-messaging-and-voice/summarize-your-emails-with-a-i-via-openrouter-and-send-to-line-messenger.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 40 | **NeurochainAI Basic API Integration** | `workflows/02-chatbots-messaging-and-voice/telegram-ai-bot-neurochainai-text-image-neurochainai-basic-api-integration.json` | 20 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 41 | **Telegram AI-bot** | `workflows/02-chatbots-messaging-and-voice/telegram-ai-chatbot.json` | 12 | `UPGRADED_LEGACY_LLM_MODEL` |
| 42 | **Telegram AI multi-format chatbot** | `workflows/02-chatbots-messaging-and-voice/telegram-ai-bot-assistant-ready-made-template-for-voice-text-messages.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 43 | **Telegram AI Langchain bot** | `workflows/02-chatbots-messaging-and-voice/telegram-ai-bot-with-langchain-nodes.json` | 11 | `UPGRADED_LEGACY_LLM_MODEL` |
| 44 | **Telegram Bot with Supabase memory and OpenAI assistant integration** | `workflows/02-chatbots-messaging-and-voice/telegram-bot-with-supabase-memory-and-openai-assistant-integration.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 45 | **Play with Spotify from Telegram** | `workflows/02-chatbots-messaging-and-voice/telegram-to-spotify-with-openai.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 46 | **Text automations using Apple Shortcuts** | `workflows/02-chatbots-messaging-and-voice/text-automations-using-apple-shortcuts.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 47 | **Whisper Transkription copy** | `workflows/02-chatbots-messaging-and-voice/transcribe-audio-files-summarize-with-gpt-4-and-store-in-notion.json` | 5 | `UPGRADED_LEGACY_LLM_MODEL` |
| 48 | **Transform Image to Lego Style Using Line and Dall-E** | `workflows/02-chatbots-messaging-and-voice/transform-image-to-lego-style-using-line-and-dall-e.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 49 | **Translate Telegram audio messages with AI (55 supported languages) v1** | `workflows/02-chatbots-messaging-and-voice/translate-telegram-audio-messages-with-ai-55-supported-languages.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 50 | **Translate audio using AI** | `workflows/02-chatbots-messaging-and-voice/translate-audio-using-ai.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 51 | **Venafi Cloud Slack Cert Bot** | `workflows/02-chatbots-messaging-and-voice/venafi-cloud-slack-cert-bot.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 52 | **🐋🤖 DeepSeek AI Agent + Telegram + LONG TERM Memory 🧠** | `workflows/02-chatbots-messaging-and-voice/deepseek-ai-agent-telegram-long-term-memory.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 53 | **🤖 Telegram Messaging Agent for Text/Audio/Images** | `workflows/02-chatbots-messaging-and-voice/telegram-messaging-agent-for-text-audio-images.json` | 29 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `03-email-calendar-and-productivity` — E-Posta, Takvim, Toplantı ve Kişisel Verimlilik (30 Otomasyon)
Gmail, Microsoft Outlook, Fastmail, IMAP, Google Calendar, Zoom/Fireflies toplantı özetleme, aksiyon çıkarma ve görev yönetimi otomasyonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **Very simple Human in the loop system email with AI e IMAP** | `workflows/03-email-calendar-and-productivity/a-very-simple-human-in-the-loop-email-response-system-using-ai-and-imap.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **AI Agent : Google calendar assistant using OpenAI** | `workflows/03-email-calendar-and-productivity/ai-agent-google-calendar-assistant-using-openai.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **AI Agent for project management and meetings with Airtable and Fireflies** | `workflows/03-email-calendar-and-productivity/ai-agent-for-project-management-and-meetings-with-airtable-and-fireflies.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **AI Agent for realtime insights on meetings** | `workflows/03-email-calendar-and-productivity/ai-agent-for-realtime-insights-on-meetings.json` | 9 | `FIXED_BROKEN_WEBHOOK_NODE_REF` |
| 5 | **Actioning Your Meeting Next Steps using Transcripts and AI** | `workflows/03-email-calendar-and-productivity/actioning-your-meeting-next-steps-using-transcripts-and-ai.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Analyze & Sort Suspicious Email Contents with ChatGPT** | `workflows/03-email-calendar-and-productivity/analyze-sort-suspicious-email-contents-with-chatgpt.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Analyze Suspicious Email Contents with ChatGPT Vision** | `workflows/03-email-calendar-and-productivity/analyze-suspicious-email-contents-with-chatgpt-vision.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **Auto Categorise Outlook Emails with AI** | `workflows/03-email-calendar-and-productivity/auto-categorise-outlook-emails-with-ai.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Auto-label incoming Gmail messages with AI nodes** | `workflows/03-email-calendar-and-productivity/auto-label-incoming-gmail-messages-with-ai-nodes.json` | 11 | `UPGRADED_LEGACY_LLM_MODEL` |
| 10 | **Basic Automatic Gmail Email Labelling with OpenAI and Gmail API** | `workflows/03-email-calendar-and-productivity/basic-automatic-gmail-email-labelling-with-openai-and-gmail-api.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Compose reply draft in Gmail with OpenAI Assistant** | `workflows/03-email-calendar-and-productivity/compose-reply-draft-in-gmail-with-openai-assistant.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Daily meetings summarization with Gemini AI** | `workflows/03-email-calendar-and-productivity/daily-meetings-summarization-with-gemini-ai.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Email Subscription Service with n8n Forms, Airtable and AI** | `workflows/03-email-calendar-and-productivity/email-subscription-service-with-n8n-forms-airtable-and-ai.json` | 24 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Email Summary Agent** | `workflows/03-email-calendar-and-productivity/email-summary-agent.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 15 | **Extract spend details (template)** | `workflows/03-email-calendar-and-productivity/extract-spending-history-from-gmail-to-google-sheet.json` | 21 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Get Airtable data in Obsidian Notes** | `workflows/03-email-calendar-and-productivity/get-airtable-data-via-ai-and-obsidian-notes.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Gmail AI auto-responder: create draft replies to incoming emails** | `workflows/03-email-calendar-and-productivity/gmail-ai-auto-responder-create-draft-replies-to-incoming-emails.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 18 | **Handling Appointment Leads and Follow-up With Twilio, Cal.com and AI** | `workflows/03-email-calendar-and-productivity/handling-appointment-leads-and-follow-up-with-twilio-cal-com-and-ai.json` | 24 | `FIXED_BROKEN_AGENT_NODE_REF` |
| 19 | **Microsoft Outlook AI Email Assistant** | `workflows/03-email-calendar-and-productivity/microsoft-outlook-ai-email-assistant-with-contact-support-from-monday-and-a.json` | 20 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **Contact Form Text Classifier for eCommerce** | `workflows/03-email-calendar-and-productivity/modular-customizable-ai-powered-email-routing-text-classifier-for-ecommerce.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **Qualifying Appointment Requests with AI & n8n Forms** | `workflows/03-email-calendar-and-productivity/qualifying-appointment-requests-with-ai-n8n-forms.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 22 | **Send a ChatGPT email reply and save responses to Google Sheets** | `workflows/03-email-calendar-and-productivity/send-a-chatgpt-email-reply-and-save-responses-to-google-sheets.json` | 40 | `MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT` |
| 23 | **Send specific PDF attachments from Gmail to Google Drive using OpenAI** | `workflows/03-email-calendar-and-productivity/send-specific-pdf-attachments-from-gmail-to-google-drive-using-openai.json` | 16 | `MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT` |
| 24 | **Social Media Analysis and Automated Email Generation** | `workflows/03-email-calendar-and-productivity/social-media-analysis-and-automated-email-generation.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **Calendar_scheduling** | `workflows/03-email-calendar-and-productivity/suggest-meeting-slots-using-ai.json` | 17 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 26 | **mails2notion V2** | `workflows/03-email-calendar-and-productivity/turn-emails-into-ai-enhanced-tasks-in-notion-multi-user-support-with-gmail.json` | 25 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Use AI to organize your Todoist Inbox** | `workflows/03-email-calendar-and-productivity/use-ai-to-organize-your-todoist-inbox.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 28 | **Zoom AI Meeting Assistant** | `workflows/03-email-calendar-and-productivity/zoom-ai-meeting-assistant-creates-mail-summary-clickup-tasks-and-follow-up.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 29 | **create e-mail responses with fastmail and OpenAI** | `workflows/03-email-calendar-and-productivity/create-e-mail-responses-with-fastmail-and-openai.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 30 | **📈 Receive Daily Market News from FT.com to your Microsoft outlook inbox** | `workflows/03-email-calendar-and-productivity/receive-daily-market-news-from-ft-com-to-your-microsoft-outlook-inbox.json` | 7 | `FIXED_BROKEN_HTML_NODE_REF` |

## `04-content-social-media-and-seo` — İçerik Üretimi, Sosyal Medya, Görsel/Video ve SEO (47 Otomasyon)
WordPress, YouTube, Instagram, X (Twitter), LinkedIn, Pinterest, TikTok, Spotify, FLUX/DALL-E görsel üretimi ve Google Analytics/Search Console SEO otomasyonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Agent to chat with you Search Console Data, using OpenAI and Postgres** | `workflows/04-content-social-media-and-seo/ai-agent-to-chat-with-you-search-console-data-using-openai-and-postgres.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **AI Social Media Caption Creator** | `workflows/04-content-social-media-and-seo/ai-social-media-caption-creator-creates-social-media-post-captions-in-airta.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **Complete Youtube** | `workflows/04-content-social-media-and-seo/ai-youtube-trend-finder-based-on-niche.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **InstaTest** | `workflows/04-content-social-media-and-seo/ai-agent-for-instagram-dm-inbox-manychat-open-ai-integration.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **AI-Generated Summary Block for WordPress Posts - with OpenAI, WordPress, Google Sheets & Slack** | `workflows/04-content-social-media-and-seo/ai-generated-summary-block-for-wordpress-posts.json` | 21 | `ADDED_MISSING_NODE_IDS` |
| 6 | **Social Media AI Agent - Telegram** | `workflows/04-content-social-media-and-seo/ai-powered-social-media-amplifier.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Podcast Digest** | `workflows/04-content-social-media-and-seo/ai-summarize-podcast-episode-and-enhance-using-wikipedia.json` | 15 | `UPGRADED_LEGACY_LLM_MODEL` |
| 8 | **Blog Automation TEMPLATE** | `workflows/04-content-social-media-and-seo/author-and-publish-blog-posts-from-google-sheets.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Auto categorize wordpress template** | `workflows/04-content-social-media-and-seo/auto-categorize-blog-posts-in-wordpress-using-a-i.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Auto-Tag Blog Posts in WordPress with AI** | `workflows/04-content-social-media-and-seo/auto-tag-blog-posts-in-wordpress-with-ai.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Automate Content Generator for WordPress with DeepSeek R1** | `workflows/04-content-social-media-and-seo/automate-content-generator-for-wordpress-with-deepseek-r1.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Automate Image Validation Tasks using AI Vision** | `workflows/04-content-social-media-and-seo/automate-image-validation-tasks-using-ai-vision.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Automate LinkedIn Posts with AI** | `workflows/04-content-social-media-and-seo/automate-linkedin-outreach-with-notion-and-openai.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Automate Pinterest Analysis & AI-Powered Content Suggestions With Pinterest API** | `workflows/04-content-social-media-and-seo/automate-pinterest-analysis-ai-powered-content-suggestions-with-pinterest-a.json` | 10 | `SCRUBBED_HARDCODED_PINTEREST_TOKEN` |
| 15 | **Remove Advanced Background from Google Drive Images** | `workflows/04-content-social-media-and-seo/automatic-background-removal-for-images-in-google-drive.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Build Your Own Image Search Using AI Object Detection, CDN and ElasticSearch** | `workflows/04-content-social-media-and-seo/build-your-own-image-search-using-ai-object-detection-cdn-and-elasticsearch.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Image Generation API** | `workflows/04-content-social-media-and-seo/configure-your-own-image-creation-api-using-openai-dalle-3.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 18 | **Create dynamic Twitter profile banner** | `workflows/04-content-social-media-and-seo/create-dynamic-twitter-profile-banner.json` | 12 | `ADDED_MISSING_NODE_IDS, MIGRATED_FUNCTION_TO_CODE_V2` |
| 19 | **Daily Podcast Summary** | `workflows/04-content-social-media-and-seo/daily-podcast-summary.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **Easy Image Captioning with Gemini 1.5 Pro** | `workflows/04-content-social-media-and-seo/easy-image-captioning-with-gemini-1-5-pro.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **Enrich Property Inventory Survey with Image Recognition and AI Agent** | `workflows/04-content-social-media-and-seo/enrich-property-inventory-survey-with-image-recognition-and-ai-agent.json` | 19 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 22 | **Extract insights & analyse YouTube comments via AI Agent chat** | `workflows/04-content-social-media-and-seo/extract-insights-analyse-youtube-comments-via-ai-agent-chat.json` | 22 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 23 | **Image to license plate number** | `workflows/04-content-social-media-and-seo/extract-license-plate-number-from-image-uploaded-via-an-n8n-form.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 24 | **Extract text from PDF and image using Vertex AI (Gemini) into CSV** | `workflows/04-content-social-media-and-seo/extract-text-from-pdf-and-image-using-vertex-ai-gemini-into-csv.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **Flux AI Image Generator** | `workflows/04-content-social-media-and-seo/flux-ai-image-generator.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 26 | **Flux Dev Image Generation Fal.ai** | `workflows/04-content-social-media-and-seo/flux-dev-image-generation-fal-ai-to-google-drive.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Content to 9:16 Aspect Image Generator v1** | `workflows/04-content-social-media-and-seo/generate-9-16-images-from-content-and-brand-guidelines.json` | 27 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 28 | **Generate Instagram Content from Top Trends with AI Image Generation** | `workflows/04-content-social-media-and-seo/generate-instagram-content-from-top-trends-with-ai-image-generation.json` | 27 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 29 | **Generate SEO Seed Keywords Using AI** | `workflows/04-content-social-media-and-seo/generate-seo-seed-keywords-using-ai.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 30 | **Hacker News to Video Template - AlexK1919** | `workflows/04-content-social-media-and-seo/hacker-news-to-video-content.json` | 39 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 31 | **Monthly Spotify Track Archiving and Playlist Classification** | `workflows/04-content-social-media-and-seo/monthly-spotify-track-archiving-and-playlist-classification.json` | 30 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 32 | **Narrating over a Video using Multimodal AI** | `workflows/04-content-social-media-and-seo/narrating-over-a-video-using-multimodal-ai.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 33 | **OpenAI-model-examples** | `workflows/04-content-social-media-and-seo/openai-examples-chatgpt-dalle-2-whisper-1-5-in-1.json` | 17 | `MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT, UPGRADED_LEGACY_LLM_MODEL` |
| 34 | **OpenAI-powered tweet generator** | `workflows/04-content-social-media-and-seo/openai-powered-tweet-generator.json` | 5 | `ADDED_MISSING_NODE_IDS, MIGRATED_FUNCTIONITEM_TO_CODE_V2, REPLACED_DEAD_DAVINCI_001_API, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 35 | **Printify Automation - Update Title and Description - AlexK1919** | `workflows/04-content-social-media-and-seo/optimize-update-printify-title-and-description-workflow.json` | 20 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 36 | **Post New YouTube Videos to X** | `workflows/04-content-social-media-and-seo/post-new-youtube-videos-to-x.json` | 4 | `UPGRADED_LEGACY_LLM_MODEL` |
| 37 | **Google analytics template** | `workflows/04-content-social-media-and-seo/send-google-analytics-data-to-a-i-to-analyze-then-save-results-in-baserow.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 38 | **Speed Up Social Media Banners With BannerBear.com** | `workflows/04-content-social-media-and-seo/speed-up-social-media-banners-with-bannerbear-com.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 39 | **SERPBear analytics template** | `workflows/04-content-social-media-and-seo/summarize-serpbear-data-with-ai-via-openrouter-and-save-it-to-baserow.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 40 | **Umami analytics template** | `workflows/04-content-social-media-and-seo/summarize-umami-data-with-ai-via-openrouter-and-save-it-to-baserow.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 41 | **Summarize YouTube Videos from Transcript** | `workflows/04-content-social-media-and-seo/summarize-youtube-videos-from-transcript.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 42 | **Twitter Virtual AI Influencer** | `workflows/04-content-social-media-and-seo/twitter-virtual-ai-influencer.json` | 6 | `UPGRADED_LEGACY_LLM_MODEL` |
| 43 | **UTM Link Creator & QR Code Generator with Scheduled Google Analytics Reports** | `workflows/04-content-social-media-and-seo/utm-link-creator-qr-code-generator-with-scheduled-google-analytics-reports.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 44 | **template in store** | `workflows/04-content-social-media-and-seo/upload-to-instagram-and-tiktok-from-google-drive.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 45 | **Write a WordPress post with AI (starting from a few keywords)** | `workflows/04-content-social-media-and-seo/write-a-wordpress-post-with-ai-starting-from-a-few-keywords.json` | 15 | `UPGRADED_LEGACY_LLM_MODEL` |
| 46 | **⚡AI-Powered YouTube Video Summarization & Analysis** | `workflows/04-content-social-media-and-seo/ai-powered-youtube-video-summarization-analysis.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 47 | **FLUX-fill standalone** | `workflows/04-content-social-media-and-seo/interactive-image-editor-with-flux-1-fill-tool-for-inpainting.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `05-crm-sales-and-customer-support` — CRM, Satış, Lead Yönetimi, E-Ticaret ve Müşteri Desteği (21 Otomasyon)
Pipedrive, HubSpot, ERPNext, Lemlist, WooCommerce, Linear ve Zendesk entegrasyonlu müşteri adayı (lead) puanlama, duygu analizi ve destek bileti otomasyonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Customer feedback sentiment analysis** | `workflows/05-crm-sales-and-customer-support/ai-customer-feedback-sentiment-analysis.json` | 4 | `MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT` |
| 2 | **AI web researcher for sales** | `workflows/05-crm-sales-and-customer-support/ai-web-researcher-for-sales.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **AI-Driven Lead Management and Inquiry Automation with ERPNext & n8n** | `workflows/05-crm-sales-and-customer-support/ai-driven-lead-management-and-inquiry-automation-with-erpnext-n8n.json` | 16 | `REPAIRED_CORRUPTED_JSON` |
| 4 | **AI-Powered Candidate Shortlisting Automation for ERPNext** | `workflows/05-crm-sales-and-customer-support/ai-powered-candidate-shortlisting-automation-for-erpnext.json` | 23 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **AI-powered WooCommerce Support-Agent** | `workflows/05-crm-sales-and-customer-support/ai-powered-woocommerce-support-agent.json` | 31 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Add positive feedback messages to a table in Notion** | `workflows/05-crm-sales-and-customer-support/add-positive-feedback-messages-to-a-table-in-notion.json` | 6 | `ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 7 | **Automate Competitor Research with Exa.ai, Notion and AI Agents** | `workflows/05-crm-sales-and-customer-support/automate-competitor-research-with-exa-ai-notion-and-ai-agents.json` | 30 | `REPAIRED_CORRUPTED_JSON` |
| 8 | **Automate Customer Support Issue Resolution using AI Text Classifier** | `workflows/05-crm-sales-and-customer-support/automate-customer-support-issue-resolution-using-ai-text-classifier.json` | 29 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Automate Your RFP Process with OpenAI Assistants** | `workflows/05-crm-sales-and-customer-support/automate-your-rfp-process-with-openai-assistants.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Automate testimonials in Strapi with n8n** | `workflows/05-crm-sales-and-customer-support/automate-testimonials-in-strapi-with-n8n.json` | 14 | `ADDED_MISSING_NODE_IDS` |
| 11 | **Classify lemlist replies using OpenAI and automate reply handling** | `workflows/05-crm-sales-and-customer-support/classify-lemlist-replies-using-openai-and-automate-reply-handling.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Classify new bugs in Linear with OpenAI/s GPT-4 and move them to the right team** | `workflows/05-crm-sales-and-customer-support/classify-new-bugs-in-linear-with-openai-s-gpt-4-and-move-them-to-the-right.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Enhance Customer Chat by Buffering Messages with Twilio and Redis** | `workflows/05-crm-sales-and-customer-support/enhance-customer-chat-by-buffering-messages-with-twilio-and-redis.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Qualify new leads in Google Sheets via OpenAI's GPT-4** | `workflows/05-crm-sales-and-customer-support/qualify-new-leads-in-google-sheets-via-openai-s-gpt-4.json` | 5 | `UPGRADED_LEGACY_LLM_MODEL` |
| 15 | **Qualify replies from Pipedrive persons with AI** | `workflows/05-crm-sales-and-customer-support/qualify-replies-from-pipedrive-persons-with-ai.json` | 10 | `UPGRADED_LEGACY_LLM_MODEL` |
| 16 | **Scrape Trustpilot Reviews with DeepSeek, Analyze Sentiment with OpenAI** | `workflows/05-crm-sales-and-customer-support/scrape-trustpilot-reviews-with-deepseek-analyze-sentiment-with-openai.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Summarize Google Sheets form feedback via OpenAI's GPT-4** | `workflows/05-crm-sales-and-customer-support/summarize-google-sheets-form-feedback-via-openai-s-gpt-4.json` | 6 | `UPGRADED_LEGACY_LLM_MODEL` |
| 18 | **lemlist - GPT-3: Supercharge your sales workflows** | `workflows/05-crm-sales-and-customer-support/lemlist-gpt-3-supercharge-your-sales-workflows.json` | 12 | `REPAIRED_CORRUPTED_JSON, MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT` |
| 19 | **OpenAI Assistant for Hubspot Chat** | `workflows/05-crm-sales-and-customer-support/vassistant-for-hubspot-chat-using-openai-and-airtable.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **🔥📈🤖 AI Agent for n8n Creators Leaderboard - Find Popular Workflows** | `workflows/05-crm-sales-and-customer-support/ai-agent-for-n8n-creators-leaderboard-find-popular-workflows.json` | 27 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **🤖🧑‍💻 AI Agent for Top n8n Creators Leaderboard Reporting** | `workflows/05-crm-sales-and-customer-support/ai-agent-for-top-n8n-creators-leaderboard-reporting.json` | 31 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `06-hr-recruitment-and-operations` — İnsan Kaynakları (İK), İşe Alım ve CV Analizi (11 Otomasyon)
Özgeçmiş (CV) PDF ayrıştırma, aday uygunluk değerlendirme, mülakat asistanı, BambooHR politikaları ve iş yeri analitiği otomasyonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **HR-focused automation pipeline with AI** | `workflows/06-hr-recruitment-and-operations/ai-automated-hr-workflow-for-cv-analysis-and-candidate-evaluation.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **CV Resume PDF Parsing with Multimodal Vision AI** | `workflows/06-hr-recruitment-and-operations/cv-resume-pdf-parsing-with-multimodal-vision-ai.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **CV Screening with OpenAI** | `workflows/06-hr-recruitment-and-operations/cv-screening-with-openai.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **Conversational Interviews with AI Agents and n8n Forms** | `workflows/06-hr-recruitment-and-operations/conversational-interviews-with-ai-agents-and-n8n-forms.json` | 30 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **Create, update, and get a profile in Humantic AI** | `workflows/06-hr-recruitment-and-operations/create-update-and-get-a-profile-in-humantic-ai.json` | 5 | `ADDED_MISSING_NODE_IDS, FIXED_INVALID_CREDENTIALS_SCHEMA` |
| 6 | **Extract data from resume and create PDF with Gotenberg** | `workflows/06-hr-recruitment-and-operations/extract-data-from-resume-and-create-pdf-with-gotenberg.json` | 33 | `UPGRADED_LEGACY_LLM_MODEL` |
| 7 | **HR Job Posting and Evaluation with AI** | `workflows/06-hr-recruitment-and-operations/hr-job-posting-and-evaluation-with-ai.json` | 30 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **HN Who is Hiring Scrape** | `workflows/06-hr-recruitment-and-operations/hacker-news-job-listing-scraper-and-parser.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Handling Job Application Submissions with AI and n8n Forms** | `workflows/06-hr-recruitment-and-operations/handling-job-application-submissions-with-ai-and-n8n-forms.json` | 15 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **AI CV Screening Workflow** | `workflows/06-hr-recruitment-and-operations/screen-applicants-with-ai-notify-hr-and-save-them-in-a-google-sheet.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Spot Workplace Discrimination Patterns with AI** | `workflows/06-hr-recruitment-and-operations/spot-workplace-discrimination-patterns-with-ai.json` | 26 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `07-data-extraction-scraping-and-documents` — Veri Kazıma (Web Scraping), PDF/Fatura İşleme ve ETL (27 Otomasyon)
Jina AI, Apify, ScrapingBee, LlamaParse, Gotenberg ve Multimodal Vision ile web kazıma, fatura/banka ekstresi/fiş okuma, PII maskeleme ve haber/finans özetleme akışları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Agent with Ollama for current weather and wiki** | `workflows/07-data-extraction-scraping-and-documents/ai-agent-with-ollama-for-current-weather-and-wiki.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **AI Data Extraction with Dynamic Prompts and Airtable** | `workflows/07-data-extraction-scraping-and-documents/ai-data-extraction-with-dynamic-prompts-and-airtable.json` | 36 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **AI Data Extraction with Dynamic Prompts and Baserow** | `workflows/07-data-extraction-scraping-and-documents/ai-data-extraction-with-dynamic-prompts-and-baserow.json` | 30 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **AI Fitness Coach Strava Data Analysis and Personalized Training Insights** | `workflows/07-data-extraction-scraping-and-documents/ai-fitness-coach-strava-data-analysis-and-personalized-training-insights.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **AI Powered Web Scraping with Jina, Google Sheets and OpenAI : the EASY way** | `workflows/07-data-extraction-scraping-and-documents/ai-powered-web-scraping-with-jina-google-sheets-and-openai-the-easy-way.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Agent with custom HTTP Request** | `workflows/07-data-extraction-scraping-and-documents/ai-agent-that-can-scrape-webpages.json` | 16 | `UPGRADED_LEGACY_LLM_MODEL` |
| 7 | **chrome extension backend with AI** | `workflows/07-data-extraction-scraping-and-documents/analyze-tradingview-com-charts-with-chrome-extension-n8n-and-openai.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **Autonomous AI crawler** | `workflows/07-data-extraction-scraping-and-documents/autonomous-ai-crawler.json` | 28 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Deduplicate Scraping AI Grants for Eligibility using AI** | `workflows/07-data-extraction-scraping-and-documents/deduplicate-scraping-ai-grants-for-eligibility-using-ai.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **AI Logo Sheet Extractor to Airtable** | `workflows/07-data-extraction-scraping-and-documents/extract-information-from-a-logo-sheet-using-forms-ai-google-sheet-and-airta.json` | 33 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Extract and process information directly from PDF using Claude and Gemini** | `workflows/07-data-extraction-scraping-and-documents/extract-and-process-information-directly-from-pdf-using-claude-and-gemini.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Extract personal data with a self-hosted LLM Mistral NeMo** | `workflows/07-data-extraction-scraping-and-documents/extract-personal-data-with-self-hosted-llm-mistral-nemo.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Hacker News Throwback Machine - See What Was Hot on This Day, Every Year!** | `workflows/07-data-extraction-scraping-and-documents/hacker-news-throwback-machine-see-what-was-hot-on-this-day-every-year.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Integrating AI with Open-Meteo API for Enhanced Weather Forecasting** | `workflows/07-data-extraction-scraping-and-documents/integrating-ai-with-open-meteo-api-for-enhanced-weather-forecasting.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 15 | **Learn Anything from HN - Get Top Resource Recommendations from Hacker News** | `workflows/07-data-extraction-scraping-and-documents/learn-anything-from-hn-get-top-resource-recommendations-from-hacker-news.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Manipulate PDF with Adobe developer API** | `workflows/07-data-extraction-scraping-and-documents/manipulate-pdf-with-adobe-developer-api.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 17 | **Parse PDF with LlamaParse and save to Airtable** | `workflows/07-data-extraction-scraping-and-documents/parse-pdf-with-llamaparse-and-save-to-airtable.json` | 9 | `REPAIRED_CORRUPTED_JSON` |
| 18 | **Prepare CSV files with GPT-4** | `workflows/07-data-extraction-scraping-and-documents/prepare-csv-files-with-gpt-4.json` | 9 | `UPGRADED_LEGACY_LLM_MODEL` |
| 19 | **Reconcile Rent Payments with Local Excel Spreadsheet and OpenAI** | `workflows/07-data-extraction-scraping-and-documents/reconcile-rent-payments-with-local-excel-spreadsheet-and-openai.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 20 | **Reddit AI digest** | `workflows/07-data-extraction-scraping-and-documents/reddit-ai-digest.json` | 11 | `MIGRATED_DEAD_OPENAI_COMPLETIONS_TO_CHAT` |
| 21 | **Remove Personally Identifiable Information (PII) from CSV Files with OpenAI** | `workflows/07-data-extraction-scraping-and-documents/remove-personally-identifiable-information-pii-from-csv-files-with-openai.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 22 | **News Extraction** | `workflows/07-data-extraction-scraping-and-documents/scrape-and-summarize-posts-of-a-news-site-without-rss-feed-using-ai-and-sav.json` | 18 | `UPGRADED_LEGACY_LLM_MODEL` |
| 23 | **Scrape and summarize webpages with AI** | `workflows/07-data-extraction-scraping-and-documents/scrape-and-summarize-webpages-with-ai.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 24 | **AI agent: expense tracker in Google Sheets and n8n chat** | `workflows/07-data-extraction-scraping-and-documents/simple-expense-tracker-with-n8n-chat-ai-agent-and-google-sheets.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **Transcribing Bank Statements To Markdown Using Gemini Vision AI** | `workflows/07-data-extraction-scraping-and-documents/transcribing-bank-statements-to-markdown-using-gemini-vision-ai.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 26 | **Selenium Ultimate Scraper Workflow** | `workflows/07-data-extraction-scraping-and-documents/ultimate-scraper-workflow-for-n8n.json` | 56 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Vision-Based AI Agent Scraper - with Google Sheets, ScrapingBee, and Gemini** | `workflows/07-data-extraction-scraping-and-documents/vision-based-ai-agent-scraper-with-google-sheets-scrapingbee-and-gemini.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `08-databases-sql-and-workspace` — Veritabanları, SQL Ajanları, Airtable, Notion ve Tablolar (14 Otomasyon)
PostgreSQL, SQLite, MongoDB, Supabase, Airtable, Baserow, NocoDB, Notion ve Google Sheets üzerinde doğal dille sorgulama (Text-to-SQL) ve veri senkronizasyonu.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI Agent to chat with Airtable and analyze data** | `workflows/08-databases-sql-and-workspace/ai-agent-to-chat-with-airtable-and-analyze-data.json` | 30 | `REPAIRED_CORRUPTED_JSON` |
| 2 | **AI Agent to chat with Supabase/PostgreSQL DB** | `workflows/08-databases-sql-and-workspace/ai-agent-to-chat-with-supabase-postgresql-db.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **Hugging Face to Notion** | `workflows/08-databases-sql-and-workspace/analyse-papers-from-hugging-face-with-ai-and-store-them-in-notion.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **Automated Hugging Face Paper Summary Fetching & Categorization Workflow** | `workflows/08-databases-sql-and-workspace/automated-hugging-face-paper-summary-categorization.json` | 7 | `REBUILT_OVERWRITTEN_WORKFLOW` |
| 5 | **modelo do chatbot** | `workflows/08-databases-sql-and-workspace/chat-assistant-openai-assistant-with-postgres-memory-and-api-calling-capaba.json` | 11 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Chat with Postgresql Database** | `workflows/08-databases-sql-and-workspace/chat-with-postgresql-database.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Chat with Google Sheet** | `workflows/08-databases-sql-and-workspace/chat-with-a-google-sheet-using-ai.json` | 14 | `UPGRADED_LEGACY_LLM_MODEL` |
| 8 | **Generate SQL queries from schema only - AI-powered** | `workflows/08-databases-sql-and-workspace/generate-sql-queries-from-schema-only-ai-powered.json` | 20 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **MongoDB Agent** | `workflows/08-databases-sql-and-workspace/mongodb-ai-agent-intelligent-movie-recommendations.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Notion AI Assistant Generator** | `workflows/08-databases-sql-and-workspace/notion-ai-assistant-generator.json` | 18 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **Query n8n Credentials with AI SQL Agent** | `workflows/08-databases-sql-and-workspace/query-n8n-credentials-with-ai-sql-agent.json` | 9 | `REMEDIATED_SQL_INJECTION_READONLY` |
| 12 | **Google Doc Summarizer to Google Sheets** | `workflows/08-databases-sql-and-workspace/summarize-the-new-documents-from-google-drive-and-save-summary-in-google-sh.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **SQL agent with memory** | `workflows/08-databases-sql-and-workspace/talk-to-your-sqlite-database-with-a-langchain-ai-agent.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Visualize your SQL Agent queries with OpenAI and Quickchart.io** | `workflows/08-databases-sql-and-workspace/visualize-your-sql-agent-queries-with-openai-and-quickchart-io.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `09-devops-security-and-it-ops` — DevOps, Siber Güvenlik, SIEM ve Sistem Operasyonları (8 Otomasyon)
MITRE ATT&CK SIEM zenginleştirme, Qualys, Venafi sertifika botu, Proxmox AI ajanı, GitLab MR kod inceleme, görsel regresyon testi ve API şema çıkarıcılar.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **ChatGPT Automatic Code Review in Gitlab MR** | `workflows/09-devops-security-and-it-ops/chatgpt-automatic-code-review-in-gitlab-mr.json` | 10 | `ADDED_MISSING_NODE_IDS` |
| 2 | **Load Prompts from Github Repo and auto populate n8n expressions** | `workflows/09-devops-security-and-it-ops/fetch-dynamic-prompts-from-github-and-auto-populate-n8n-expressions-in-prom.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **Introduction to the HTTP Tool** | `workflows/09-devops-security-and-it-ops/introduction-to-the-http-tool.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **Organise Your Local File Directories With AI** | `workflows/09-devops-security-and-it-ops/organise-your-local-file-directories-with-ai.json` | 10 | `REMEDIATED_SHELL_COMMAND_INJECTION` |
| 5 | **Proxmox AI Agent with n8n and Generative AI Integration** | `workflows/09-devops-security-and-it-ops/proxmox-ai-agent-with-n8n-and-generative-ai-integration.json` | 27 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **get_a_web_page** | `workflows/09-devops-security-and-it-ops/using-external-workflows-as-tools-in-n8n.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Visual Regression Testing with Apify and AI Vision Model** | `workflows/09-devops-security-and-it-ops/visual-regression-testing-with-apify-and-ai-vision-model.json` | 24 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **Docsify example** | `workflows/09-devops-security-and-it-ops/auto-generate-documentation-for-n8n-workflows-with-gpt-and-docsify.json` | 48 | `v1 Şema & ExecutionOrder Standardizasyonu` |

## `10-ai-agents-research-and-llm-core` — Otonom AI Ajanları, Derin Araştırma (Deep Research) ve Çoklu-LLM (27 Otomasyon)
OpenAI o3/GPT-4o, DeepSeek R1/V3, Google Gemini 2.0, Claude 3.5, Mistral ve yerel Ollama modelleriyle çalışan derin araştırma ve temel ajan şablonları.

| # | Otomasyon Adı (`name`) | Dosya Yolu | Düğüm Sayısı | Durum / Uygulanan Onarımlar |
| :--- | :--- | :--- | :---: | :--- |
| 1 | **AI agent chat** | `workflows/10-ai-agents-research-and-llm-core/ai-agent-chat.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 2 | **AI chat with any data source (using the n8n workflow tool)** | `workflows/10-ai-agents-research-and-llm-core/ai-chat-with-any-data-source-using-the-n8n-workflow-tool.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 3 | **LangChain - Example - Workflow Retriever** | `workflows/10-ai-agents-research-and-llm-core/ai-ask-questions-about-any-data-source-using-the-n8n-workflow-retriever.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 4 | **Ask a human** | `workflows/10-ai-agents-research-and-llm-core/ask-a-human-for-help-when-the-ai-doesn-t-know-the-answer.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 5 | **Analyze Screenshots with AI** | `workflows/10-ai-agents-research-and-llm-core/automate-screenshots-with-urlbox-analyze-them-with-ai.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 6 | **Fine-tuning with OpenAI models** | `workflows/10-ai-agents-research-and-llm-core/automated-end-to-end-fine-tuning-of-openai-models-with-google-drive-integra.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 7 | **Build an OpenAI Assistant with Google Drive Integration** | `workflows/10-ai-agents-research-and-llm-core/build-an-openai-assistant-with-google-drive-integration.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 8 | **Chat with OpenAI Assistant (by adding a memory)** | `workflows/10-ai-agents-research-and-llm-core/chat-with-openai-assistant-by-adding-a-memory.json` | 9 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 9 | **Chat with local LLMs using n8n and Ollama** | `workflows/10-ai-agents-research-and-llm-core/chat-with-local-llms-using-n8n-and-ollama.json` | 3 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 10 | **Convert URL HTML to Markdown Format and Get Page Links** | `workflows/10-ai-agents-research-and-llm-core/convert-url-html-to-markdown-format-and-get-page-links.json` | 10 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 11 | **LangChain - Example - Code Node Example** | `workflows/10-ai-agents-research-and-llm-core/custom-langchain-agent-written-in-javascript.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 12 | **Detect hallucinations using specialised Ollama model bespoke-minicheck** | `workflows/10-ai-agents-research-and-llm-core/detect-hallucinations-using-specialised-ollama-model-bespoke-minicheck.json` | 13 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 13 | **Dynamically generate HTML page from user request using OpenAI Structured Output** | `workflows/10-ai-agents-research-and-llm-core/dynamically-generate-a-webpage-from-user-request-using-openai-structured-ou.json` | 5 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 14 | **Enrich FAQ sections on your website pages at scale with AI** | `workflows/10-ai-agents-research-and-llm-core/enrich-faq-sections-on-your-website-pages-at-scale-with-ai.json` | 29 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 15 | **[AI/LangChain] Output Parser 4** | `workflows/10-ai-agents-research-and-llm-core/force-ai-to-use-a-specific-output-format.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 16 | **Host Your Own AI Deep Research Agent with n8n, Apify and OpenAI o3** | `workflows/10-ai-agents-research-and-llm-core/host-your-own-ai-deep-research-agent-with-n8n-apify-and-openai-o3.json` | 66 | `REPAIRED_CORRUPTED_JSON` |
| 17 | **Intelligent Web Query and Semantic Re-Ranking Flow** | `workflows/10-ai-agents-research-and-llm-core/intelligent-web-query-and-semantic-re-ranking-flow-using-brave-and-google-g.json` | 16 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 18 | **Open Deep Research - AI-Powered Autonomous Research Workflow** | `workflows/10-ai-agents-research-and-llm-core/open-deep-research-ai-powered-autonomous-research-workflow.json` | 14 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 19 | **OpenAI Assistant workflow: uploa file, create an Assistant, chat with it!** | `workflows/10-ai-agents-research-and-llm-core/openai-assistant-workflow-upload-file-create-an-assistant-chat-with-it.json` | 6 | `UPGRADED_LEGACY_LLM_MODEL` |
| 20 | **OpenAI Assistant with custom n8n tools** | `workflows/10-ai-agents-research-and-llm-core/openai-assistant-with-custom-tools.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 21 | **Prompt-based Object Detection with Gemini 2.0** | `workflows/10-ai-agents-research-and-llm-core/prompt-based-object-detection-with-gemini-2-0.json` | 7 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 22 | **Query Perplexity AI from your n8n workflows** | `workflows/10-ai-agents-research-and-llm-core/query-perplexity-ai-from-your-n8n-workflows.json` | 4 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 23 | **Use any LLM-Model via OpenRouter** | `workflows/10-ai-agents-research-and-llm-core/openrouter-multi-llm-dynamic-model-router.json` | 5 | `UPGRADED_TO_NATIVE_OPENROUTER_NODE` |
| 24 | **🐋DeepSeek V3 Chat & R1 Reasoning Quick Start** | `workflows/10-ai-agents-research-and-llm-core/deepseek-v3-chat-r1-reasoning-quick-start.json` | 8 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 25 | **🔍🛠️Perplexity Researcher to HTML Web Page** | `workflows/10-ai-agents-research-and-llm-core/perplexity-research-to-html-ai-powered-content-creation.json` | 38 | `REPAIRED_CORRUPTED_JSON` |
| 26 | **🗨️Ollama Chat** | `workflows/10-ai-agents-research-and-llm-core/private-local-ollama-self-hosted-ai-assistant.json` | 6 | `v1 Şema & ExecutionOrder Standardizasyonu` |
| 27 | **Testing Mulitple Local LLM with LM Studio** | `workflows/10-ai-agents-research-and-llm-core/local-multi-llm-testing-performance-tracker.json` | 12 | `v1 Şema & ExecutionOrder Standardizasyonu` |
