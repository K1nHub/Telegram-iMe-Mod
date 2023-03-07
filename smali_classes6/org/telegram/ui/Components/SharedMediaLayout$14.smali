.class Lorg/telegram/ui/Components/SharedMediaLayout$14;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V
    .locals 0

    .line 2419
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 2422
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 2427
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-static {p2, v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4400(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    if-eqz p3, :cond_1

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2429
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5100(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :cond_1
    const/4 p1, 0x1

    if-eqz p3, :cond_2

    .line 2431
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    if-nez p2, :cond_2

    .line 2432
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    .line 2434
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkSection(Z)V

    .line 2435
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p2, :cond_3

    .line 2436
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2438
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$14;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->invalidateBlur()V

    return-void
.end method
