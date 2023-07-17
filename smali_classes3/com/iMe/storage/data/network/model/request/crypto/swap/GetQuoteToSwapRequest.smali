.class public final Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;
.super Ljava/lang/Object;
.source "GetQuoteToSwapRequest.kt"


# instance fields
.field private final amount:Ljava/lang/String;

.field private final defiProtocol:Ljava/lang/String;

.field private final inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

.field private final outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

.field private final slippageTolerance:F

.field private final tradeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;IF)V
    .locals 1

    const-string v0, "defiProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    .line 11
    iput p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;IFILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->copy(Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;IF)Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;IF)Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;
    .locals 8

    const-string v0, "defiProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;IF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    iget p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefiProtocol()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputToken()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final getOutputToken()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final getSlippageTolerance()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    return v0
.end method

.method public final getTradeType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetQuoteToSwapRequest(defiProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->inputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->outputToken:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tradeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->tradeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slippageTolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;->slippageTolerance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
