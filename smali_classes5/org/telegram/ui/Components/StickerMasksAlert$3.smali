.class Lorg/telegram/ui/Components/StickerMasksAlert$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field lineDrawablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

.field unusedArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field

.field unusedLineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field viewsGroupedByLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 511
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 512
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    .line 513
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 514
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    .line 515
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 3

    .line 502
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 519
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 521
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 522
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 524
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 527
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 528
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 529
    instance-of v3, v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    if-eqz v3, :cond_3

    .line 530
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 531
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 533
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 534
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_2

    .line 536
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 538
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    :cond_2
    check-cast v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v1, 0x0

    .line 549
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_a

    .line 550
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 552
    iget v5, v4, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->position:I

    const/4 v6, 0x0

    .line 554
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 555
    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    iget v7, v7, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->position:I

    if-ne v7, v5, :cond_5

    .line 556
    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    .line 557
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move-object v7, v3

    :goto_5
    if-nez v7, :cond_8

    .line 562
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    goto :goto_6

    .line 565
    :cond_7
    new-instance v6, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {v6, v7, v3}, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Lorg/telegram/ui/Components/StickerMasksAlert$1;)V

    move-object v3, v6

    .line 567
    :goto_6
    iput v5, v3, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->position:I

    .line 568
    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    goto :goto_7

    :cond_8
    move-object v3, v7

    .line 570
    :goto_7
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iput-object v2, v3, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 573
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->startOffset:I

    .line 575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v5

    .line 576
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v7, v2, v4

    if-lez v6, :cond_9

    if-lez v7, :cond_9

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v3

    move-object v3, p1

    move-wide v4, v9

    .line 578
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 580
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 583
    :cond_a
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_c

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_b

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    iput-object v3, p1, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_9

    .line 589
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 592
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 507
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2300(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$3;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    .line 508
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
