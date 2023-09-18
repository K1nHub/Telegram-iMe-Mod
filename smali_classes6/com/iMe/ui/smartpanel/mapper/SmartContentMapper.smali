.class public final Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;
.super Ljava/lang/Object;
.source "SmartContentMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartContentMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartContentMapper.kt\ncom/iMe/ui/smartpanel/mapper/SmartContentMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1855#2,2:60\n1549#2:62\n1620#2,3:63\n*S KotlinDebug\n*F\n+ 1 SmartContentMapper.kt\ncom/iMe/ui/smartpanel/mapper/SmartContentMapper\n*L\n16#1:60,2\n49#1:62\n49#1:63,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final responseToContentItems(Lcom/iMe/bots/domain/model/SmartBotResponse;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getAnswers()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 50
    new-instance v2, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;

    .line 51
    sget-object v4, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 52
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {p1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getLink()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/iMe/ui/smartpanel/model/content/TabBotAnswerItem;-><init>(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
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
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartBotTab;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/bots/domain/model/SmartBotResponse;

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v2, Lcom/iMe/ui/smartpanel/model/content/TabBotNameItem;

    .line 22
    sget-object v3, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 23
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getName()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-direct {v2, v3, v4}, Lcom/iMe/ui/smartpanel/model/content/TabBotNameItem;-><init>(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;Ljava/lang/String;)V

    .line 20
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-direct {p0, v1}, Lcom/iMe/ui/smartpanel/mapper/SmartContentMapper;->responseToContentItems(Lcom/iMe/bots/domain/model/SmartBotResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_1

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    :cond_1
    new-instance v9, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 32
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getLocalAvatar()I

    move-result v3

    .line 33
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getRemoteAvatar()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getId()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getName()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotResponse;->getGif()Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    .line 31
    invoke-direct/range {v2 .. v8}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
