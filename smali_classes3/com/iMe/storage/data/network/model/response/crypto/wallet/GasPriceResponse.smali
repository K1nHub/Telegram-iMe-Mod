.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
.super Ljava/lang/Object;
.source "GasPriceResponse.kt"


# instance fields
.field private final duration:F

.field private final fee:D

.field private final feeInDollars:F

.field private final limit:Ljava/math/BigInteger;

.field private final price:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FDF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    .line 8
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    .line 9
    iput-wide p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    .line 10
    iput p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;Ljava/math/BigInteger;FDFILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    :cond_4
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move-wide p6, v1

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->copy(Ljava/math/BigInteger;Ljava/math/BigInteger;FDF)Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    return v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    return-wide v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    return v0
.end method

.method public final copy(Ljava/math/BigInteger;Ljava/math/BigInteger;FDF)Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 8

    new-instance v7, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FDF)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDuration()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    return v0
.end method

.method public final getFee()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    return-wide v0
.end method

.method public final getFeeInDollars()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    return v0
.end method

.method public final getLimit()Ljava/math/BigInteger;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPrice()Ljava/math/BigInteger;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GasPriceResponse(price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->price:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->limit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->fee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", feeInDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->feeInDollars:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
