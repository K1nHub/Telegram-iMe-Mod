.class public final Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;
.super Ljava/lang/Object;
.source "PreferencesMigrationManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferencesMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n+ 5 SharedPrefferencesExt.kt\ncom/iMe/storage/data/utils/extentions/SharedPrefferencesExtKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n41#2,6:111\n47#2:118\n133#3:117\n107#4:119\n14#5,4:120\n766#6:124\n857#6,2:125\n1855#6:127\n1855#6,2:129\n1856#6:131\n1#7:128\n*S KotlinDebug\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n*L\n39#1:111,6\n39#1:118\n39#1:117\n39#1:119\n40#1:120,4\n79#1:124\n79#1:125,2\n80#1:127\n86#1:129,2\n80#1:131\n*E\n"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;",
            "Lcom/iMe/storage/domain/storage/BasePreferenceHelper;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->getAvailableNetworks()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tokens_settings"

    invoke-interface {p1, v3, v4}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, v4, v5}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->isKeyContains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 81
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->Companion:Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;

    invoke-virtual {v2, v0}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;->getDefaultTokensSettings(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {v5}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    move-object v4, v5

    goto :goto_2

    :cond_4
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1855
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 87
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v5, v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v5

    .line 91
    new-instance v6, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 92
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 93
    iget v7, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v8, 0x1

    .line 91
    invoke-direct {v6, v4, v7, v8}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;-><init>(Ljava/lang/String;IZ)V

    .line 90
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v8

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 101
    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->saveTokensSettings(Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto/16 :goto_1

    .line 84
    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_8
    return-void
.end method

.method public static final migrateCryptoPrefs(J)V
    .locals 1

    .line 28
    :try_start_0
    sget-object v0, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->migrateToCurrentVersion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final migrateToCurrentVersion(J)V
    .locals 17

    move-object/from16 v0, p0

    .line 42
    const-class v1, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 45
    instance-of v2, v0, Lorg/koin/core/component/KoinScopeComponent;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 46
    move-object v2, v0

    check-cast v2, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v2}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    .line 133
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 40
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getPrefsVersion()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v4, :cond_1

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 71
    :pswitch_0
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BTCMT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 70
    :pswitch_1
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 69
    :pswitch_2
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PPM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SIN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 68
    :pswitch_3
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 60
    :pswitch_4
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletPublicAddress()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletSeed()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->resetOldWalletData()V

    .line 63
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v6

    sget-object v7, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v6, v7, v4}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 65
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletCreationDates()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v4

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 66
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 58
    :pswitch_5
    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->resetAllTokensSettings()V

    goto/16 :goto_2

    .line 57
    :pswitch_6
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 49
    :pswitch_7
    sget-object v15, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    const/16 v4, 0x15

    new-array v4, v4, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 50
    sget-object v16, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v16, v4, v14

    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v4, v3

    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v4, v13

    .line 51
    sget-object v13, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v13, v4, v12

    sget-object v12, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v12, v4, v11

    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v11, v4, v10

    .line 52
    sget-object v10, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v10, v4, v9

    sget-object v9, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v9, v4, v8

    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v8, v4, v7

    sget-object v7, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v7, v4, v6

    .line 53
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v6, 0xb

    aput-object v5, v4, v6

    const/16 v5, 0xc

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    .line 54
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    .line 55
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v4, v5

    .line 49
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v15, v1, v1, v4}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto :goto_2

    .line 45
    :pswitch_8
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    const/16 v15, 0xb

    new-array v15, v15, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 46
    sget-object v16, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v16, v15, v14

    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v15, v3

    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v15, v13

    sget-object v13, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v13, v15, v12

    sget-object v12, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v12, v15, v11

    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v11, v15, v10

    .line 47
    sget-object v10, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v10, v15, v9

    sget-object v9, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v9, v15, v8

    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v8, v15, v7

    sget-object v7, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v7, v15, v6

    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v15, v5

    .line 45
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto :goto_2

    .line 44
    :pswitch_9
    sget-object v4, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    .line 73
    :goto_2
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setPrefsVersion(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    const-string v2, ""

    .line 16
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 18
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
