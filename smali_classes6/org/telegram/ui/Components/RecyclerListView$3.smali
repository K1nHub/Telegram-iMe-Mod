.class Lorg/telegram/ui/Components/RecyclerListView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 11

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->access$2600(Lorg/telegram/ui/Components/RecyclerListView;I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1439
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$600(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1442
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1202(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1444
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1446
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$500(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1448
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1450
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$600(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1451
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1452
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$600(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v1

    .line 1453
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$600(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 1454
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$602(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 1455
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1456
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1302(Lorg/telegram/ui/Components/RecyclerListView;Z)Z

    .line 1458
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1459
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1461
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iput-boolean v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz v0, :cond_5

    .line 1463
    iput-boolean v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1472
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1473
    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    neg-int p2, p2

    neg-int v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1474
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1475
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 1477
    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1479
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->checkSection(Z)V

    if-eqz p3, :cond_2

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1481
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    :cond_2
    return-void
.end method
