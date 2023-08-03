.class Lorg/telegram/ui/DialogsActivity$34;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->lambda$createView$50(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 6731
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 1

    .line 6754
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findSelfStoryCell()Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    return-object v0
.end method

.method public preLayout(Ljava/lang/Runnable;)V
    .locals 3

    .line 6734
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6735
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZ)V

    .line 6736
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 6737
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$41600(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6738
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollToFirstCell()V

    .line 6739
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$34$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/DialogsActivity$34$1;-><init>(Lorg/telegram/ui/DialogsActivity$34;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 6748
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
