.class public Lorg/telegram/ui/Charts/view_data/StackBarViewData;
.super Lorg/telegram/ui/Charts/view_data/LineViewData;
.source "StackBarViewData.java"


# instance fields
.field public blendColor:I

.field public final unselectedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Charts/data/ChartData$Line;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/view_data/LineViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->unselectedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->blendColor:I

    .line 23
    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public updateColors()V
    .locals 3

    .line 17
    invoke-super {p0}, Lorg/telegram/ui/Charts/view_data/LineViewData;->updateColors()V

    const-string v0, "windowBackgroundWhite"

    .line 18
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->blendColor:I

    return-void
.end method
