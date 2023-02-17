.class Lorg/telegram/ui/IntroActivity$4;
.super Landroid/widget/TextView;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;Landroid/content/Context;)V
    .locals 0

    .line 320
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 325
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$4;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$4;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    .line 328
    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/high16 v1, 0x40000000    # 2.0f

    .line 329
    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$4;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 332
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$4;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 334
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 339
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x104

    .line 340
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/16 p1, 0x140

    .line 341
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    return-void
.end method
