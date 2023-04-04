.class public final Lcom/iMe/ui/custom/ProgressView;
.super Landroid/view/View;
.source "ProgressView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/ProgressView$Companion;
    }
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final dividerPaint:Landroid/graphics/Paint;

.field private final lineY$delegate:Lkotlin/Lazy;

.field private progress:F

.field private final progressPaint:Landroid/graphics/Paint;

.field private final strokePadding$delegate:Lkotlin/Lazy;

.field private final strokeWidth$delegate:Lkotlin/Lazy;

.field private final viewHeight$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/ProgressView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/ProgressView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget-object p1, Lcom/iMe/ui/custom/ProgressView$viewHeight$2;->INSTANCE:Lcom/iMe/ui/custom/ProgressView$viewHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->viewHeight$delegate:Lkotlin/Lazy;

    .line 19
    sget-object p1, Lcom/iMe/ui/custom/ProgressView$strokeWidth$2;->INSTANCE:Lcom/iMe/ui/custom/ProgressView$strokeWidth$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->strokeWidth$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Lcom/iMe/ui/custom/ProgressView$strokePadding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/custom/ProgressView$strokePadding$2;-><init>(Lcom/iMe/ui/custom/ProgressView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->strokePadding$delegate:Lkotlin/Lazy;

    .line 21
    sget-object p1, Lcom/iMe/ui/custom/ProgressView$lineY$2;->INSTANCE:Lcom/iMe/ui/custom/ProgressView$lineY$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->lineY$delegate:Lkotlin/Lazy;

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getBarPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->backgroundPaint:Landroid/graphics/Paint;

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getBarPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->progressPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/custom/ProgressView;->dividerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getStrokeWidth(Lcom/iMe/ui/custom/ProgressView;)F
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokeWidth()F

    move-result p0

    return p0
.end method

.method private final getBarPaint()Landroid/graphics/Paint;
    .locals 2

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-object v0
.end method

.method private final getLineY()F
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->lineY$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getStrokePadding()F
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->strokePadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getStrokeWidth()F
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->strokeWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getViewHeight()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->viewHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iMe/ui/custom/ProgressView;->progress:F

    mul-float/2addr v0, v1

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v2

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v4

    sub-float v4, v1, v4

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v5

    iget-object v6, p0, Lcom/iMe/ui/custom/ProgressView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v3

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v4

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v6

    iget-object v7, p0, Lcom/iMe/ui/custom/ProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    iget v1, p0, Lcom/iMe/ui/custom/ProgressView;->progress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v1

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v2

    sub-float v4, v1, v2

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v1

    add-float v5, v0, v1

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getLineY()F

    move-result v1

    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getStrokePadding()F

    move-result v2

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/iMe/ui/custom/ProgressView;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/custom/ProgressView;->getViewHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final setupColors()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->backgroundPaint:Landroid/graphics/Paint;

    const-string v1, "player_progress"

    .line 36
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x2e

    .line 37
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->progressPaint:Landroid/graphics/Paint;

    .line 40
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xff

    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/custom/ProgressView;->dividerPaint:Landroid/graphics/Paint;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateProgress(F)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/iMe/ui/custom/ProgressView;->progress:F

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
