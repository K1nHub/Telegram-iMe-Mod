.class Lorg/telegram/ui/GroupCreateActivity$2;
.super Landroid/view/ViewGroup;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;

.field private verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 520
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v2, v1, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v2, v1, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 529
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 534
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v4, v3, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 539
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 479
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->ignoreNextLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/widget/ScrollView;->layout(IIII)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 512
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0xe

    if-eqz p1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    :goto_0
    sub-int/2addr p5, p3

    .line 513
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p5, p2

    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    .line 514
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p4, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p4}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 487
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 488
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 489
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 490
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/16 v1, 0x38

    if-nez v0, :cond_1

    if-le p2, p1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    goto :goto_1

    .line 491
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/16 v2, 0x90

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    .line 496
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v4, v4, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ScrollView;->measure(II)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 500
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x3c

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 501
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->measure(II)V

    :cond_3
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1400(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-nez v0, :cond_0

    .line 473
    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    :cond_0
    return-void
.end method
