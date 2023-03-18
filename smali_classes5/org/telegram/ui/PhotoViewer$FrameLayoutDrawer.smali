.class Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private captionAbove:Z

.field private ignoreLayout:Z

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 2481
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p1, 0x0

    .line 2482
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Z)V

    .line 2359
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    .line 2363
    new-instance p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;

    invoke-direct {p2, p0, p0, p1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;-><init>(Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;Landroid/view/View;Z)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 2483
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2484
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x33000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 2735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2736
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2737
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2724
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2726
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 2728
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v6

    div-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2729
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 2742
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2745
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 2746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2747
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2749
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->drawChildInternal(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 2750
    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p4

    if-eq p2, p4, :cond_2

    .line 2751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p3

    :cond_3
    :goto_0
    return v1
.end method

.method protected drawChildInternal(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 2757
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 2777
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v0

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 2790
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 2799
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    if-ne p2, v0, :cond_11

    return v3

    .line 2791
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2793
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_11

    return v3

    .line 2797
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto/16 :goto_6

    .line 2778
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2779
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2780
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto/16 :goto_6

    .line 2782
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v0

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-gt v0, v4, :cond_7

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 2783
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v4

    if-nez v4, :cond_b

    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v4

    const/16 v5, 0x50

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    if-gt v4, v5, :cond_b

    if-eqz v0, :cond_a

    goto :goto_3

    .line 2787
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto/16 :goto_6

    .line 2784
    :cond_b
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z

    return v3

    .line 2758
    :cond_c
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_d

    return v3

    .line 2760
    :cond_d
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_e

    goto :goto_5

    .line 2764
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v0

    if-nez v0, :cond_10

    .line 2765
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_10

    return v3

    .line 2761
    :cond_f
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    return v3

    .line 2769
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p2, v0, :cond_11

    .line 2770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2771
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v0, 0x7f000000

    .line 2772
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2773
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2774
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 2803
    :cond_11
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_12

    .line 2804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2805
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2806
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2807
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 2811
    :cond_12
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    if-eq p2, v0, :cond_13

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    :catchall_0
    :goto_7
    return v1
.end method

.method public notifyHeightChanged()V
    .locals 4

    .line 2854
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    .line 2855
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11100(Lorg/telegram/ui/PhotoViewer;)[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setIndexedAlpha(IFZ)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2827
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2828
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$6100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 2829
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 2830
    new-instance v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$2;-><init>(Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2847
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2848
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    .line 2849
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 2701
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$10500(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V

    .line 2703
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x437f0000    # 255.0f

    if-ge v0, v1, :cond_0

    .line 2705
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float v1, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    .line 2706
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    add-float v7, v0, v1

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2708
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float v1, v1, v2

    const v2, 0x3efef9db    # 0.498f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2709
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    if-lez v0, :cond_1

    .line 2710
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2712
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2713
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2715
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_3

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2716
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    const/4 v2, 0x0

    .line 2717
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float v3, v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    .line 2605
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 2606
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result v2

    .line 2607
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/PhotoViewer;->access$10202(Lorg/telegram/ui/PhotoViewer;I)I

    const/16 v3, 0x14

    .line 2608
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v4, v1, :cond_13

    .line 2611
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2612
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto/16 :goto_d

    .line 2616
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v5

    if-ne v3, v5, :cond_2

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    goto :goto_1

    .line 2621
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    add-int v5, p2, v5

    .line 2622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    sub-int v6, p4, v6

    .line 2623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, p5, v7

    .line 2625
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2627
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 2628
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 2633
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    const/16 v11, 0x33

    :cond_3
    and-int/lit8 v12, v11, 0x7

    and-int/lit8 v11, v11, 0x70

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v12, v14, :cond_5

    if-eq v12, v13, :cond_4

    .line 2650
    iget v6, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_4
    sub-int/2addr v6, v5

    sub-int/2addr v6, v9

    .line 2646
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int/2addr v6, v5

    sub-int/2addr v6, v9

    .line 2643
    div-int/lit8 v6, v6, 0x2

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v6, v12

    :goto_3
    const/16 v12, 0x10

    if-eq v11, v12, :cond_7

    const/16 v12, 0x50

    if-eq v11, v12, :cond_6

    .line 2661
    iget v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_6
    sub-int/2addr v7, v2

    sub-int v7, v7, p3

    sub-int/2addr v7, v10

    .line 2658
    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    :cond_7
    sub-int/2addr v7, v2

    sub-int v7, v7, p3

    sub-int/2addr v7, v10

    .line 2655
    div-int/lit8 v7, v7, 0x2

    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v11

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int/2addr v7, v8

    .line 2665
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    if-ne v3, v8, :cond_8

    .line 2666
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    :goto_6
    sub-int/2addr v7, v8

    goto/16 :goto_c

    .line 2667
    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2668
    sget-boolean v7, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v7, :cond_9

    .line 2669
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_7

    .line 2671
    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v7

    goto/16 :goto_c

    .line 2673
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v8

    if-ne v3, v8, :cond_b

    .line 2674
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    :goto_7
    add-int/2addr v7, v8

    goto/16 :goto_c

    .line 2675
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v8

    if-eq v3, v8, :cond_e

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v8

    if-ne v3, v8, :cond_c

    goto :goto_8

    .line 2685
    :cond_c
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v8

    if-ne v3, v8, :cond_d

    .line 2686
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 2687
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-ne v8, v14, :cond_12

    const/16 v8, 0x34

    .line 2688
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_6

    .line 2690
    :cond_d
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$10400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v8

    if-ne v3, v8, :cond_12

    .line 2691
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    const/16 v11, 0x1f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v8, v11

    goto/16 :goto_6

    .line 2678
    :cond_e
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f

    .line 2679
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_9

    .line 2681
    :cond_f
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    .line 2684
    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    const/4 v11, 0x4

    if-eq v8, v11, :cond_11

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-ne v8, v13, :cond_10

    goto :goto_a

    :cond_10
    const/16 v8, 0xf

    goto :goto_b

    :cond_11
    :goto_a
    const/16 v8, 0x28

    :goto_b
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_6

    :cond_12
    :goto_c
    add-int v8, v6, v5

    add-int/2addr v6, v9

    add-int/2addr v6, v5

    add-int/2addr v10, v7

    .line 2693
    invoke-virtual {v3, v8, v7, v6, v10}, Landroid/view/View;->layout(IIII)V

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2696
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v6, p0

    .line 2489
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 2490
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2491
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_0

    .line 2492
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    move v8, v0

    .line 2495
    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 2497
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_3

    .line 2498
    iput-boolean v9, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 2499
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2500
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 2501
    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2502
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 2504
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2505
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2507
    :goto_1
    iput-boolean v10, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 2510
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2511
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    .line 2513
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v12, 0x8

    if-eq v0, v12, :cond_4

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    move v13, v0

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 2516
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_7

    .line 2517
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2518
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2519
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2520
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2522
    iput-boolean v9, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 2523
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    if-ge v8, v7, :cond_5

    .line 2524
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 2525
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2528
    :cond_5
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2529
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2532
    :cond_6
    :goto_3
    iput-boolean v10, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    move v14, v0

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    .line 2537
    :goto_4
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2538
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->access$9602(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)I

    .line 2539
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->access$9702(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)I

    .line 2542
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v7, v0

    .line 2543
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v8, v0

    .line 2545
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v15

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v15, :cond_1b

    .line 2547
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2548
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_1a

    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    if-eq v1, v0, :cond_1a

    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    if-ne v1, v0, :cond_9

    goto/16 :goto_a

    .line 2551
    :cond_9
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_b

    .line 2552
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move/from16 v4, p1

    .line 2553
    invoke-virtual {v1, v4, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a

    :cond_b
    move/from16 v4, p1

    .line 2554
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    if-ne v1, v0, :cond_f

    .line 2557
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2558
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    .line 2559
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    goto :goto_7

    .line 2561
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v0

    .line 2562
    iget-object v1, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v1

    :goto_7
    if-eqz v0, :cond_d

    if-nez v1, :cond_e

    :cond_d
    move v0, v7

    move v1, v8

    .line 2568
    :cond_e
    iget-object v3, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    goto/16 :goto_a

    .line 2569
    :cond_f
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2570
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2571
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v8, v11

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a

    .line 2572
    :cond_10
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v0, :cond_12

    .line 2573
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2574
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v3, 0x140

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v16, v8, v11

    sget v17, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v12, v16, v17

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a

    .line 2576
    :cond_11
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v8, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v12

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a

    .line 2579
    :cond_12
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_a

    .line 2581
    :cond_13
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v0

    if-ne v1, v0, :cond_19

    .line 2583
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2584
    iget-boolean v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    if-eqz v0, :cond_17

    add-int v0, v13, v14

    goto :goto_8

    .line 2587
    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_15

    if-le v8, v7, :cond_16

    :cond_15
    add-int v0, v13, v14

    .line 2589
    iput-boolean v9, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    goto :goto_8

    .line 2591
    :cond_16
    iput-boolean v10, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    :cond_17
    move v0, v13

    .line 2593
    :goto_8
    iget-object v3, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    :goto_9
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    add-int/2addr v3, v12

    sub-int v3, v8, v3

    sub-int/2addr v3, v0

    .line 2595
    iget-object v12, v6, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2596
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v16, v5

    move v5, v12

    .line 2598
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_b

    :cond_1a
    :goto_a
    move/from16 v16, v5

    :goto_b
    add-int/lit8 v5, v16, 0x1

    const/16 v12, 0x8

    goto/16 :goto_5

    :cond_1b
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2819
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2822
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
