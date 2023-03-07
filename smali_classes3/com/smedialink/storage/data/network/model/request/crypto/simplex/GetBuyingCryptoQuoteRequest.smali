.class public final Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;
.super Ljava/lang/Object;
.source "GetBuyingCryptoQuoteRequest.kt"


# instance fields
.field private final digitalCurrency:Ljava/lang/String;

.field private final fiatCurrency:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final requestedAmount:F

.field private final requestedCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    .line 8
    iput-object p5, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;
    .locals 7

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDigitalCurrency()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatCurrency()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestedAmount()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    return v0
.end method

.method public final getRequestedCurrency()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetBuyingCryptoQuoteRequest(digitalCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->digitalCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->fiatCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestedCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->requestedAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
