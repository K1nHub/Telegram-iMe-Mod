.class public final Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;
.super Ljava/lang/Object;
.source "PreferencesMigrationManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferencesMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n+ 5 SharedPrefferencesExt.kt\ncom/smedialink/storage/data/utils/extentions/SharedPrefferencesExtKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n41#2,6:109\n47#2:116\n131#3:115\n103#4:117\n14#5,4:118\n766#6:122\n857#6,2:123\n1855#6:125\n1855#6,2:127\n1856#6:129\n1#7:126\n*S KotlinDebug\n*F\n+ 1 PreferencesMigrationManager.kt\ncom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto\n*L\n39#1:109,6\n39#1:116\n39#1:115\n39#1:117\n40#1:118,4\n77#1:122\n77#1:123,2\n78#1:125\n84#1:127,2\n78#1:129\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    invoke-direct {v0}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;",
            "Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;)V"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getAvailableNetworks()Ljava/util/List;

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

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tokens_settings"

    invoke-interface {p1, v3, v4}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->withPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, v4, v5}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper$DefaultImpls;->withTgAccount$default(Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->isKeyContains(Ljava/lang/String;)Z

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

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 79
    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->Companion:Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;

    invoke-virtual {v2, v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;->getDefaultTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {v4}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getPosition()I

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

    check-cast v5, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    invoke-virtual {v5}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getPosition()I

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

    check-cast v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 85
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v5, v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    invoke-virtual {v1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v5

    .line 89
    new-instance v6, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 90
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    iget v7, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v8, 0x1

    .line 89
    invoke-direct {v6, v4, v7, v8}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;-><init>(Ljava/lang/String;IZ)V

    .line 88
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v8

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 99
    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->saveTokensSettings(Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto/16 :goto_1

    .line 82
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
    sget-object v0, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->migrateToCurrentVersion(J)V
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
    const-class v1, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

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

    .line 103
    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    .line 131
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 40
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getPrefsVersion()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :goto_1
    const/16 v4, 0x9

    if-ge v2, v4, :cond_1

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 69
    :pswitch_0
    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PPM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SIN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 68
    :pswitch_1
    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 60
    :pswitch_2
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletPublicAddress()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getOldWalletSeed()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetOldWalletData()V

    .line 63
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletPublicAddresses()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v6

    sget-object v7, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v6, v7, v4}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 65
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletCreationDates()Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v4

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/smedialink/storage/domain/model/PreferenceBlockchainMappedData;->put(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Ljava/lang/Object;)V

    .line 66
    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 58
    :pswitch_3
    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetTokensSettings()V

    goto/16 :goto_2

    .line 57
    :pswitch_4
    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    new-array v5, v13, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v14

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto/16 :goto_2

    .line 49
    :pswitch_5
    sget-object v15, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    const/16 v12, 0x15

    new-array v12, v12, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 50
    sget-object v16, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v16, v12, v14

    sget-object v14, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v12, v3

    sget-object v14, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v12, v13

    .line 51
    sget-object v13, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v13, v12, v11

    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v11, v12, v10

    sget-object v10, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v10, v12, v9

    .line 52
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v9, v12, v8

    sget-object v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v8, v12, v7

    sget-object v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v7, v12, v6

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v12, v4

    .line 53
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v4, v12, v5

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/16 v5, 0xb

    aput-object v4, v12, v5

    const/16 v4, 0xc

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0xd

    .line 54
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0xe

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0xf

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0x10

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0x11

    .line 55
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0x12

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0x13

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    const/16 v4, 0x14

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v5, v12, v4

    .line 49
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v15, v1, v1, v4}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto :goto_2

    .line 45
    :pswitch_6
    sget-object v12, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    const/16 v15, 0xb

    new-array v15, v15, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 46
    sget-object v16, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v16, v15, v14

    sget-object v14, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v15, v3

    sget-object v14, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v14, v15, v13

    sget-object v13, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v13, v15, v11

    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v11, v15, v10

    sget-object v10, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v10, v15, v9

    .line 47
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v9, v15, v8

    sget-object v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v8, v15, v7

    sget-object v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v7, v15, v6

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v6, v15, v4

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v4, v15, v5

    .line 45
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v12, v1, v1, v4}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    goto :goto_2

    .line 44
    :pswitch_7
    sget-object v4, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->INSTANCE:Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v1, v5}, Lcom/smedialink/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->addSupportForNewTokens(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;Ljava/util/List;)V

    .line 71
    :goto_2
    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setPrefsVersion(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    const-string v2, ""

    .line 16
    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/storage/BasePreferenceHelper;->setTempOneActionUserId(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
