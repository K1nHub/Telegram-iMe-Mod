.class public final Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    .line 173
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewLayoutManager$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-lez p2, :cond_1

    .line 178
    iget-object p2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p2}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-le p1, p2, :cond_1

    .line 179
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->searchGIFsForNextOffset()V

    :cond_1
    return-void
.end method
