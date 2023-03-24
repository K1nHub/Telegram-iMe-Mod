.class Lorg/telegram/ui/ActionBar/AlertDialog$1;
.super Landroid/widget/LinearLayout;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private inLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$JIrJ56APQSM_xO6XCF5kj8j2lPQ(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$LrG0oNVDTcRRjFaRp8TC8_lMnO4(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->lambda$onLayout$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 547
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 548
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic lambda$onLayout$1()V
    .locals 5

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    if-ge v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 5

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1802(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 480
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 482
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1be

    .line 484
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f0

    .line 486
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x164

    .line 489
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 492
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 493
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 494
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 495
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 497
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 499
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3000(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2300(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3200(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 598
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2300(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2400(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    .line 555
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 557
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 558
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 559
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float/2addr v6, v5

    .line 561
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    div-float/2addr v7, v5

    .line 562
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 558
    invoke-virtual {v3, v4, v6, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 565
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 566
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 570
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->blurPaintAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v2, :cond_2

    .line 572
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    mul-float v5, v1, v4

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 573
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v0, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 577
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    if-nez v2, :cond_3

    .line 578
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 579
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v5, -0x1000000

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2700(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    :cond_3
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v2, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 584
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2800(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2900(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v6

    sub-float/2addr v6, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 588
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 p1, 0x0

    return p1

    .line 364
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 508
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sub-int/2addr p4, p2

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p1

    if-nez p1, :cond_1

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 522
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 525
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2000(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2000(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget p2, p2, p3

    neg-int p2, p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2000(Lorg/telegram/ui/ActionBar/AlertDialog;)[I

    move-result-object p3

    const/4 p4, 0x1

    aget p3, p3, p4

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x56

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 371
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    .line 374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 375
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 377
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 378
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x30

    .line 380
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 381
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 384
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 385
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    .line 387
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 388
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 389
    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x18

    .line 390
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v2, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 393
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 394
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    sub-int v5, v0, v7

    goto :goto_1

    :cond_3
    move v5, v0

    .line 397
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    .line 398
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v9, p2}, Landroid/widget/TextView;->measure(II)V

    .line 400
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v9, 0x8

    if-eqz v7, :cond_6

    .line 401
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 402
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v10, p2}, Landroid/widget/TextView;->measure(II)V

    goto :goto_2

    .line 404
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 407
    :cond_6
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 408
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 409
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 410
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    iget v11, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    sub-int/2addr v5, v10

    .line 412
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 413
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 414
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    iget v10, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p2

    sub-int/2addr v5, v7

    .line 417
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 418
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p2, v2, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 419
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v5, p2

    .line 421
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 424
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1000(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result p2

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    if-nez p2, :cond_a

    int-to-float p2, p1

    const/high16 v2, 0x446a0000    # 936.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x43b10000    # 354.0f

    goto :goto_3

    :cond_a
    int-to-float p2, p1

    .line 428
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1000(Lorg/telegram/ui/ActionBar/AlertDialog;)F

    move-result v2

    :goto_3
    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 430
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v2

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v2, v7, v10}, Landroid/view/View;->measure(II)V

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v5, p2

    .line 434
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p2

    if-nez p2, :cond_13

    .line 435
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v9, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_c

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_4

    :cond_c
    move v1, v6

    :goto_4
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_5

    :cond_d
    move v1, v6

    :goto_5
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    .line 440
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v9, :cond_f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_6

    :cond_f
    move v1, v6

    :goto_6
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 442
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    .line 443
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 444
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_11

    const/16 v1, 0x13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_7

    :cond_11
    move v1, v6

    :goto_7
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x14

    .line 445
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 448
    :cond_12
    :goto_8
    iget v1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    .line 449
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/ScrollView;->measure(II)V

    .line 450
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v5, p2

    goto/16 :goto_b

    .line 452
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 453
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 454
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v4, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_9
    add-int/2addr v2, p2

    sub-int/2addr v5, v2

    goto :goto_a

    .line 456
    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 457
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 458
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, v9, :cond_15

    .line 459
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget v4, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    .line 463
    :cond_15
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 464
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 465
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    .line 468
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 469
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    sub-int/2addr v5, v1

    :cond_16
    :goto_b
    sub-int/2addr v0, v5

    .line 474
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1700(Lorg/telegram/ui/ActionBar/AlertDialog;)Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_c

    :cond_17
    move p2, v6

    :goto_c
    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 475
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1800(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-eq p1, p2, :cond_18

    .line 478
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_18
    :goto_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 536
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
