.class public final Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;
.super Ljava/lang/Object;
.source "TabBotMediaAnswerItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabBotMediaAnswerItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabBotMediaAnswerItem.kt\ncom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1549#2:18\n1620#2,3:19\n*S KotlinDebug\n*F\n+ 1 TabBotMediaAnswerItem.kt\ncom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion\n*L\n14#1:18\n14#1:19,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 14
    new-instance v2, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    sget-object v3, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-direct {v2, v3, v1}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;-><init>(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
