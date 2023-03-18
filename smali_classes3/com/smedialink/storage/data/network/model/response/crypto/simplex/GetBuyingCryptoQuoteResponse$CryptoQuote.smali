.class public final Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;
.super Ljava/lang/Object;
.source "GetBuyingCryptoQuoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoQuote"
.end annotation


# instance fields
.field private final digitalMoneyAmount:F

.field private final fiatMoneyAmount:F

.field private final quoteId:Ljava/lang/String;

.field private final validUntil:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validUntil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    .line 11
    iput p4, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;Ljava/lang/String;Ljava/lang/String;FFILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->copy(Ljava/lang/String;Ljava/lang/String;FF)Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;FF)Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validUntil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    iget v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    iget p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDigitalMoneyAmount()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    return v0
.end method

.method public final getFiatMoneyAmount()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    return v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidUntil()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoQuote(quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->validUntil:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", digitalMoneyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->digitalMoneyAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fiatMoneyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->fiatMoneyAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
