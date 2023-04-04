.class public final Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
.super Ljava/lang/Object;
.source "StakingOperationCost.kt"


# instance fields
.field private final token:Lcom/iMe/storage/domain/model/staking/StakingToken;

.field private final value:Lcom/iMe/storage/domain/model/staking/StakingValues;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingValues;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/staking/StakingOperationCost;Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingValues;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->copy(Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingValues;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/staking/StakingToken;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/staking/StakingValues;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingValues;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;-><init>(Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingValues;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/staking/StakingToken;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    return-object v0
.end method

.method public final getValue()Lcom/iMe/storage/domain/model/staking/StakingValues;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperationCost(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->token:Lcom/iMe/storage/domain/model/staking/StakingToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->value:Lcom/iMe/storage/domain/model/staking/StakingValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
