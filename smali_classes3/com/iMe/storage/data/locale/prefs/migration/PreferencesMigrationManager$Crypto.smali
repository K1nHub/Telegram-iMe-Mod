.class public final Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;
.super Ljava/lang/Object;
.source "PreferencesMigrationManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferencesMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n+ 5 SharedPrefferencesExt.kt\ncom/iMe/storage/data/utils/extentions/SharedPrefferencesExtKt\n*L\n1#1,52:1\n41#2,6:53\n47#2:60\n133#3:59\n107#4:61\n18#5,4:62\n*S KotlinDebug\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n*L\n27#1:53,6\n27#1:60\n27#1:59\n27#1:61\n28#1:62,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final migrateCryptoPrefs(J)V
    .locals 1

    .line 20
    :try_start_0
    sget-object v0, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->migrateToCurrentVersion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final migrateToCurrentVersion(J)V
    .locals 5

    .line 42
    const-class v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 45
    instance-of v1, p0, Lorg/koin/core/component/KoinScopeComponent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 46
    move-object v1, p0

    check-cast v1, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v1}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 133
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 28
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 29
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getPrefsVersion()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    :goto_1
    const/16 v1, 0xe

    if-ge p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 43
    :pswitch_0
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    move v1, p2

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksSelected(Z)V

    goto :goto_3

    .line 42
    :pswitch_1
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->resetBinanceTokensSettings()V

    goto :goto_3

    .line 41
    :pswitch_2
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->resetAllTokensSettings()V

    goto :goto_3

    .line 33
    :cond_2
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletPublicAddress()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletSeed()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->resetOldWalletData()V

    .line 36
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v3

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v3, v4, v1}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 37
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 38
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletCreationDates()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v1

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 45
    :goto_3
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setPrefsVersion(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 20
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 13
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
