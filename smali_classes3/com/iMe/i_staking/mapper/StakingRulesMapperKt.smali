.class public final Lcom/iMe/i_staking/mapper/StakingRulesMapperKt;
.super Ljava/lang/Object;
.source "StakingRulesMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingRulesResponse;)Lcom/iMe/storage/domain/model/staking/StakingRules;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingRules;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getCanDeposit()Z

    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getCanWithdrawImmediately()Z

    move-result v3

    .line 10
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getCanWithdrawSafely()Z

    move-result v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getImmediateWithdrawalFeeTaken()Z

    move-result v5

    .line 12
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getSafeWithdrawalFeeTaken()Z

    move-result v6

    .line 13
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingRulesResponse;->getNeededAllowanceForDeposit()Z

    move-result v7

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;-><init>(ZZZZZZ)V

    return-object v0
.end method
