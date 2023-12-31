.class public final Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;
.super Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.source "TransferArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TON"
.end annotation


# instance fields
.field private final amount:D

.field private final decimals:I

.field private final isUnencrypted:Z

.field private final message:Ljava/lang/String;

.field private final recipientAddress:Ljava/lang/String;

.field private final sendMode:I

.field private final seqno:I


# direct methods
.method public constructor <init>(DILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;-><init>(DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->amount:D

    .line 27
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->decimals:I

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    .line 31
    iput p7, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    .line 32
    iput-boolean p8, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return-void
.end method

.method public synthetic constructor <init>(DILjava/lang/String;Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DILjava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;DILjava/lang/String;Ljava/lang/String;IIZILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    move-wide p1, v1

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->copy(DILjava/lang/String;Ljava/lang/String;IIZ)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method protected final component2()I
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v0

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return v0
.end method

.method public final copy(DILjava/lang/String;Ljava/lang/String;IIZ)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;
    .locals 10

    const-string v0, "recipientAddress"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DILjava/lang/String;Ljava/lang/String;IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->amount:D

    return-wide v0
.end method

.method protected getDecimals()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->decimals:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendMode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    return v0
.end method

.method public final getSeqno()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isUnencrypted()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TON(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", decimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getDecimals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->seqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUnencrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
