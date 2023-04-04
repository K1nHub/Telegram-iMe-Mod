.class public final Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;
.super Ljava/lang/Object;
.source "StakingTokenMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/iMe/storage/domain/model/staking/StakingToken;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingToken;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingTokenResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingTokenResponse;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingTokenResponse;->getTicker()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/staking/StakingToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
