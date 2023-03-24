.class public final Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;
.super Ljava/lang/Object;
.source "StakingOwnProgrammesRequest.kt"


# instance fields
.field private final lastItemId:Ljava/lang/Long;

.field private final limit:Ljava/lang/Integer;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 7
    iput-object p2, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    .line 8
    iput-object p3, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    .line 9
    iput-object p4, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    .line 10
    iput-object p5, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->copy(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;)Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;)Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;
    .locals 7

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLastItemId()Ljava/lang/Long;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getOrder()Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOwnProgrammesRequest(networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->lastItemId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->limit:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->order:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
