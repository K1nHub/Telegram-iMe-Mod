.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;
.super Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.source "TransactionParamsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BTC"
.end annotation


# instance fields
.field private final changeAddress:Ljava/lang/String;

.field private final fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

.field private final fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

.field private final safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

.field private final utxos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fastest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeLow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utxos"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    .line 22
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    .line 23
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    .line 24
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    .line 25
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/util/List;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/util/List;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;"
        }
    .end annotation

    const-string v0, "fastest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeLow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utxos"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final getSafeLow()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    return-object v0
.end method

.method public final getUtxos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTC(fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safeLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utxos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->utxos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->changeAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
