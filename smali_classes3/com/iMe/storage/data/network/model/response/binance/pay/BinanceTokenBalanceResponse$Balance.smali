.class public final Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;
.super Ljava/lang/Object;
.source "BinancePayGetBalancesResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Balance"
.end annotation


# instance fields
.field private final btcValuation:Ljava/lang/String;

.field private final fiatValuation:Ljava/lang/String;

.field private final free:Ljava/lang/String;

.field private final freeze:Ljava/lang/String;

.field private final locked:Ljava/lang/String;

.field private final total:Ljava/lang/String;

.field private final withdrawing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "free"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeze"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "total"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withdrawing"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btcValuation"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatValuation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;
    .locals 9

    const-string v0, "free"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locked"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeze"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "total"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withdrawing"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btcValuation"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatValuation"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBtcValuation()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatValuation()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    return-object v0
.end method

.method public final getFree()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreeze()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocked()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    return-object v0
.end method

.method public final getWithdrawing()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Balance(free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->free:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->locked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freeze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->freeze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->total:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", withdrawing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->withdrawing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", btcValuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->btcValuation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatValuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->fiatValuation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
