.class public final Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;
.super Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;
.source "TransferArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TON"
.end annotation


# instance fields
.field private final amount:D

.field private final isUnencrypted:Z

.field private final message:Ljava/lang/String;

.field private final recipientAddress:Ljava/lang/String;

.field private final sendMode:I

.field private final weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;


# direct methods
.method public constructor <init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "weiConvertUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;-><init>(DLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->amount:D

    .line 22
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 23
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    .line 25
    iput p6, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    .line 26
    iput-boolean p7, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return-void
.end method

.method public synthetic constructor <init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    goto :goto_5

    :cond_5
    move v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->copy(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return v0
.end method

.method public final copy(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;
    .locals 9

    const-string v0, "weiConvertUnit"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;

    move-object v1, v0

    move-wide v2, p1

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    iget v3, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->amount:D

    return-wide v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendMode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    return v0
.end method

.method public final getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isUnencrypted()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TON(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weiConvertUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->weiConvertUnit:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->sendMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUnencrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
