.class public final Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionArgsResponse.kt"


# instance fields
.field private final chainId:J

.field private final data:Ljava/lang/String;

.field private final gasLimit:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final nonce:Ljava/math/BigInteger;

.field private final to:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    .line 7
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    .line 9
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    .line 10
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    .line 11
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    .line 12
    iput-object p8, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->copy(JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component4()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component5()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;
    .locals 10

    const-string v0, "to"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;-><init>(JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;

    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getChainId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    return-wide v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxTransactionArgsResponse(chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->chainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
