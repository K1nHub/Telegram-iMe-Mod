.class public final Lcom/iMe/i_staking/mapper/StakingWrappedActionMapperKt;
.super Ljava/lang/Object;
.source "StakingWrappedActionMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingWrappedActionMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingWrappedActionMapper.kt\ncom/iMe/i_staking/mapper/StakingWrappedActionMapperKt\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,25:1\n6#2,6:26\n*S KotlinDebug\n*F\n+ 1 StakingWrappedActionMapper.kt\ncom/iMe/i_staking/mapper/StakingWrappedActionMapperKt\n*L\n14#1:26,6\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingWrappedActionResponse;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/response/StakingWrappedActionResponse;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_0
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingWrappedActionResponse;->getWrappedAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    const-string v2, "tx"

    .line 17
    invoke-virtual {v0, v2}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v2

    const-class v3, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    invoke-interface {v2, v3}, Lcom/auth0/android/jwt/Claim;->asObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    if-eqz v2, :cond_1

    const-string v3, "jwt.getClaim(TRANSACTION\u2026     ?: throw Throwable()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "gas"

    .line 19
    invoke-virtual {v0, v3}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v0

    const-class v3, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    invoke-interface {v0, v3}, Lcom/auth0/android/jwt/Claim;->asObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    if-eqz v0, :cond_0

    const-string v3, "jwt.getClaim(GAS_KEY).as\u2026     ?: throw Throwable()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {v1, v2, v0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;-><init>(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;)V

    .line 22
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingWrappedActionResponse;->getWrappedAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingWrappedActionResponse;->getWrappedAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
