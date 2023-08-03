.class Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MentionsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->access$702(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Z)Z

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-ne p2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->access$802(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Z)Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p2, p2, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 624
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$900(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    move p3, p1

    :goto_1
    if-lez p3, :cond_2

    .line 627
    iget-object p3, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x5

    if-le p1, p3, :cond_2

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotForNextOffset()V

    .line 631
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/MentionsContainerView;->onScrolled(ZZ)V

    return-void
.end method
