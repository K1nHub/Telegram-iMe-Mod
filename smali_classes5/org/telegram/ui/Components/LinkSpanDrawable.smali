.class public Lorg/telegram/ui/Components/LinkSpanDrawable;
.super Ljava/lang/Object;
.source "LinkSpanDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;,
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;,
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/text/style/CharacterStyle;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final pathCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/LinkPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final circlePath:Landroid/graphics/Path;

.field private color:I

.field private cornerRadius:I

.field private mBounds:Landroid/graphics/Rect;

.field private final mDuration:J

.field private final mLongPressDuration:J

.field private mMaxRadius:F

.field private final mPathes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/LinkPath;",
            ">;"
        }
    .end annotation
.end field

.field private mPathesCount:I

.field private mReleaseStart:J

.field private final mResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private mRippleAlpha:I

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mSelectionAlpha:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private final mSpan:Landroid/text/style/CharacterStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mStart:J

.field private final mSupportsLongPress:Z

.field private final mTouchX:F

.field private final mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            "FF)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 65
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FFZ)V

    return-void
.end method

.method public constructor <init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FFZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            "FFZ)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    const/4 p5, 0x0

    .line 43
    iput p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    .line 54
    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSpan:Landroid/text/style/CharacterStyle;

    .line 70
    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p1, "chat_linkSelectBackground"

    .line 71
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 72
    iput p3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    .line 73
    iput p4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long p1, p1

    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-long p3, p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    long-to-float p1, p1

    const p2, 0x3fe66666    # 1.8f

    mul-float p1, p1, p2

    long-to-float p2, p3

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p3

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    .line 77
    iput-boolean p5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/LinkSpanDrawable;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    return-wide v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    iget v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 124
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    .line 125
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    .line 126
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    .line 130
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 131
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 132
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    :cond_2
    if-eqz v2, :cond_3

    .line 137
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    .line 138
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 139
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    iget v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->cornerRadius:I

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 141
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-lez v2, :cond_5

    .line 142
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/LinkPath;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 143
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v2, v4, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 149
    :goto_1
    iget v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v2, v3, :cond_4

    .line 150
    iget-object v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/LinkPath;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 151
    iget-object v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 152
    iget-object v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 153
    iget-object v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 154
    iget-object v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 159
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v2, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    .line 160
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v4, v11

    float-to-double v11, v4

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 158
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    .line 163
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v4, v11

    float-to-double v11, v4

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    sub-float/2addr v4, v11

    float-to-double v11, v4

    .line 164
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v13, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sub-float/2addr v4, v13

    float-to-double v13, v4

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v11, v7

    .line 162
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 157
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mMaxRadius:F

    .line 170
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 171
    iget-wide v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    .line 172
    iput-wide v2, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    .line 174
    :cond_6
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-wide v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    iget-wide v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    long-to-float v8, v11

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 175
    iget-wide v11, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    const/4 v7, 0x0

    cmp-long v13, v11, v9

    if-gez v13, :cond_7

    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const-wide/16 v13, 0x4b

    sub-long v13, v2, v13

    sub-long/2addr v13, v11

    long-to-float v11, v13

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 177
    :goto_2
    iget-boolean v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    if-eqz v12, :cond_9

    .line 178
    iget-wide v12, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v12, v2, v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    const-wide/16 v16, 0x2

    mul-long v18, v14, v16

    sub-long v12, v12, v18

    long-to-float v12, v12

    iget-wide v5, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    mul-long v14, v14, v16

    sub-long/2addr v5, v14

    long-to-float v5, v5

    div-float/2addr v12, v5

    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    cmpl-float v6, v5, v8

    if-lez v6, :cond_8

    .line 180
    iget-wide v5, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long v5, v2, v5

    iget-wide v14, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    sub-long/2addr v5, v14

    long-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, v8, v5

    goto :goto_3

    :cond_8
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    :goto_3
    sub-float v6, v8, v11

    mul-float v5, v5, v6

    goto :goto_4

    :cond_9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 189
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    int-to-float v7, v7

    const v12, 0x3e4ccccd    # 0.2f

    mul-float v7, v7, v12

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float v12, v12, v4

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float v7, v7, v12

    sub-float v11, v8, v11

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    sub-float v5, v8, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v12, 0x5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    mul-float v7, v7, v14

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x0

    .line 191
    :goto_5
    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v6, v7, :cond_a

    .line 192
    iget-object v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    iget-object v14, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 195
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    int-to-float v7, v7

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v7, v7, v14

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v5, v5, v7

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    cmpg-float v5, v4, v8

    if-gez v5, :cond_c

    .line 198
    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mMaxRadius:F

    mul-float v4, v4, v6

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 201
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    iget v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchX:F

    iget v8, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mTouchY:F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8, v4, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 202
    iget-object v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v4, 0x0

    .line 203
    :goto_6
    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v4, v6, :cond_b

    .line 204
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 206
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    .line 208
    :goto_7
    iget v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    if-ge v4, v6, :cond_d

    .line 209
    iget-object v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    if-ltz v5, :cond_f

    .line 213
    iget-wide v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    cmp-long v1, v4, v9

    if-gez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSupportsLongPress:Z

    if-eqz v1, :cond_e

    iget-wide v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mLongPressDuration:J

    iget-wide v6, v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_e

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v5, 0x1

    :goto_a
    return v5
.end method

.method public getSpan()Landroid/text/style/CharacterStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSpan:Landroid/text/style/CharacterStyle;

    return-object v0
.end method

.method public obtainNewPath()Lorg/telegram/ui/Components/LinkPath;
    .locals 2

    .line 98
    sget-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/LinkPath;

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    .line 103
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkPath;->reset()V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    return-object v0
.end method

.method public release()V
    .locals 4

    .line 93
    iget-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mStart:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mDuration:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mReleaseStart:J

    return-void
.end method

.method public reset()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/LinkSpanDrawable;->pathCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mPathesCount:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->color:I

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mSelectionAlpha:I

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable;->mRippleAlpha:I

    :cond_1
    return-void
.end method
