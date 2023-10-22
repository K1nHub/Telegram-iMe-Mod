.class public final Lcom/iMe/storage/data/mapper/fragment/TonFragmentSessionDataMappingKt;
.super Ljava/lang/Object;
.source "TonFragmentSessionDataMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;->getSession()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;->getSessionPayload()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;->getHostname()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;->getClientId()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
