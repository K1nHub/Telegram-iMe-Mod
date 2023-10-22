.class public final Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;
.super Ljava/lang/Object;
.source "PremiumBuyTransactionParams.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final amount:Ljava/math/BigInteger;

.field private final payload:Ljava/lang/String;

.field private final seqno:I

.field private final validUntil:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 1

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    .line 10
    iput p5, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;IILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;I)Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;I)Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;
    .locals 7

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmount()Ljava/math/BigInteger;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeqno()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    return v0
.end method

.method public final getValidUntil()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumBuyTransactionParams(validUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->validUntil:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->amount:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;->seqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
