.class public final Lcom/iMe/i_staking/mapper/StakingApprovalInfoMapperKt;
.super Ljava/lang/Object;
.source "StakingApprovalInfoMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;)Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;->getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object p0

    .line 7
    new-instance v1, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;)V

    return-object v1
.end method
