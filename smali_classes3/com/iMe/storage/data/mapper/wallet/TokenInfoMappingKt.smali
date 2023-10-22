.class public final Lcom/iMe/storage/data/mapper/wallet/TokenInfoMappingKt;
.super Ljava/lang/Object;
.source "TokenInfoMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenInfoResponse;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenInfoResponse;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenInfoResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenInfoResponse;->isCustom()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
