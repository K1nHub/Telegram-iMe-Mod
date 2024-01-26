.class public Lorg/telegram/ui/Components/AnimatedTextView;
.super Landroid/view/View;
.source "AnimatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    }
.end annotation


# instance fields
.field public adaptWidth:Z

.field private final drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private first:Z

.field private lastMaxWidth:I

.field private maxWidth:I

.field private toSetMoveDown:Z

.field private toSetText:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$W4WyzEehv_tm_0buAg7soRbak7s(Lorg/telegram/ui/Components/AnimatedTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 932
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 0

    .line 936
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 929
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 997
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->first:Z

    .line 937
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 938
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 939
    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedTextView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOnAnimationFinishListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 942
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetMoveDown:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    const/4 v0, 0x0

    .line 943
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 944
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetMoveDown:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    return-void
.end method

.method public getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 1

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 2

    .line 1030
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1068
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1074
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.TextView"

    .line 1075
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1076
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 955
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 956
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 957
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->maxWidth:I

    if-lez v1, :cond_0

    .line 958
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 960
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->lastMaxWidth:I

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 962
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 964
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->lastMaxWidth:I

    .line 965
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_2

    .line 966
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p1

    .line 968
    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V
    .locals 7

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    return-void
.end method

.method public setIgnoreRTL(Z)V
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 950
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->maxWidth:I

    return-void
.end method

.method public setRightPadding(F)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 978
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 982
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 7

    .line 999
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->first:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1000
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->first:Z

    if-eqz p2, :cond_2

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->access$800(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->access$400(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->access$400(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->access$402(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1007
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetText:Ljava/lang/CharSequence;

    .line 1009
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView;->toSetMoveDown:Z

    return-void

    .line 1013
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result v0

    float-to-int v0, v0

    .line 1014
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/AnimatedTextView;->lastMaxWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1015
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    int-to-float p1, v0

    .line 1016
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result p3

    cmpg-float p3, p1, p3

    if-ltz p3, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    .line 1017
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 1039
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public width()I
    .locals 3

    .line 1022
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView;->drawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
