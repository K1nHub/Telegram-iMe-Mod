.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;
.super Ljava/lang/Object;
.source "CryptoBoxCreationRules.kt"


# instance fields
.field private final factoryContractAddress:Ljava/lang/String;

.field private final factoryContractUrl:Ljava/lang/String;

.field private final feePerCryptobox:D

.field private final feePerUser:D

.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final minimalCapacity:I


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryContractAddress"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryContractUrl"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 7
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    .line 8
    iput-wide p4, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    .line 9
    iput p6, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    .line 10
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    goto :goto_3

    :cond_3
    move v6, p6

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;
    .locals 10

    const-string v0, "feeToken"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryContractAddress"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryContractUrl"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getFactoryContractAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getFactoryContractUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeePerCryptobox()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    return-wide v0
.end method

.method public final getFeePerUser()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    return-wide v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getMinimalCapacity()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxCreationRules(feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feePerUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerUser:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", feePerCryptobox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->feePerCryptobox:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", minimalCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->minimalCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", factoryContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", factoryContractUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->factoryContractUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
