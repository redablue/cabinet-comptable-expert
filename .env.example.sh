# ================================================================
# CABINET COMPTABLE EXPERT - Configuration Environnement
# ================================================================

# ================================================================
# APPLICATION
# ================================================================
APP_NAME="Cabinet Comptable Expert"
APP_ENV=development
APP_DEBUG=true
APP_URL=http://localhost:3000
APP_PORT=3000
APP_VERSION=0.1.0

# Timezone
APP_TIMEZONE=Africa/Casablanca
APP_LOCALE=fr_MA

# ================================================================
# BASE DE DONNÉES
# ================================================================

# MySQL Configuration (Principal)
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=cabinet_comptable_expert
DB_USERNAME=root
DB_PASSWORD=

# Options MySQL
DB_CHARSET=utf8mb4
DB_COLLATION=utf8mb4_unicode_ci
DB_STRICT=true
DB_ENGINE=InnoDB

# Pool de connexions
DB_POOL_MIN=2
DB_POOL_MAX=10

# ================================================================
# CACHE & REDIS
# ================================================================
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
REDIS_DB=0

# Cache configuration
CACHE_DRIVER=redis
CACHE_PREFIX=cabinet_expert_
CACHE_TTL=3600

# ================================================================
# EMAIL & NOTIFICATIONS
# ================================================================

# Configuration SMTP
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=
MAIL_PASSWORD=
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=noreply@cabinet-expert.ma
MAIL_FROM_NAME="${APP_NAME}"

# Templates email
EMAIL_TEMPLATE_PATH=resources/email-templates
EMAIL_LOGO_URL=https://votre-domaine.com/logo.png

# SMS Configuration (Optionnel)
SMS_PROVIDER=twilio
SMS_API_KEY=
SMS_API_SECRET=
SMS_FROM_NUMBER=

# ================================================================
# SÉCURITÉ & AUTHENTIFICATION
# ================================================================

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
JWT_TTL=10080
JWT_REFRESH_TTL=20160
JWT_ALGO=HS256

# Session
SESSION_DRIVER=redis
SESSION_LIFETIME=480
SESSION_ENCRYPT=true
SESSION_COOKIE=cabinet_expert_session

# Sécurité
BCRYPT_ROUNDS=12
PASSWORD_TIMEOUT=10800

# 2FA
TWO_FACTOR_ENABLED=true
TWO_FACTOR_ISSUER="${APP_NAME}"

# ================================================================
# STOCKAGE DE FICHIERS
# ================================================================

# Local Storage
STORAGE_DRIVER=local
STORAGE_ROOT=storage/app

# Cloud Storage (AWS S3)
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=eu-west-1
AWS_BUCKET=cabinet-expert-documents
AWS_USE_PATH_STYLE_ENDPOINT=false

# Azure Blob (Alternative)
AZURE_STORAGE_ACCOUNT=
AZURE_STORAGE_KEY=
AZURE_STORAGE_CONTAINER=documents

# Limites upload
MAX_FILE_SIZE=10485760
ALLOWED_FILE_TYPES=pdf,doc,docx,xls,xlsx,jpg,jpeg,png,txt

# ================================================================
# INTÉGRATIONS DGI MAROC
# ================================================================

# API DGI Officielle
DGI_API_URL=https://www.tax.gov.ma/api
DGI_API_KEY=
DGI_API_SECRET=
DGI_TEST_MODE=true
DGI_TIMEOUT=30

# Certificats électroniques
DGI_CERT_PATH=storage/certificates/dgi.p12
DGI_CERT_PASSWORD=

# Formulaires supportés
DGI_FORMS_ENABLED=8808,8306,8801,8303

# ================================================================
# SERVICES OCR & IA
# ================================================================

# Google Vision API
GOOGLE_VISION_ENABLED=false
GOOGLE_VISION_API_KEY=
GOOGLE_VISION_PROJECT_ID=

# Azure Cognitive Services
AZURE_COGNITIVE_ENABLED=false
AZURE_COGNITIVE_API_KEY=
AZURE_COGNITIVE_ENDPOINT=

# OpenAI (pour fonctionnalités IA)
OPENAI_API_KEY=
OPENAI_MODEL=gpt-3.5-turbo
OPENAI_MAX_TOKENS=2000

# ================================================================
# INTÉGRATIONS BANCAIRES
# ================================================================

# API Bancaires (exemple pour principales banques marocaines)
BANK_API_ENABLED=false

# Attijariwafa Bank
AWB_API_KEY=
AWB_API_SECRET=
AWB_ENVIRONMENT=sandbox

# BMCE Bank
BMCE_API_KEY=
BMCE_API_SECRET=
BMCE_ENVIRONMENT=sandbox

# Banque Populaire
BP_API_KEY=
BP_API_SECRET=
BP_ENVIRONMENT=sandbox

# ================================================================
# ELASTICSEARCH (RECHERCHE)
# ================================================================
ELASTICSEARCH_ENABLED=false
ELASTICSEARCH_HOST=localhost:9200
ELASTICSEARCH_USERNAME=
ELASTICSEARCH_PASSWORD=
ELASTICSEARCH_INDEX_PREFIX=cabinet_expert_

# ================================================================
# MONITORING & LOGS
# ================================================================

# Niveau de logs
LOG_LEVEL=debug
LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_STACK=single

# Sentry (Monitoring erreurs)
SENTRY_ENABLED=false
SENTRY_DSN=

# DataDog (Métriques)
DATADOG_ENABLED=false
DATADOG_API_KEY=

# New Relic (APM)
NEWRELIC_ENABLED=false
NEWRELIC_LICENSE=

# ================================================================
# BACKUP & MAINTENANCE
# ================================================================

# Configuration backup
BACKUP_ENABLED=true
BACKUP_SCHEDULE=daily
BACKUP_TIME=03:00
BACKUP_RETENTION_DAYS=30
BACKUP_CLOUD_ENABLED=true

# Mode maintenance
MAINTENANCE_MODE=false
MAINTENANCE_MESSAGE="Maintenance en cours, retour prévu à 10h00"

# ================================================================
# API EXTERNE & WEBHOOKS
# ================================================================

# Rate limiting
API_RATE_LIMIT=1000
API_RATE_WINDOW=3600

# Webhooks
WEBHOOK_ENABLED=false
WEBHOOK_SECRET=your-webhook-secret-key

# CORS
CORS_ALLOWED_ORIGINS=http://localhost:3000,http://localhost:5173
CORS_ALLOWED_METHODS=GET,POST,PUT,DELETE,PATCH,OPTIONS
CORS_ALLOWED_HEADERS=Content-Type,Authorization,X-Requested-With

# ================================================================
# DÉVELOPPEMENT & DEBUG
# ================================================================

# Mode développement
DEV_MODE=true
DEBUG_BAR_ENABLED=true
QUERY_DEBUG=true

# Tests
TEST_DATABASE=cabinet_comptable_expert_test
TESTING_ENABLED=true

# Seeding
SEED_ENABLED=true
DEMO_DATA=true

# ================================================================
# PERFORMANCE
# ================================================================

# Optimisations
COMPRESSION_ENABLED=true
MINIFY_CSS=false
MINIFY_JS=false
CDN_ENABLED=false
CDN_URL=

# Queue system
QUEUE_CONNECTION=redis
QUEUE_DEFAULT=default
QUEUE_FAILED_DRIVER=database-uuids

# ================================================================
# CONFORMITÉ & SÉCURITÉ
# ================================================================

# RGPD
GDPR_ENABLED=true
DATA_RETENTION_DAYS=2555
ANONYMIZATION_ENABLED=true

# Audit
AUDIT_ENABLED=true
AUDIT_RETENTION_DAYS=2555
AUDIT_DRIVER=database

# Chiffrement
ENCRYPTION_KEY=base64:your-32-character-secret-key-here
HASH_DRIVER=bcrypt

# ================================================================
# PARAMÈTRES MÉTIER MAROC
# ================================================================

# TVA
DEFAULT_VAT_RATE=20.00
VAT_MODES=monthly,quarterly

# Devise
DEFAULT_CURRENCY=MAD
CURRENCY_SYMBOL=DH
CURRENCY_POSITION=after

# Formats
DATE_FORMAT=d/m/Y
TIME_FORMAT=H:i
DATETIME_FORMAT=d/m/Y H:i

# Numérotation
INVOICE_PREFIX=F-
INVOICE_YEAR_FORMAT=YYYY
INVOICE_NUMBER_LENGTH=4

CLIENT_PREFIX=CLI
CLIENT_NUMBER_LENGTH=6

# ================================================================
# FONCTIONNALITÉS AVANCÉES
# ================================================================

# Signature électronique
ESIGNATURE_ENABLED=false
ESIGNATURE_PROVIDER=docusign
DOCUSIGN_API_KEY=
DOCUSIGN_SECRET=

# Intelligence artificielle
AI_FEATURES_ENABLED=true
AI_DOCUMENT_CLASSIFICATION=true
AI_ANOMALY_DETECTION=true
AI_PREDICTION_MODELS=true

# Notifications push
PUSH_NOTIFICATIONS_ENABLED=false
FIREBASE_SERVER_KEY=
VAPID_PUBLIC_KEY=
VAPID_PRIVATE_KEY=

# ================================================================
# NOTES IMPORTANTES
# ================================================================

# 1. Copiez ce fichier vers .env et configurez vos valeurs
# 2. Ne commitez jamais le fichier .env (avec vraies valeurs)
# 3. Générez des clés sécurisées pour JWT_SECRET et ENCRYPTION_KEY
# 4. En production, définissez APP_DEBUG=false et APP_ENV=production
# 5. Configurez HTTPS et certificats SSL en production
# 6. Testez toutes les intégrations en mode sandbox avant production