.class public final Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;
.super Ljava/lang/Object;
.source "CreateBuyingCryptoPaymentRequest.kt"


# instance fields
.field private final digitalAmount:F

.field private final digitalCurrency:Ljava/lang/String;

.field private final fiatAmount:I

.field private final fiatCurrency:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final quoteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    .line 8
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    .line 9
    iput p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    .line 10
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;
    .locals 9

    const-string v0, "quoteId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;

    move-object v1, v0

    move v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    iget v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDigitalAmount()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    return v0
.end method

.method public final getDigitalCurrency()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatAmount()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    return v0
.end method

.method public final getFiatCurrency()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateBuyingCryptoPaymentRequest(quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->fiatAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", digitalCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", digitalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->digitalAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
