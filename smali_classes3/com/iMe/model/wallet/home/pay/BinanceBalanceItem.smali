.class public final Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "BinanceBalanceItem.kt"


# instance fields
.field private balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    const-string v0, "balanceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->copy(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;
    .locals 1

    const-string v0, "balanceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBalanceInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setBalanceInfo(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceBalanceItem(balanceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->balanceInfo:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
