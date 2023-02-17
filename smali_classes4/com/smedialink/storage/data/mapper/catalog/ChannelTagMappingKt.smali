.class public final Lcom/smedialink/storage/data/mapper/catalog/ChannelTagMappingKt;
.super Ljava/lang/Object;
.source "ChannelTagMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelTagResponse;)Lcom/smedialink/storage/domain/model/catalog/ChannelTag;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/ChannelTag;

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelTagResponse;->getId()J

    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelTagResponse;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/catalog/ChannelTag;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
