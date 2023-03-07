.class public final Lcom/smedialink/storage/data/mapper/catalog/ChannelMappingKt;
.super Ljava/lang/Object;
.source "ChannelMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;)Lcom/smedialink/storage/domain/model/catalog/Channel;
    .locals 16

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/Channel;

    .line 9
    sget-object v2, Lcom/smedialink/storage/domain/model/catalog/ChatType;->Companion:Lcom/smedialink/storage/domain/model/catalog/ChatType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getChatType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/catalog/ChatType$Companion;->getByName(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/catalog/ChatType;

    move-result-object v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getId()J

    move-result-wide v5

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getMembersCount()J

    move-result-wide v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getPhoto()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getShortname()Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getTelegramId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getTitle()Ljava/lang/String;

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getUpdatedAt()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;->getVerified()Z

    move-result v15

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v15}, Lcom/smedialink/storage/domain/model/catalog/Channel;-><init>(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
