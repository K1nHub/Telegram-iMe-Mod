.class public final Lcom/smedialink/storage/data/mapper/wallet/SessionTokensMappingKt;
.super Ljava/lang/Object;
.source "SessionTokensMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/wallet/SessionTokensResponse;)Lcom/smedialink/storage/domain/model/wallet/SessionTokens;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/SessionTokens;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/wallet/SessionTokensResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/wallet/SessionTokensResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/smedialink/storage/domain/model/wallet/SessionTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
