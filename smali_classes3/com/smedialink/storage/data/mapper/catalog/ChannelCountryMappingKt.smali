.class public final Lcom/smedialink/storage/data/mapper/catalog/ChannelCountryMappingKt;
.super Ljava/lang/Object;
.source "ChannelCountryMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;)Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->getId()I

    move-result v2

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
