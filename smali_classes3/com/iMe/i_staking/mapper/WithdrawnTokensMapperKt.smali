.class public final Lcom/iMe/i_staking/mapper/WithdrawnTokensMapperKt;
.super Ljava/lang/Object;
.source "WithdrawnTokensMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/WithdrawnTokensResponse;)Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/WithdrawnTokensResponse;->getPending()Ljava/math/BigDecimal;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/WithdrawnTokensResponse;->getReady()Ljava/math/BigDecimal;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-object v0
.end method
