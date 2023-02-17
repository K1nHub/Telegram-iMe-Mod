.class public final Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;
.super Ljava/lang/Object;
.source "WCBinanceTradeOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final orderType:I

.field private final price:J

.field private final quantity:J

.field private final sender:Ljava/lang/String;

.field private final side:I

.field private final symbol:Ljava/lang/String;

.field private final timeInforce:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJLjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "symbol"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    .line 30
    iput-wide p3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    .line 31
    iput-wide p5, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    .line 32
    iput-object p7, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    .line 33
    iput p8, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    .line 34
    iput-object p9, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    .line 35
    iput p10, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    iget v3, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    iget-wide v5, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    iget-wide v5, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    iget v3, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    iget p1, p1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    return v0
.end method

.method public final getPrice()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    return-wide v0
.end method

.method public final getQuantity()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    return-wide v0
.end method

.method public final getSender()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public final getSide()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    return v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeInforce()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->orderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->price:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->quantity:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", side="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->side:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeInforce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$Message;->timeInforce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
