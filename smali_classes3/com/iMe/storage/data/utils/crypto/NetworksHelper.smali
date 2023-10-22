.class public final Lcom/iMe/storage/data/utils/crypto/NetworksHelper;
.super Ljava/lang/Object;
.source "NetworksHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworksHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworksHelper.kt\ncom/iMe/storage/data/utils/crypto/NetworksHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,100:1\n766#2:101\n857#2,2:102\n766#2:104\n857#2,2:105\n766#2:107\n857#2,2:108\n766#2:111\n857#2,2:112\n766#2:114\n857#2,2:115\n766#2:117\n857#2,2:118\n766#2:120\n857#2,2:121\n1747#2,3:123\n1#3:110\n56#4,6:126\n56#4,6:132\n56#4,6:138\n*S KotlinDebug\n*F\n+ 1 NetworksHelper.kt\ncom/iMe/storage/data/utils/crypto/NetworksHelper\n*L\n36#1:101\n36#1:102,2\n43#1:104\n43#1:105,2\n44#1:107\n44#1:108,2\n55#1:111\n55#1:112,2\n58#1:114\n58#1:115,2\n67#1:117\n67#1:118,2\n70#1:120\n70#1:121,2\n76#1:123,3\n16#1:126,6\n17#1:132,6\n18#1:138,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

.field private static final binanceSupportedNetworksIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private static final cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

.field private static final default$delegate:Lkotlin/Lazy;

.field private static final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 16
    sput-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 17
    sput-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->resourceManager$delegate:Lkotlin/Lazy;

    const-string v1, "BINANCE_SMART_CHAIN"

    const-string v2, "BITCOIN"

    const-string v3, "ETHEREUM"

    const-string v4, "FANTOM"

    const-string v5, "POLYGON"

    const-string v6, "TRON"

    .line 27
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->binanceSupportedNetworksIds:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->default$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$createDefaultNetwork(Lcom/iMe/storage/data/utils/crypto/NetworksHelper;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->createDefaultNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 13

    .line 79
    new-instance v10, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 81
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 82
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_bep20:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_bsc_short_name:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lcom/iMe/storage/R$color;->wallet_network_bsc:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    new-instance v6, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    .line 86
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_scanner_bsc:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getBscScanUrl()Ljava/lang/String;

    move-result-object v7

    .line 89
    new-instance v8, Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;

    const-string v9, "/address/{address}"

    const-string v11, "/token/{address}"

    const-string v12, "/tx/{hash}"

    invoke-direct {v8, v9, v11, v12}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "https://storage.googleapis.com/blockchain-networks/static/LogoGrayScans/Etherscan.png"

    .line 85
    invoke-direct {v6, v0, v7, v9, v8}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;)V

    .line 95
    invoke-virtual {v1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment;->isStageEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x61

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x38

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    const-string v1, "BINANCE_SMART_CHAIN"

    const-string v8, "https://storage.googleapis.com/blockchain-networks/static/bsc-network-big.png"

    const-string v9, "https://storage.googleapis.com/blockchain-networks/static/bsc-network-small.png"

    move-object v0, v10

    .line 79
    invoke-direct/range {v0 .. v9}, Lcom/iMe/storage/domain/model/crypto/Network;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static final getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    const-string v0, "BINANCE_SMART_CHAIN"

    .line 73
    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method private final getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private final getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 1

    .line 17
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object v0
.end method

.method public static final getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 3

    .line 49
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v1, :cond_2

    sget-object p0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public final getBinanceNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

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

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 70
    sget-object v4, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->binanceSupportedNetworksIds:Ljava/util/List;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getDefault()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 30
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->default$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final getEVMNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

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

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 67
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getEnabledCreatedNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getEnabledNetworksIds()Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v2

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 43
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 44
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final getEnabledNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getEnabledNetworksIds()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 36
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getLoggedInNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLoggedInWalletsBlockchains()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkByChainId(J)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getChainId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public final getNetworksByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

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

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 55
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    const-string v0, "blockchainTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

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

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 58
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getSupportedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isEVM(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNetworkEnabled(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getEnabledNetworksIds()Ljava/util/List;

    move-result-object v0

    .line 1747
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method
