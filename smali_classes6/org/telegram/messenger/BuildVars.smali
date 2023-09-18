.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String; = null

.field public static APP_ID:I = 0x0

.field public static BUILD_VERSION:I = 0x0

.field public static BUILD_VERSION_STRING:Ljava/lang/String; = null

.field public static CHECK_UPDATES:Z = true

.field public static DEBUG_PRIVATE_VERSION:Z = false

.field public static DEBUG_VERSION:Z = false

.field public static GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String; = null

.field public static HUAWEI_APP_ID:Ljava/lang/String; = null

.field public static IS_BILLING_UNAVAILABLE:Z = false

.field public static LOGS_ENABLED:Z = false

.field public static NO_SCOPED_STORAGE:Z = false

.field public static PLAYSTORE_APP_URL:Ljava/lang/String; = null

.field public static SAFETYNET_KEY:Ljava/lang/String; = null

.field public static SMS_HASH:Ljava/lang/String; = null

.field public static USE_CLOUD_STRINGS:Z = true

.field private static betaApp:Ljava/lang/Boolean;

.field private static standaloneApp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    const/16 v0, 0xeda

    .line 32
    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const-string v0, "10.0.4"

    .line 33
    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const/4 v0, 0x4

    .line 34
    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    const-string v0, "014b35b6184100b085b0d0572f9b5103"

    .line 35
    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    const-string v0, "AIzaSyDqt8P-7F7CPCseMkOiVRgb1LY8RN1bvH8"

    .line 38
    sput-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    .line 39
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isStandaloneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "w0lkcmTZkKh"

    goto :goto_1

    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_2

    const-string v0, "O2P2z+/jBpJ"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "oLeq9AcOZkT"

    :goto_1
    sput-object v0, Lorg/telegram/messenger/BuildVars;->SMS_HASH:Ljava/lang/String;

    const-string v0, "https://play.google.com/store/apps/details?id=org.telegram.messenger"

    .line 40
    sput-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    const-string v0, "760348033671-81kmi3pi84p11ub8hp9a1funsv0rn2p9.apps.googleusercontent.com"

    .line 41
    sput-object v0, Lorg/telegram/messenger/BuildVars;->GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String;

    const-string v0, "101184875"

    .line 43
    sput-object v0, Lorg/telegram/messenger/BuildVars;->HUAWEI_APP_ID:Ljava/lang/String;

    .line 46
    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    .line 49
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 50
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "systemConfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v3, :cond_4

    const-string v4, "logsEnabled"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    sput-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 54
    :cond_5
    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->CHECK_UPDATES:Z

    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 55
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getVersionCode()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 56
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const v0, 0xa0f89

    .line 57
    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    const-string v0, "314703a39f45937dcdee8dbb8c2dacbb"

    .line 58
    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    const-string v0, ""

    .line 59
    sput-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    const-string v0, "+UbHfVTjSrJ"

    .line 60
    sput-object v0, Lorg/telegram/messenger/BuildVars;->SMS_HASH:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    const-string/jumbo v1, "org.telegram.messenger"

    const-string v2, "com.iMe.android"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasDirectCurrency()Z
    .locals 7

    .line 75
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 79
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 80
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->directPaymentsCurrency:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static isBetaApp()Z
    .locals 3

    .line 100
    sget-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "org.telegram.messenger.beta"

    const-string/jumbo v1, "org.telegram.messenger"

    const-string v2, "com.iMe.android"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    .line 103
    :cond_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isHuaweiStoreApp()Z
    .locals 1

    .line 108
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isHuaweiStoreBuild()Z

    move-result v0

    return v0
.end method

.method public static isStandaloneApp()Z
    .locals 3

    .line 92
    sget-object v0, Lorg/telegram/messenger/BuildVars;->standaloneApp:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "org.telegram.messenger.web"

    const-string/jumbo v1, "org.telegram.messenger"

    const-string v2, "com.iMe.android"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BuildVars;->standaloneApp:Ljava/lang/Boolean;

    .line 95
    :cond_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->standaloneApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static useInvoiceBilling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
