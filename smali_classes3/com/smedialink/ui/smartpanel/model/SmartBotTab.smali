.class public final Lcom/smedialink/ui/smartpanel/model/SmartBotTab;
.super Ljava/lang/Object;
.source "SmartBotTab.kt"


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation
.end field

.field private final botId:Ljava/lang/String;

.field private final botName:Ljava/lang/String;

.field private final gif:Ljava/lang/String;

.field private final iconRes:I

.field private final iconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iconUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gif"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->iconRes:I

    .line 6
    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->iconUrl:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->botId:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->botName:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->gif:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->answers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->answers:Ljava/util/List;

    return-object v0
.end method

.method public final getBotId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBotName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->botName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGif()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->gif:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconRes()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->iconRes:I

    return v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/model/SmartBotTab;->iconUrl:Ljava/lang/String;

    return-object v0
.end method
