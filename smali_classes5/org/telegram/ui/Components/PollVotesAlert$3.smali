.class Lorg/telegram/ui/Components/PollVotesAlert$3;
.super Landroid/widget/FrameLayout;
.source "PollVotesAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 590
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 591
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/16 v0, 0xd

    .line 660
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 662
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    int-to-float v1, v1

    .line 663
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    const/16 v2, 0x14

    .line 665
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 667
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1900(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    add-int/2addr v3, v4

    .line 670
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2000(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_1

    .line 671
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 672
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2100(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 673
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    mul-float v5, v5, v4

    float-to-int v0, v5

    sub-int/2addr v1, v0

    sub-int/2addr v2, v0

    add-int/2addr v3, v0

    sub-float v0, v7, v4

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 682
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 683
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v4

    add-int/2addr v2, v4

    .line 687
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4, v5, v1, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 688
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string v3, "dialogBackground"

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    .line 691
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 692
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2300(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2400(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2600(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    int-to-float v1, v10

    invoke-virtual {v4, v5, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/16 v1, 0x24

    .line 698
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 699
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v8, 0x2

    div-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v9, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    div-int/2addr v10, v8

    int-to-float v1, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v4, v5, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v1, "key_sheet_scrollUp"

    .line 700
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 701
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 702
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float v2, v2, v7

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 707
    :cond_4
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    .line 708
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 709
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2700(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$2800(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 642
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 632
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 595
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 596
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$600(Lorg/telegram/ui/Components/PollVotesAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$700(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    invoke-virtual {p0, v1, v4, v5, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 599
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    .line 603
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 604
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 606
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$900(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 607
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 609
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v4, v5

    .line 610
    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->getSectionCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v5, :cond_2

    if-nez v6, :cond_1

    .line 613
    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v8, v7, p2}, Landroid/widget/TextView;->measure(II)V

    .line 614
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 616
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->getCountForSection(I)I

    move-result v7

    const/16 v8, 0x20

    .line 617
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v9, 0x32

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v7, v2

    mul-int v9, v9, v7

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ge v4, v1, :cond_3

    sub-int/2addr v1, v4

    goto :goto_2

    .line 620
    :cond_3
    div-int/lit8 p2, v1, 0x5

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr v1, p2

    :goto_2
    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v1, p2

    .line 621
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 622
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 623
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    neg-int v2, v1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 624
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 625
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 627
    :cond_4
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
