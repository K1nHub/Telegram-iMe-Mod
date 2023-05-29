.class public final Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;
.super Ljava/lang/Object;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/NetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkType.kt\ncom/iMe/storage/domain/model/crypto/NetworkType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,173:1\n1#2:174\n3792#3:175\n4307#3,2:176\n3792#3:178\n4307#3,2:179\n3792#3:181\n4307#3,2:182\n*S KotlinDebug\n*F\n+ 1 NetworkType.kt\ncom/iMe/storage/domain/model/crypto/NetworkType$Companion\n*L\n153#1:175\n153#1:176,2\n156#1:178\n156#1:179,2\n159#1:181\n159#1:182,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromChainId(J)Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 165
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain;->Companion:Lcom/iMe/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/iMe/storage/domain/model/crypto/Chain;

    move-result-object p1

    .line 166
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Main;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Ropsten;

    :goto_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 167
    :cond_1
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Main;

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Testnet;

    :goto_1
    if-eqz p2, :cond_3

    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 168
    :cond_3
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Main;

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Testnet;

    :goto_2
    if-eqz p2, :cond_5

    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 169
    :cond_5
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Main;

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Testnet;

    :goto_3
    if-eqz v0, :cond_7

    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->FANTOM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 170
    :cond_7
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :goto_4
    return-object p1
.end method

.method public final getAvailableNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBinanceSupportedNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->TRON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BITCOIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEVMNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 159
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->isEVM()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4307
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getNetworksByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 153
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    if-ne v6, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    .line 4307
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    const-string v0, "blockchainTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 156
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4307
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_2
    return-object v3
.end method
