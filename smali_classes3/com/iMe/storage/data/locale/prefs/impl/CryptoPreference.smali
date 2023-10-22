.class public final Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;
.super Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;
.source "CryptoPreference.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoPreference.kt\ncom/iMe/storage/data/locale/prefs/impl/CryptoPreference\n+ 2 GsonExt.kt\ncom/iMe/storage/data/utils/extentions/GsonExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,587:1\n25#2,2:588\n25#2,2:590\n25#2,2:592\n25#2,2:594\n25#2,2:597\n25#2,2:599\n25#2,2:601\n25#2,2:603\n25#2,2:605\n25#2,2:607\n25#2,2:609\n25#2,2:611\n1#3:596\n1045#4:613\n1855#4,2:614\n766#4:616\n857#4,2:617\n1855#4,2:619\n1855#4,2:621\n*S KotlinDebug\n*F\n+ 1 CryptoPreference.kt\ncom/iMe/storage/data/locale/prefs/impl/CryptoPreference\n*L\n53#1:588,2\n129#1:590,2\n161#1:592,2\n200#1:594,2\n215#1:597,2\n305#1:599,2\n319#1:601,2\n333#1:603,2\n347#1:605,2\n373#1:607,2\n469#1:609,2\n490#1:611,2\n495#1:613\n515#1:614,2\n532#1:616\n532#1:617,2\n533#1:619,2\n577#1:621,2\n*E\n"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private tempOneActionGuid:Ljava/lang/String;

.field private final walletCreationDates:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final walletPublicAddresses:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final walletSeeds:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_crypto_prefs"

    .line 30
    invoke-direct {p0, v0, p2, p1}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    .line 29
    iput-object p3, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->tempOneActionGuid:Ljava/lang/String;

    .line 67
    new-instance p1, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    .line 69
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 70
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletPublicAddresses$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletPublicAddresses$1;-><init>(Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;)V

    .line 67
    invoke-direct {p1, p3, p2, v0}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletPublicAddresses:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    .line 73
    new-instance p1, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    .line 75
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;-><init>(Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;)V

    .line 73
    invoke-direct {p1, p3, p2, v0}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletSeeds:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    .line 79
    new-instance p1, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    .line 81
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletCreationDates$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$walletCreationDates$1;-><init>(Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;)V

    .line 79
    invoke-direct {p1, p3, p2, v0}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletCreationDates:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    return-void
.end method

.method private final getActualGuid()Ljava/lang/String;
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->tempOneActionGuid:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAccountLevelMetadata()Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 162
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_level"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$3;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$3;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;

    return-object v0
.end method

.method public getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 306
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 307
    sget-object v2, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;->getKEY_AIRDROP_METADATA()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    sget-object v4, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;->getDefault()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$6;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$6;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    return-object v0
.end method

.method public getAllNetworksTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    .line 264
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    .line 265
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "all_networks_tokens_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 266
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->BALANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 264
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getAuthSession()Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 320
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auth_session"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 321
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    .line 320
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$7;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$7;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;

    return-object v0
.end method

.method public getBinanceAuthSession()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 334
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_session"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 335
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    .line 334
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$8;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$8;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    return-object v0
.end method

.method public getBinanceOnlyPositiveTokens()Z
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 362
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 361
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    .line 387
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    .line 388
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_tokens_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 389
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 390
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 387
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getBinanceTokensSettings()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 374
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_tokens_settings"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 375
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    .line 374
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$10;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$10;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 348
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_user_info"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 349
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    .line 348
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$9;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$9;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    return-object v0
.end method

.method public getCryptoBoxesOrderType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 5

    .line 455
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;

    .line 456
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cryptoboxes_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 457
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 458
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    invoke-static {p0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->$default$getCurrentBlockchainType(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledNetworksIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 216
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabled_networks_ids"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 217
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    .line 216
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$5;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$5;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getLastLoggedInGuid()Ljava/lang/String;
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 44
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getLastNetworksUpdateTime()J
    .locals 4

    .line 229
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_networks_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 230
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 229
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 187
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 174
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOldWalletPublicAddress()Ljava/lang/String;
    .locals 4

    .line 561
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_public_address"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 562
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 561
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getOldWalletSeed()Ljava/lang/String;
    .locals 4

    .line 567
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_seed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 568
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 567
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getOnlyPositiveTokens()Z
    .locals 4

    .line 240
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 241
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 240
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefsVersion()I
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "crypto_prefs_version"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStakingProgrammesOrderType()Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;
    .locals 5

    .line 291
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType$Companion;

    .line 292
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "stakings_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 293
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 291
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 201
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "supported_networks"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 202
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    .line 201
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$4;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$4;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 206
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    .line 251
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    .line 252
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tokens_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 253
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 251
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getTokensSettings(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens_settings"

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 491
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "[]"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 25
    :cond_0
    new-instance v1, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$fromJsonTokenType$1;

    invoke-direct {v1}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 492
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 494
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    :goto_0
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTonConfigJsonString()Ljava/lang/String;
    .locals 4

    .line 430
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ton_config_json_string"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 431
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 430
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getTonFragmentProductsSortingType()Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
    .locals 5

    .line 441
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->Companion:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;

    .line 442
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ton_fragment_products_sorting_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 443
    invoke-static {p0, v2, v3, v4, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 444
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->PRICE_DESCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v0

    return-object v0
.end method

.method public getWalletCreationDates()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletCreationDates:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public getWalletInfoMetadata()Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 130
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wallet_information_metadata"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$2;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    return-object v0
.end method

.method public getWalletPassword()Ljava/lang/String;
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_password"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 86
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getWalletPinCodeBadTriesCount()I
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_pin_code_bad_tries_count"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 96
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWalletPinCodeTimeoutUntil()J
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_pin_code_timeout_until"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 107
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 106
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalletPublicAddresses()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletPublicAddresses:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public getWalletSeedByGuid(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
    .locals 3

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 470
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wallet_seed"

    .line 471
    invoke-virtual {p0, v2, p1}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[]"

    .line 470
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 25
    :cond_0
    new-instance v2, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getWalletSeedByGuid$$inlined$fromJsonTokenType$1;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference$getWalletSeedByGuid$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 474
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->walletSeeds:Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public isAllNetworksSelected()Z
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "all_networks_selected"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 151
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 150
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBalanceHidden()Z
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_balance"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBannersVisible()Z
    .locals 4

    .line 411
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "interface_banners"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBinanceTokensPositiveBalances()Z
    .locals 4

    .line 401
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "binance_tokens_positive_balances"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 402
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 401
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocalEncryptionCompleted()Z
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remote_pin_code_migration_completed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 118
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 117
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQuotationsVisible()Z
    .locals 4

    .line 419
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "interface_quotation"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 420
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 419
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTokensPositiveBalances()Z
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tokens_positive_balances"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 281
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 280
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetAllTokensSettings()V
    .locals 6

    .line 513
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 514
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getValues()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "tokens_settings"

    .line 516
    invoke-virtual {p0, v4, v5}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 518
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetBinanceAccount()V
    .locals 4

    .line 554
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 555
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "binance_user_info"

    .line 556
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetBinanceTokensSettings()V
    .locals 4

    .line 547
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 548
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "binance_tokens_settings"

    .line 549
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetOldWalletData()V
    .locals 5

    .line 573
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_public_address"

    const-string v2, "wallet_seed"

    .line 576
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 577
    invoke-static {p0, v2, v4, v3, v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetTokensSettingsByBlockchainType(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 7

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 530
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->getSupportedNetworks()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 532
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    if-ne v6, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 537
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "tokens_settings"

    .line 536
    invoke-virtual {p0, v1, v4}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 543
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTokensSettings(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_settings"

    .line 504
    invoke-virtual {p0, p2, v1}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 503
    invoke-static {p0, p2, v1, v2, v1}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 508
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 509
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAccountLevelMetadata(Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "account_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;->getKEY_AIRDROP_METADATA()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 315
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAllNetworksSelected(Z)V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_networks_selected"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 156
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAllNetworksTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_networks_tokens_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 273
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAuthSession(Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 327
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 329
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBalanceHidden(Z)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_balance"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBannersVisible(Z)V
    .locals 4

    .line 413
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interface_banners"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 414
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 415
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceAuthSession(Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 341
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceOnlyPositiveTokens(Z)V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 367
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 369
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 395
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceTokensPositiveBalances(Z)V
    .locals 4

    .line 405
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_positive_balances"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 406
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceTokensSettings(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_settings"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 381
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 383
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceUserInfo(Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_user_info"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 355
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCryptoBoxesOrderType(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cryptoboxes_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 463
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 465
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEnabledNetworksIds(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled_networks_ids"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 223
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastLoggedInGuid(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastNetworksUpdateTime(J)V
    .locals 4

    .line 234
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_networks_update_time"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 235
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLocalEncryptionCompleted(Z)V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remote_pin_code_migration_completed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 123
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 193
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 195
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNetworkId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 179
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOnlyPositiveTokens(Z)V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 246
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 247
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefsVersion(I)V
    .locals 4

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "crypto_prefs_version"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQuotationsVisible(Z)V
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interface_quotation"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 425
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStakingProgrammesOrderType(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stakings_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 299
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 301
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSupportedNetworks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supported_networks"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 209
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 259
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 260
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTokensPositiveBalances(Z)V
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_positive_balances"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 285
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 287
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTonFragmentProductsSortingType(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ton_fragment_products_sorting_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 449
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 451
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletInfoMetadata(Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wallet_information_metadata"

    .line 136
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletPassword(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_password"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletPinCodeBadTriesCount(I)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_pin_code_bad_tries_count"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 101
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletPinCodeTimeoutUntil(J)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_pin_code_timeout_until"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 112
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;->withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletsGuid(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallets_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 61
    invoke-static {p0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/storage/data/locale/prefs/impl/CryptoPreference;->getActualGuid()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
