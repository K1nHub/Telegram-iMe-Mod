.class public final Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;
.super Ljava/lang/Object;
.source "BitcoinUnspentOutput.kt"


# instance fields
.field private final amount:Ljava/math/BigInteger;

.field private final index:I

.field private final txId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/math/BigInteger;)V
    .locals 1

    const-string v0, "txId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;Ljava/lang/String;ILjava/math/BigInteger;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->copy(Ljava/lang/String;ILjava/math/BigInteger;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    return v0
.end method

.method public final component3()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/math/BigInteger;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;
    .locals 1

    const-string v0, "txId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmount()Ljava/math/BigInteger;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    return v0
.end method

.method public final getTxId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitcoinUnspentOutput(txId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->txId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->amount:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
