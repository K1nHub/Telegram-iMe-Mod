.class public final Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;
.super Ljava/lang/Object;
.source "StakingApprovalInfoResponse.kt"


# instance fields
.field private final feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

.field private final token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;)V
    .locals 1

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    .line 7
    iput-object p2, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;ILjava/lang/Object;)Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->copy(Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;)Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;)Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;
    .locals 1

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;

    invoke-direct {v0, p1, p2}, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    iget-object p1, p1, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object v0
.end method

.method public final getToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingApprovalInfoResponse(feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->feeToken:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->token:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
