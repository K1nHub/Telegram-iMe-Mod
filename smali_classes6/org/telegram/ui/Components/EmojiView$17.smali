.class Lorg/telegram/ui/Components/EmojiView$17;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private wasMeasured:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2225
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2232
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    .line 2233
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 2247
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->getItemCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2248
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$17;->ignoreLayout:Z

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2250
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 2252
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$9402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2253
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$17;->ignoreLayout:Z

    .line 2255
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2256
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2238
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 2239
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->wasMeasured:Z

    if-nez p1, :cond_0

    .line 2240
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    .line 2241
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->wasMeasured:Z

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2261
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$17;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2264
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
