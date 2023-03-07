.class public final Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/smedialink/ui/smartpanel/model/SmartBotTab;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    .line 184
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getItem(I)Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$4;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewLayoutManager$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    return p1
.end method
