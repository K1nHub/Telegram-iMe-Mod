.class public final Lcom/iMe/ui/smartpanel/view/SmartBotContentView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/iMe/ui/smartpanel/model/SmartBotTab;Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    .line 210
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string/jumbo p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewLayoutManager$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

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

    .line 216
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p2}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-le p1, p2, :cond_1

    .line 217
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$3;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchGIFsForNextOffset()V

    :cond_1
    return-void
.end method
