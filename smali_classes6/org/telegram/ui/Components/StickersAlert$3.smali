.class Lorg/telegram/ui/Components/StickersAlert$3;
.super Landroid/widget/FrameLayout;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fullHeight:Z

.field private lastNotifyWidth:I

.field private rect:Landroid/graphics/RectF;

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 569
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$2500(Lorg/telegram/ui/Components/StickersAlert;I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 673
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/StickersAlert;->access$2600(Lorg/telegram/ui/Components/StickersAlert;I)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 674
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->statusBarOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 675
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$2700(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$2800(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 684
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/16 v6, 0x15

    if-lt v2, v6, :cond_2

    .line 685
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v2

    .line 688
    iget-boolean v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->fullHeight:Z

    if-eqz v2, :cond_2

    .line 689
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$2900(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v7, v6, 0x2

    if-ge v2, v7, :cond_0

    mul-int/lit8 v2, v6, 0x2

    sub-int/2addr v2, v1

    .line 690
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$3000(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v7

    sub-int/2addr v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v2, v5

    int-to-float v2, v2

    .line 692
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v4, v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 694
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$3100(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v6, v7, :cond_1

    sub-int v6, v7, v1

    .line 695
    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickersAlert;->access$3200(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v3

    move v2, v4

    .line 700
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$3300(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v3, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$3400(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v7, v2, v4

    if-eqz v7, :cond_3

    .line 704
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/StickersAlert;->access$3500(Lorg/telegram/ui/Components/StickersAlert;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickersAlert;->access$3600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/StickersAlert;->access$3700(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/StickersAlert;->access$3800(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/StickersAlert;->access$3900(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v11

    add-int/2addr v11, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v11, v1

    int-to-float v1, v11

    invoke-virtual {v7, v8, v9, v10, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 706
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 709
    :cond_3
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/16 v1, 0x24

    .line 711
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/2addr v7, v5

    int-to-float v7, v7

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    div-int/2addr v9, v5

    int-to-float v1, v9

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v0

    int-to-float v9, v9

    invoke-virtual {v2, v7, v8, v1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 713
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/StickersAlert;->access$4000(Lorg/telegram/ui/Components/StickersAlert;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 717
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/2addr v0, v5

    if-le v6, v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickersAlert$3;->updateLightStatusBar(Z)V

    if-lez v6, :cond_5

    .line 719
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/StickersAlert;->access$4100(Lorg/telegram/ui/Components/StickersAlert;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$4200(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    int-to-float v8, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v6

    int-to-float v9, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$4300(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v10, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v11, v0

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 578
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 649
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 650
    iput v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->lastNotifyWidth:I

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1700(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 655
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->access$2400(Lorg/telegram/ui/Components/StickersAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 588
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$702(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/StickersAlert;->access$702(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    const/16 v3, 0x3c

    const/16 v4, 0x24

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 597
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 599
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    const/16 v6, 0x2d

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    div-int/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v5, v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1302(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v5, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v4

    div-int/2addr v5, v4

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1402(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1400(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1502(Lorg/telegram/ui/Components/StickersAlert;I)I

    goto :goto_1

    .line 603
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1302(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v5, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v4

    div-int/2addr v5, v4

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1402(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    const/16 v4, 0x52

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1502(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 607
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v0

    int-to-float v0, v0

    .line 609
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 610
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x3

    const/16 v7, 0x30

    const/16 v8, 0x8

    if-eqz v5, :cond_4

    .line 611
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1500(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1600(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    add-int/2addr v3, v0

    goto/16 :goto_4

    .line 612
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1700(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 613
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1700(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$1200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1800(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1500(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$1900(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_4

    .line 615
    :cond_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v6, 0x2

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1500(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2000(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_2

    .line 617
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    if-eqz v0, :cond_8

    int-to-float v0, v3

    .line 618
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$1500(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v3, v0

    .line 620
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0x270f

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/widget/TextView;->measure(II)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_9
    int-to-double v4, v3

    int-to-float v0, p2

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    const-wide v9, 0x400999999999999aL    # 3.2

    mul-double/2addr v6, v9

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :goto_5
    if-eqz v0, :cond_b

    if-ge v3, p2, :cond_b

    sub-int v4, p2, v3

    sub-int/2addr v0, v4

    :cond_b
    if-nez v0, :cond_c

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2200(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    .line 631
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_d

    const/16 v4, 0x20

    .line 632
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 634
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1700(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 635
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 637
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-eq v4, v0, :cond_f

    .line 638
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/StickersAlert;->access$702(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v4, v6, v0, v5, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 640
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/StickersAlert;->access$702(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    :cond_f
    if-lt v3, p2, :cond_10

    goto :goto_6

    :cond_10
    move v1, v2

    .line 643
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->fullHeight:Z

    .line 644
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

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

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 664
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
