.class Lorg/telegram/ui/ProfileActivity$30;
.super Lorg/telegram/ui/PinchToZoomHelper;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field statusBarPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 4668
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/PinchToZoomHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected drawOverlays(Landroid/graphics/Canvas;FFFFF)V
    .locals 6

    const/4 p3, 0x0

    cmpl-float p4, p2, p3

    if-lez p4, :cond_7

    .line 4692
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p6}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p6

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p6, v0

    int-to-float p6, p6

    invoke-virtual {p4, p3, p3, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float p5, p5, p2

    float-to-int p5, p5

    const/16 p6, 0x1f

    .line 4693
    invoke-virtual {p1, p4, p5, p6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 4695
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$12100(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4697
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$16700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result p4

    if-eqz p4, :cond_1

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->noStatusBar:Z

    if-nez p4, :cond_1

    .line 4698
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->statusBarPaint:Landroid/graphics/Paint;

    if-nez p4, :cond_0

    .line 4699
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->statusBarPaint:Landroid/graphics/Paint;

    const/high16 p5, -0x1000000

    const/16 p6, 0x33

    .line 4700
    invoke-static {p5, p6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4702
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$16800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$16900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$17000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getX()F

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$17100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    add-float v3, p4, p5

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$17200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getY()F

    move-result p4

    sget p5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p5, p5

    add-float v4, p4, p5

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$30;->statusBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4704
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4705
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$17300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getX()F

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$17400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getY()F

    move-result p5

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4706
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$17500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x2

    if-ge p4, p5, :cond_6

    .line 4710
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p5

    if-nez p5, :cond_2

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getAlpha()F

    move-result p5

    cmpl-float p5, p5, p3

    if-lez p5, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    const/4 p5, 0x1

    if-ne p4, p5, :cond_5

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    if-eqz p5, :cond_5

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageView;->getAlpha()F

    move-result p5

    cmpl-float p5, p5, p3

    if-lez p5, :cond_5

    .line 4711
    :cond_3
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-nez p4, :cond_4

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p5

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object p5

    .line 4712
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float v0, p2, p6

    add-float/2addr v0, p6

    .line 4714
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result p6

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p6, v1

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v0, p6, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4715
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result p6

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, p6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4716
    invoke-virtual {p5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    .line 4720
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method protected invalidateViews()V
    .locals 2

    .line 4674
    invoke-super {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    .line 4675
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16600(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 4676
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4677
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4679
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4680
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 4683
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4684
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method protected zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 1

    .line 4726
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/PinchToZoomHelper;->zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 4729
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method
