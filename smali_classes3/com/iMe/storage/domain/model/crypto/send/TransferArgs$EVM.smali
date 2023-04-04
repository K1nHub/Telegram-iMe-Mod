.class public final Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;
.super Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.source "TransferArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EVM"
.end annotation


# instance fields
.field private final amount:D

.field private final chainId:J

.field private final contractAddress:Ljava/lang/String;

.field private final gasLimit:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final nonce:Ljava/math/BigInteger;

.field private final recipientAddress:Ljava/lang/String;

.field private final weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;


# direct methods
.method public constructor <init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1

    const-string v0, "weiConvertUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;-><init>(DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->amount:D

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 12
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    .line 13
    iput-wide p5, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    .line 14
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    .line 15
    iput-object p8, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    .line 16
    iput-object p9, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    .line 17
    iput-object p10, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 9
    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move-wide p1, v2

    move-object p3, v4

    move-object p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->copy(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public final component2()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    return-wide v0
.end method

.method public final component5()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component6()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component7()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;
    .locals 12

    const-string v0, "weiConvertUnit"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v6, p5

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->amount:D

    return-wide v0
.end method

.method public final getChainId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    return-wide v0
.end method

.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeiConvertUnit()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVM(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weiConvertUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->chainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->contractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
