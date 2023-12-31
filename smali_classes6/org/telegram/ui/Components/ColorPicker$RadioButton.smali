.class Lorg/telegram/ui/Components/ColorPicker$RadioButton;
.super Landroid/view/View;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioButton"
.end annotation


# instance fields
.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checked:Z

.field private checkedState:F

.field private currentColor:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getCheckedState()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 163
    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkedState:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->currentColor:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->updateCheckedState(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v0, 0xf

    .line 179
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 184
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->currentColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkedState:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v2, v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x5

    .line 192
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkedState:F

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 198
    sget v0, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    const-string v1, "ColorPickerMainColor"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 200
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p1, 0x1e

    .line 174
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checked:Z

    .line 143
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->updateCheckedState(Z)V

    return-void
.end method

.method public setCheckedState(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 157
    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkedState:F

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 147
    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->currentColor:I

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method updateCheckedState(Z)V
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 v2, 0x0

    .line 133
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checked:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    aput v0, p1, v2

    const-string v0, "checkedState"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 137
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->checked:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setCheckedState(F)V

    :goto_2
    return-void
.end method
