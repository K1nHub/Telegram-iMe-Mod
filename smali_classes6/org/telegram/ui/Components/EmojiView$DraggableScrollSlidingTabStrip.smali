.class Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;
.super Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraggableScrollSlidingTabStrip"
.end annotation


# instance fields
.field private downX:F

.field private downY:F

.field private draggingHorizontally:Z

.field private draggingVertically:Z

.field private first:Z

.field private lastTranslateX:F

.field private lastX:F

.field private startedScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private final touchSlop:I

.field private vTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1491
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1492
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 1486
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->first:Z

    .line 1493
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->touchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1498
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1501
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1502
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1504
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1505
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downX:F

    .line 1507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    goto :goto_0

    .line 1509
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 1511
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragStart()V

    .line 1514
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-eqz p1, :cond_3

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 1516
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    :cond_3
    return v1

    .line 1522
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1530
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->first:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1531
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->first:Z

    .line 1532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastX:F

    .line 1534
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1535
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$5702(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 1537
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1538
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downX:F

    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    goto/16 :goto_0

    .line 1542
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1544
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$702(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$102(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    goto :goto_0

    .line 1553
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    .line 1554
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragStart()V

    .line 1557
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-eqz v0, :cond_6

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 1559
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    .line 1565
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const-wide/16 v3, 0x5dc

    const/4 v5, 0x3

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1566
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1569
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1570
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1572
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    if-eqz v0, :cond_f

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1574
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    .line 1576
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_c

    goto :goto_1

    .line 1590
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->downY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDrag(I)V

    goto :goto_3

    .line 1578
    :cond_d
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1580
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    .line 1581
    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->vTracker:Landroid/view/VelocityTracker;

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 1583
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragEnd(F)V

    goto :goto_2

    .line 1585
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragCancel()V

    .line 1587
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->first:Z

    .line 1588
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1592
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->cancelLongPress()V

    return v2

    .line 1595
    :cond_f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getTranslationX()F

    move-result v0

    .line 1596
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_11

    .line 1597
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-nez v4, :cond_10

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    cmpg-float v4, v4, v3

    if-gez v4, :cond_10

    .line 1598
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1599
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    .line 1600
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastTranslateX:F

    goto :goto_4

    .line 1602
    :cond_10
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-eqz v4, :cond_11

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    cmpl-float v3, v4, v3

    if-lez v3, :cond_11

    .line 1603
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1604
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 1605
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    .line 1609
    :cond_11
    :goto_4
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-eqz v3, :cond_12

    .line 1610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1613
    :try_start_0
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastTranslateX:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1616
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1620
    :catch_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    .line 1621
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1624
    :cond_12
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->lastX:F

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_14

    .line 1626
    :cond_13
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->first:Z

    .line 1627
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingHorizontally:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->draggingVertically:Z

    .line 1628
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-eqz v0, :cond_14

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 1630
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    .line 1633
    :cond_14
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;->startedScroll:Z

    if-nez v0, :cond_15

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    return v1
.end method
