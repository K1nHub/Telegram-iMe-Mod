.class Lorg/telegram/ui/Components/BotWebViewSheet$4;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "BotWebViewSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 528
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 556
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result v0

    .line 557
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2600(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v3, v0

    .line 562
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/16 v2, 0xc

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_1

    .line 563
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-static {v1, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_1
    move v9, v0

    .line 564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v3, v3, v0, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v8, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 570
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 587
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 588
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$4$1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$4;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 598
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 599
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 533
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2800(Lorg/telegram/ui/Components/BotWebViewSheet;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 540
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2900(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 542
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3000(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1100(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x10

    .line 543
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result v2

    sub-float/2addr v4, v2

    :goto_0
    mul-float/2addr v1, v4

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result v5

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3000(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 579
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$4;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->onCheckDismissByUser()Z

    const/4 p1, 0x1

    return p1

    .line 582
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
