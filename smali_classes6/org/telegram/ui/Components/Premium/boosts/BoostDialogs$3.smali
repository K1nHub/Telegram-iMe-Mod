.class Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;
.super Landroid/widget/LinearLayout;
.source "BoostDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showDatePicker(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final paint:Landroid/text/TextPaint;

.field final synthetic val$datePickerColors:Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;

.field final synthetic val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 214
    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$datePickerColors:Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->ignoreLayout:Z

    .line 217
    new-instance p3, Landroid/text/TextPaint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->paint:Landroid/text/TextPaint;

    .line 220
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const/16 p1, 0x14

    .line 221
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "fonts/rmedium.ttf"

    .line 222
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    iget p1, p2, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->textColor:I

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 247
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->paint:Landroid/text/TextPaint;

    const-string v3, ":"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->ignoreLayout:Z

    .line 230
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 235
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->ignoreLayout:Z

    .line 242
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
