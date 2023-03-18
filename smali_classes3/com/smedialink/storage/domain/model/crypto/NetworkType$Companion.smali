.class public final Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;
.super Ljava/lang/Object;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/NetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkType.kt\ncom/smedialink/storage/domain/model/crypto/NetworkType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n3792#2:141\n4307#2,2:142\n3792#2:144\n4307#2,2:145\n1#3:147\n*S KotlinDebug\n*F\n+ 1 NetworkType.kt\ncom/smedialink/storage/domain/model/crypto/NetworkType$Companion\n*L\n121#1:141\n121#1:142,2\n125#1:144\n125#1:145,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromChainId(J)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 132
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->Companion:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object p1

    .line 133
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Main;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Ropsten;

    :goto_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 134
    :cond_1
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Main;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Testnet;

    :goto_1
    if-eqz p2, :cond_3

    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 135
    :cond_3
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Main;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Testnet;

    :goto_2
    if-eqz p2, :cond_5

    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 136
    :cond_5
    instance-of p2, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Main;

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom$Testnet;

    :goto_3
    if-eqz v0, :cond_7

    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->FANTOM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_4

    .line 137
    :cond_7
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :goto_4
    return-object p1
.end method

.method public final getAvailableNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEVMNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

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

    .line 125
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->isEVM()Z

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

.method public final getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    const-string v0, "blockchainTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

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

    .line 121
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

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

.method public final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->values()[Lcom/smedialink/storage/domain/model/crypto/NetworkType;

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

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :cond_2
    return-object v3
.end method
