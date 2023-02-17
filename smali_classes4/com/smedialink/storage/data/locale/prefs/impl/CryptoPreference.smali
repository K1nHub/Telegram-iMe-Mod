.class public final Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;
.super Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;
.source "CryptoPreference.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoPreference.kt\ncom/smedialink/storage/data/locale/prefs/impl/CryptoPreference\n+ 2 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n25#2,2:249\n25#2,2:251\n25#2,2:253\n25#2,2:255\n25#2,2:257\n25#2,2:259\n25#2,2:261\n25#2,2:263\n25#2,2:265\n25#2,2:267\n1000#3,2:269\n1849#3,2:273\n13536#4,2:271\n1#5:275\n*S KotlinDebug\n*F\n+ 1 CryptoPreference.kt\ncom/smedialink/storage/data/locale/prefs/impl/CryptoPreference\n*L\n46#1:249,2\n67#1:251,2\n79#1:253,2\n110#1:255,2\n116#1:257,2\n122#1:259,2\n128#1:261,2\n140#1:263,2\n170#1:265,2\n187#1:267,2\n191#1:269,2\n233#1:273,2\n202#1:271,2\n*E\n"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private tempOneActionGuid:Ljava/lang/String;

.field private final walletCreationDates:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final walletPublicAddresses:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final walletSeeds:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ime_crypto_prefs"

    .line 26
    invoke-direct {p0, v0, p2, p1}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    .line 25
    iput-object p3, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    const-string p1, ""

    .line 29
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->tempOneActionGuid:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletPublicAddresses$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletPublicAddresses$1;-><init>(Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletPublicAddresses:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    .line 55
    new-instance p1, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletSeeds$1;-><init>(Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletSeeds:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    .line 58
    new-instance p1, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletCreationDates$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$walletCreationDates$1;-><init>(Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;-><init>(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletCreationDates:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    return-void
.end method

.method private final getActualGuid()Ljava/lang/String;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->tempOneActionGuid:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAccountLevelMetadata()Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "account_level"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$3;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$3;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;

    return-object v0
.end method

.method public getAirdropMetadata()Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;->getKEY_AIRDROP_METADATA()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;->Companion:Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;

    invoke-virtual {v4}, Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata$Companion;->getDefault()Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$4;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$4;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;

    return-object v0
.end method

.method public getAuthSession()Lcom/smedialink/storage/data/locale/prefs/model/auth/AuthTokensMetadata;
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auth_session"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$5;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$5;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/auth/AuthTokensMetadata;

    return-object v0
.end method

.method public getBinanceAuthSession()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_session"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$6;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$6;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    return-object v0
.end method

.method public getBinanceOnlyPositiveTokens()Z
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBinanceTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    .line 146
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_tokens_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getBinanceTokensSettings()Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_tokens_settings"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$8;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$8;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    return-object v0
.end method

.method public getBinanceUserInfo()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "binance_user_info"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$7;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$7;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    return-object v0
.end method

.method public getCryptoHiddenBalance()Z
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_balance"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 22
    invoke-static {p0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->getCurrentBlockchainType(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoggedInGuid()Ljava/lang/String;
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 5

    .line 85
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "network_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "mPref.getString(withTgAc\u2026.BINANCE_SMART_CHAIN.name"

    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public getOldWalletPublicAddress()Ljava/lang/String;
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_public_address"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

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

    .line 226
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_seed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

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

    .line 92
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefsVersion()I
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "crypto_prefs_version"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;
    .locals 5

    .line 104
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->Companion:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "stakings_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    .line 98
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tokens_order_type"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
    .locals 3

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokens_settings"

    invoke-virtual {p0, v0, v1}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "{}"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 25
    :cond_0
    new-instance v1, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$fromJsonTokenType$1;

    invoke-direct {v1}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->Companion:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;->getDefaultTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object p1

    .line 191
    :goto_0
    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$lambda-1$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getTokensSettings$lambda-1$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object p1
.end method

.method public getTonConfigJsonString()Ljava/lang/String;
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ton_config_json_string"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getWalletCreationDates()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletCreationDates:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public getWalletInfoMetadata()Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wallet_information_metadata"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$2;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$special$$inlined$fromJsonTokenType$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    return-object v0
.end method

.method public getWalletPassword()Ljava/lang/String;
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallet_password"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getWalletPublicAddresses()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletPublicAddresses:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public getWalletSeedByGuid(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
    .locals 3

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    .line 171
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wallet_seed"

    .line 172
    invoke-virtual {p0, v2, p1}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[]"

    .line 171
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 25
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getWalletSeedByGuid$$inlined$fromJsonTokenType$1;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference$getWalletSeedByGuid$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 26
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 175
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 170
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

.method public getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->walletSeeds:Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    return-object v0
.end method

.method public isBannersVisible()Z
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "interface_banners"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQuotationsVisible()Z
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "interface_quotation"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetBinanceAccount()V
    .locals 4

    .line 216
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 217
    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "binance_user_info"

    .line 218
    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetBinanceTokensSettings()V
    .locals 4

    .line 209
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 210
    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "binance_tokens_settings"

    .line 211
    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetOldWalletData()V
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_public_address"

    const-string v2, "wallet_seed"

    .line 232
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1849
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

    .line 233
    invoke-static {p0, v2, v4, v3, v4}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resetTokensSettings()V
    .locals 8

    .line 200
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 201
    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 13536
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 203
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tokens_settings"

    invoke-virtual {p0, v6, v7}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTokensSettings(Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "tokens_settings"

    invoke-virtual {p0, p2, v1}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p2, v1, v2, v1}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAccountLevelMetadata(Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "account_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAirdropMetadata(Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$Keys;->getKEY_AIRDROP_METADATA()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAuthSession(Lcom/smedialink/storage/data/locale/prefs/model/auth/AuthTokensMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBannersVisible(Z)V
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interface_banners"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceAuthSession(Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceOnlyPositiveTokens(Z)V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceTokensOrderType(Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceTokensSettings(Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_tokens_settings"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBinanceUserInfo(Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "binance_user_info"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCryptoHiddenBalance(Z)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_balance"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastLoggedInGuid(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOnlyPositiveTokens(Z)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_only_positive"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefsVersion(I)V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "crypto_prefs_version"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQuotationsVisible(Z)V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interface_quotation"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStakingProgrammesOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stakings_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTokensOrderType(Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokens_order_type"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTonConfigJsonString(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ton_config_json_string"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletInfoMetadata(Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wallet_information_metadata"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWalletPassword(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallet_password"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;->withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

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

    .line 48
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/BasePreference;->getMPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallets_guid"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
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

    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/prefs/impl/CryptoPreference;->getActualGuid()Ljava/lang/String;

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
