.class Lorg/telegram/ui/Components/MentionsContainerView$4;
.super Ljava/lang/Object;
.source "MentionsContainerView.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JILorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MentionsContainerView;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$602(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$000(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->canOpen()Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p1

    .line 201
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    return-void
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    return-void
.end method

.method public onContextSearch(Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->onContextSearch(Z)V

    return-void
.end method

.method public onItemCountUpdate(II)V
    .locals 2

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$000(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$400(Lorg/telegram/ui/Components/MentionsContainerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$500(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$500(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView$4;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-boolean p2, p2, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
