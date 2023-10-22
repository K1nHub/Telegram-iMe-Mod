.class public final Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;
.super Ljava/lang/Object;
.source "TonFragmentProductBuyTransactionParamsResponse.kt"


# instance fields
.field private final payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

.field private final requestId:Ljava/lang/String;

.field private final validUntil:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "valid_until"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    .line 7
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->copy(JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;
    .locals 1

    const-string v0, "requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;

    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPayment()Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidUntil()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TonFragmentProductBuyTransactionParamsResponse(validUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->validUntil:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;->payment:Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
