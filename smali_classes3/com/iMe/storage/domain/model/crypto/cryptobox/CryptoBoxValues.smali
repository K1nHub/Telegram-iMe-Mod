.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;
.super Ljava/lang/Object;
.source "CryptoBoxValues.kt"


# instance fields
.field private final asToken:Ljava/math/BigDecimal;

.field private final asUsd:D


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;D)V
    .locals 1

    const-string v0, "asToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    .line 7
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;Ljava/math/BigDecimal;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->copy(Ljava/math/BigDecimal;D)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    return-wide v0
.end method

.method public final copy(Ljava/math/BigDecimal;D)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;
    .locals 1

    const-string v0, "asToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;-><init>(Ljava/math/BigDecimal;D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAsToken()Ljava/math/BigDecimal;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAsUsd()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxValues(asToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asToken:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->asUsd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
