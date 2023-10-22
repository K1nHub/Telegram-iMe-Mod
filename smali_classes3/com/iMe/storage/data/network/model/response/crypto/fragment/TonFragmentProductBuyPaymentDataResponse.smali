.class public final Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;
.super Ljava/lang/Object;
.source "TonFragmentProductBuyPaymentDataResponse.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final amount:Ljava/math/BigInteger;

.field private final seqno:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    .line 8
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;Ljava/lang/String;Ljava/math/BigInteger;IILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->copy(Ljava/lang/String;Ljava/math/BigInteger;I)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigInteger;I)Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;-><init>(Ljava/lang/String;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmount()Ljava/math/BigInteger;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getSeqno()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TonFragmentProductBuyPaymentDataResponse(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->amount:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyPaymentDataResponse;->seqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
