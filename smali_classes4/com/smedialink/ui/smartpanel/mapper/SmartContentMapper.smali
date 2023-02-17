.class public final Lcom/smedialink/ui/smartpanel/mapper/SmartContentMapper;
.super Ljava/lang/Object;
.source "SmartContentMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartContentMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartContentMapper.kt\ncom/smedialink/ui/smartpanel/mapper/SmartContentMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1849#2,2:55\n1547#2:57\n1618#2,3:58\n*S KotlinDebug\n*F\n+ 1 SmartContentMapper.kt\ncom/smedialink/ui/smartpanel/mapper/SmartContentMapper\n*L\n16#1:55,2\n44#1:57\n44#1:58,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final responseToContentItems(Lcom/smedialink/bots/domain/model/SmartBotResponse;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/domain/model/SmartBotResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getAnswers()Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 45
    new-instance v2, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;

    .line 46
    sget-object v4, Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 47
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getLink()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    .line 45
    invoke-direct/range {v3 .. v8}, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;-><init>(Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final mapToTabs(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotResponse;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/smedialink/ui/smartpanel/model/SmartBotTab;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1849
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/bots/domain/model/SmartBotResponse;

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v2, Lcom/smedialink/ui/smartpanel/model/content/TabBotNameItem;

    sget-object v3, Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/smedialink/ui/smartpanel/model/content/TabBotNameItem;-><init>(Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent$Type;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0, v1}, Lcom/smedialink/ui/smartpanel/mapper/SmartContentMapper;->responseToContentItems(Lcom/smedialink/bots/domain/model/SmartBotResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_2

    if-nez p2, :cond_1

    .line 24
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    :cond_2
    new-instance v9, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;

    .line 27
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getLocalAvatar()I

    move-result v3

    .line 28
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getRemoteAvatar()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getName()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v1}, Lcom/smedialink/bots/domain/model/SmartBotResponse;->getGif()Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
