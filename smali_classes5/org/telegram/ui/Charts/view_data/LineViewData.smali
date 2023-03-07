.class public Lorg/telegram/ui/Charts/view_data/LineViewData;
.super Ljava/lang/Object;
.source "LineViewData.java"


# instance fields
.field public alpha:F

.field public animatorIn:Landroid/animation/ValueAnimator;

.field public animatorOut:Landroid/animation/ValueAnimator;

.field public final bottomLinePaint:Landroid/graphics/Paint;

.field public final bottomLinePath:Landroid/graphics/Path;

.field public final chartPath:Landroid/graphics/Path;

.field public final chartPathPicker:Landroid/graphics/Path;

.field public enabled:Z

.field public final line:Lorg/telegram/ui/Charts/data/ChartData$Line;

.field public lineColor:I

.field public linesPath:[F

.field public linesPathBottom:[F

.field public linesPathBottomSize:I

.field public final paint:Landroid/graphics/Paint;

.field public final selectionPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Charts/data/ChartData$Line;)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    .line 19
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    .line 23
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    .line 24
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    iput v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    .line 39
    iput-object p1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    const/high16 v4, 0x40000000    # 2.0f

    .line 41
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    sget-boolean v4, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-nez v4, :cond_0

    .line 44
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 46
    :cond_0
    iget v4, p1, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget v1, p1, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 52
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget v0, p1, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[I

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    .line 59
    array-length p1, p1

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    return-void
.end method


# virtual methods
.method public updateColors()V
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    goto :goto_2

    :cond_0
    const-string v0, "windowBackgroundWhite"

    .line 66
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    .line 70
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
