.class public Lorg/telegram/ui/Components/CanvasButton;
.super Ljava/lang/Object;
.source "CanvasButton.java"


# static fields
.field private static final pressedState:[I


# instance fields
.field buttonPressed:Z

.field private delegate:Ljava/lang/Runnable;

.field drawingPath:Landroid/graphics/Path;

.field drawingRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private longPressEnabled:Z

.field longPressRunnable:Ljava/lang/Runnable;

.field longPressRunnableInner:Ljava/lang/Runnable;

.field maskPaint:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field private final parent:Landroid/view/View;

.field private pathCreated:Z

.field pathEffect:Landroid/graphics/CornerPathEffect;

.field roundRadius:F

.field rounded:Z

.field selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

.field usingRectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/CanvasButton;->pressedState:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->paint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CanvasButton$1;-><init>(Lorg/telegram/ui/Components/CanvasButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnableInner:Ljava/lang/Runnable;

    const/16 v0, 0xc

    .line 53
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/CanvasButton;->roundRadius:F

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->parent:Landroid/view/View;

    .line 58
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    iget v3, p0, Lorg/telegram/ui/Components/CanvasButton;->roundRadius:F

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v2, p0, Lorg/telegram/ui/Components/CanvasButton;->pathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->maskPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->maskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v2, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->maskPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/CanvasButton$2;-><init>(Lorg/telegram/ui/Components/CanvasButton;Landroid/graphics/Paint;)V

    .line 94
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [I

    const-string v3, "listSelectorSDK21"

    .line 96
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const v5, 0x19ffffff

    and-int/2addr v3, v5

    aput v3, v1, v4

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 98
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CanvasButton;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/telegram/ui/Components/CanvasButton;->parent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/CanvasButton;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CanvasButton;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private contains(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    if-ge v1, v2, :cond_1

    .line 206
    iget-object v2, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_d

    .line 112
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->pathCreated:Z

    if-nez v0, :cond_c

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingPath:Landroid/graphics/Path;

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 119
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    if-ge v2, v6, :cond_b

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v6, :cond_1

    .line 121
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 122
    iget-object v8, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float v9, v6, v8

    .line 123
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 124
    iget-object v9, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    iget-object v10, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v10, Landroid/graphics/RectF;->right:F

    iput v6, v9, Landroid/graphics/RectF;->right:F

    :cond_1
    if-eqz v2, :cond_2

    .line 127
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 128
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    :cond_3
    if-eqz v2, :cond_4

    .line 130
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 131
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    :cond_5
    if-eqz v2, :cond_6

    .line 133
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v8, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    .line 134
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    :cond_7
    if-eqz v2, :cond_8

    .line 136
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v8, v5

    cmpg-float v6, v6, v8

    if-gez v6, :cond_9

    .line 137
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    .line 139
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingPath:Landroid/graphics/Path;

    iget-object v8, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v2, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_a

    .line 141
    invoke-virtual {v2, v4, v5, v3, v0}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    :cond_a
    move v2, v7

    goto/16 :goto_1

    .line 144
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/CanvasButton;->pathCreated:Z

    .line 146
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->pathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_10

    .line 148
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_d
    if-ne v0, v1, :cond_10

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_e

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    .line 154
    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->rounded:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 159
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->pathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_10
    :goto_2
    return-void
.end method


# virtual methods
.method public addRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 234
    iget v0, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->drawingRects:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 239
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public cancelRipple()V
    .locals 2

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 264
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public checkTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 170
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/CanvasButton;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 171
    iput-boolean v4, p0, Lorg/telegram/ui/Components/CanvasButton;->buttonPressed:Z

    .line 172
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v1

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    sget-object v0, Lorg/telegram/ui/Components/CanvasButton;->pressedState:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 176
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnableInner:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 177
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressEnabled:Z

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnableInner:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 180
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 197
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CanvasButton;->buttonPressed:Z

    if-eqz p1, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_8

    int-to-float v0, v0

    int-to-float v1, v1

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    goto :goto_1

    .line 184
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->buttonPressed:Z

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->delegate:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 186
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 188
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->parent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 189
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_6

    .line 190
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 192
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->buttonPressed:Z

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 195
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnableInner:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 201
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CanvasButton;->buttonPressed:Z

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/CanvasButton;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->pathCreated:Z

    .line 230
    iput v0, p0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 214
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    return-void
.end method

.method public setColor(II)V
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->selectorDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 220
    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_0
    return-void
.end method

.method public setDelegate(Ljava/lang/Runnable;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->delegate:Ljava/lang/Runnable;

    return-void
.end method

.method public setLongPress(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressEnabled:Z

    .line 249
    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setRect(IIII)V
    .locals 1

    .line 271
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 244
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setRounded(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CanvasButton;->rounded:Z

    return-void
.end method
