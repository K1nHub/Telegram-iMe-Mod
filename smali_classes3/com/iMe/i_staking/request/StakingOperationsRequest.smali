.class public final Lcom/iMe/i_staking/request/StakingOperationsRequest;
.super Ljava/lang/Object;
.source "StakingOperationsRequest.kt"


# instance fields
.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

.field private final stakingId:Ljava/lang/Long;

.field private final status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

.field private final type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    .line 9
    iput-object p2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    .line 10
    iput-object p3, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    .line 11
    iput-object p4, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 12
    iput-object p5, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    move-object v1, p0

    move-object v6, p5

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/iMe/i_staking/request/StakingOperationsRequest;-><init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/request/StakingOperationsRequest;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;ILjava/lang/Object;)Lcom/iMe/i_staking/request/StakingOperationsRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/i_staking/request/StakingOperationsRequest;->copy(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;)Lcom/iMe/i_staking/request/StakingOperationsRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component5()Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;)Lcom/iMe/i_staking/request/StakingOperationsRequest;
    .locals 7

    new-instance v6, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/iMe/i_staking/request/StakingOperationsRequest;-><init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    iget-object p1, p1, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getPaging()Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    return-object v0
.end method

.method public final getStakingId()Ljava/lang/Long;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStatus()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final getType()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperationsRequest(stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->stakingId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOperationsRequest;->paging:Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
