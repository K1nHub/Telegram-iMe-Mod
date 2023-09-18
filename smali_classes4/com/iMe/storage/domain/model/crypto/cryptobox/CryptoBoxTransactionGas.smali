.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionGas.kt"


# instance fields
.field private final durationMinutes:I

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;I)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    .line 8
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;IILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;I)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;I)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDurationMinutes()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    return v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getValue()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxTransactionGas(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->value:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->durationMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
