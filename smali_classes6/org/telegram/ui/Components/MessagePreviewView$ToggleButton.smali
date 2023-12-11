.class Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;
.super Landroid/view/View;
.source "MessagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleButton"
.end annotation


# instance fields
.field private first:Z

.field iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

.field private isState1:Z

.field final minWidth:I

.field final text1:Ljava/lang/String;

.field final text2:Ljava/lang/String;

.field textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 2569
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 2559
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->first:Z

    .line 2571
    iput-object p4, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->text1:Ljava/lang/String;

    .line 2572
    iput-object p6, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->text2:Ljava/lang/String;

    .line 2574
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2576
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, p2, p2, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 2577
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v2, 0x3eb33333    # 0.35f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2581
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 2582
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    .line 2583
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    :cond_0
    const/16 p2, 0x4d

    .line 2585
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p6

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    add-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->minWidth:I

    .line 2586
    iget-object p4, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 2588
    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    invoke-direct {p2, p1, p0, p3, p5}, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/view/View;II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    .line 2589
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result p1

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p1, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2609
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x3b

    const/16 v2, 0x29

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    .line 2611
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v6, v2

    .line 2612
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    .line 2613
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 2614
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 2610
    invoke-virtual {v0, v6, v2, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2616
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 2619
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 2620
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2616
    invoke-virtual {v0, v4, v4, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 2623
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    .line 2624
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2625
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 2626
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2627
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 2623
    invoke-virtual {v0, v3, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2629
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 2630
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 2632
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2633
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 2629
    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 2637
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 2643
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_0

    .line 2647
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->minWidth:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 2648
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->minWidth:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2645
    :goto_0
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 p2, 0x30

    .line 2651
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2644
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2657
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 2660
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setState(ZZ)V
    .locals 4

    .line 2593
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->first:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->isState1:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2596
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->isState1:Z

    .line 2597
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->text1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->text2:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 2598
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->iconDrawable:Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->setState(ZZ)V

    .line 2599
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->first:Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
