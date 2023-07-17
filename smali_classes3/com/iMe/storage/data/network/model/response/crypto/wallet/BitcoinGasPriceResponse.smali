.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
.super Ljava/lang/Object;
.source "BitcoinGasPriceResponse.kt"


# instance fields
.field private final byteFee:Ljava/math/BigInteger;

.field private final duration:F

.field private final fee:D

.field private final feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;FDLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)V
    .locals 1

    const-string v0, "byteFee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeInFiat"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    .line 8
    iput p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    .line 9
    iput-wide p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;Ljava/math/BigInteger;FDLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->copy(Ljava/math/BigInteger;FDLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    return v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    return-wide v0
.end method

.method public final component4()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final copy(Ljava/math/BigInteger;FDLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;
    .locals 7

    const-string v0, "byteFee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeInFiat"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;-><init>(Ljava/math/BigInteger;FDLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getByteFee()Ljava/math/BigInteger;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getDuration()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    return v0
.end method

.method public final getFee()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    return-wide v0
.end method

.method public final getFeeInFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitcoinGasPriceResponse(byteFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->byteFee:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->fee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", feeInFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->feeInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
