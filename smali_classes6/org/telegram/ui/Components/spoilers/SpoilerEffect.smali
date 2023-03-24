.class public Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
.super Landroid/graphics/drawable/Drawable;
.source "SpoilerEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;
    }
.end annotation


# static fields
.field public static final ALPHAS:[F

.field public static final MAX_PARTICLES_PER_ENTITY:I

.field public static final PARTICLES_PER_CHARACTER:I

.field private static tempPath:Landroid/graphics/Path;

.field private static xRefPaint:Landroid/graphics/Paint;


# instance fields
.field public drawPoints:Z

.field private enableAlpha:Z

.field private invalidateParent:Z

.field private lastColor:I

.field private lastDrawTime:J

.field private mAlpha:I

.field private mParent:Landroid/view/View;

.field private maxParticles:I

.field private onRippleEndCallback:Ljava/lang/Runnable;

.field private particlePaints:[Landroid/graphics/Paint;

.field particlePoints:[[F

.field private particleRands:[F

.field private particles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private particlesPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private renderCount:[I

.field private reverseAnimator:Z

.field private rippleAnimator:Landroid/animation/ValueAnimator;

.field private rippleInterpolator:Landroid/animation/TimeInterpolator;

.field private rippleMaxRadius:F

.field private rippleProgress:F

.field private rippleX:F

.field private rippleY:F

.field private shouldInvalidateColor:Z

.field private spaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private visibleRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$oLmM3WhypC86cavuo2YNSNsSxYc(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3p7XFqRdMNOCysHTBVk7w8ts6M(F)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureMaxParticlesCount()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    .line 59
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureParticlesPerCharacter()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 64
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    .line 69
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    .line 71
    array-length v1, v0

    sget v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, F

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    const/16 v1, 0xe

    new-array v1, v1, [F

    .line 72
    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    .line 73
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 86
    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    const/16 v0, 0xff

    .line 93
    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    .line 95
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    move v0, v2

    .line 129
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v1, v0

    if-nez v0, :cond_0

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    const v3, 0x3fb33333    # 1.4f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    .line 143
    iput-boolean v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    .line 144
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/Stack;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)I
    .locals 0

    .line 57
    iget p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/text/Layout;",
            "Landroid/text/Spanned;",
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const/4 v15, 0x0

    move v12, v15

    .line 556
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 557
    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v16

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v11, v0

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v17

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v10, v0

    .line 558
    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 560
    const-class v0, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v14, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v6, v7

    move v5, v15

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v7, v5

    .line 561
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 563
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    sub-int v0, v19, v18

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move v3, v9

    move v4, v8

    move/from16 v20, v5

    move/from16 v5, v16

    move/from16 v21, v6

    move v6, v11

    move-object/from16 v22, v7

    move/from16 v7, v17

    move/from16 v23, v8

    move v8, v10

    move/from16 v24, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move-object/from16 v11, p3

    move/from16 v25, v12

    move-object/from16 v12, p4

    .line 567
    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilersInternal(Landroid/view/View;Landroid/text/Spanned;Landroid/text/Layout;IIFFFFIILjava/util/Stack;Ljava/util/List;)V

    goto :goto_3

    :cond_1
    :goto_2
    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v25, v12

    :goto_3
    add-int/lit8 v5, v20, 0x1

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v12, v25

    goto :goto_1

    :cond_2
    move/from16 v25, v12

    add-int/lit8 v12, v25, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 571
    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 572
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->clear()V

    :cond_4
    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/text/Layout;",
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    invoke-static {p0, v0, v1, p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    return-void
.end method

.method private static addSpoilersInternal(Landroid/view/View;Landroid/text/Spanned;Landroid/text/Layout;IIFFFFIILjava/util/Stack;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/text/Spanned;",
            "Landroid/text/Layout;",
            "IIFFFFII",
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p11

    .line 581
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1, v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 582
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v9, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v9, v8

    move v10, v15

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 583
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-virtual {v7, v15, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    array-length v9, v8

    move v10, v15

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 585
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    return-void

    .line 588
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getWidth()I

    move-result v8

    :goto_2
    move v11, v8

    .line 589
    new-instance v10, Landroid/text/TextPaint;

    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-direct {v10, v8}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v8, -0x1000000

    .line 590
    invoke-virtual {v10, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 592
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    const/4 v14, 0x1

    if-lt v8, v9, :cond_4

    .line 593
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-static {v7, v15, v8, v10, v11}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 594
    invoke-virtual {v8, v14}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 595
    invoke-virtual {v8, v15}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 596
    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 598
    invoke-virtual {v8}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move/from16 v18, v14

    move v0, v15

    goto :goto_3

    .line 600
    :cond_4
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v16

    const/16 v17, 0x0

    move-object v9, v7

    move/from16 v18, v14

    move/from16 v14, v16

    move v0, v15

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 601
    :goto_3
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->isRTLCharacter(C)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->isRTLCharacter(C)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_6

    move/from16 v15, v18

    goto :goto_4

    :cond_6
    move v15, v0

    :goto_4
    if-eqz v6, :cond_8

    .line 602
    invoke-virtual/range {p11 .. p11}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    goto :goto_6

    :cond_8
    :goto_5
    new-instance v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    :goto_6
    const/high16 v8, -0x40800000    # -1.0f

    .line 603
    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleProgress(F)V

    move/from16 v8, p3

    if-ne v4, v8, :cond_9

    move/from16 v8, p5

    goto :goto_7

    .line 604
    :cond_9
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    :goto_7
    if-eq v5, v3, :cond_b

    if-eqz v15, :cond_a

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_a

    .line 605
    invoke-interface {v1, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v3, 0x2026

    if-ne v1, v3, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v1, p7

    .line 606
    :goto_9
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    move/from16 v5, p6

    float-to-int v5, v5

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    move/from16 v8, p8

    float-to-int v8, v8

    invoke-virtual {v6, v3, v5, v1, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 608
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    invoke-virtual {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->updateMaxParticles()V

    move v1, v0

    move-object/from16 v0, p0

    if-eqz v0, :cond_c

    .line 611
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    .line 613
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v15, v1

    .line 614
    :goto_a
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v15, v0, :cond_e

    .line 615
    invoke-virtual {v7, v15}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_d

    .line 616
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    add-int v1, v4, v15

    .line 618
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 619
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 620
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 621
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 622
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 623
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    .line 624
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_d

    .line 625
    iget-object v1, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v0, p12

    .line 629
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    .line 636
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 637
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 638
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 639
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 641
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V
    .locals 2

    .line 429
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$502(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 430
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$602(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    return-void
.end method

.method private isOutOfBounds(IIIIFF)Z
    .locals 1

    int-to-float p1, p1

    cmpg-float p1, p5, p1

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    int-to-float p1, p3

    cmpl-float p1, p5, p1

    if-gtz p1, :cond_3

    const/high16 p1, 0x40200000    # 2.5f

    .line 416
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    cmpg-float p2, p6, p2

    if-ltz p2, :cond_3

    .line 417
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    .line 420
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 421
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    invoke-virtual {p3, p5, p6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private static synthetic lambda$new$0(F)F
    .locals 0

    return p0
.end method

.method private synthetic lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 208
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 209
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setAlpha(I)V

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method private static measureMaxParticlesCount()I
    .locals 2

    .line 118
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/16 v0, 0x96

    return v0
.end method

.method private static measureParticlesPerCharacter()I
    .locals 2

    .line 107
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public static renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;Landroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZII",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v11, p7

    .line 659
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    invoke-virtual {v2, v11}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 663
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Layout;

    const/4 v13, 0x0

    if-eqz v4, :cond_1

    .line 665
    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 666
    :cond_1
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 667
    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_4

    .line 668
    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 669
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v4, v13, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v6, v5

    move v7, v13

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 670
    invoke-virtual {v8}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 671
    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 672
    const-class v14, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v4, v9, v10, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    array-length v10, v9

    move v14, v13

    :goto_1
    if-ge v14, v10, :cond_2

    aget-object v12, v9, v14

    .line 673
    new-instance v13, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;

    invoke-direct {v13, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;-><init>(Lorg/telegram/messenger/Emoji$EmojiSpan;)V

    move-object/from16 v16, v5

    .line 682
    invoke-interface {v4, v12}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move/from16 v17, v6

    invoke-interface {v4, v12}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v18, v9

    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 673
    invoke-virtual {v15, v13, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    invoke-virtual {v15, v12}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v18

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 686
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v4, v8}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v15, v5, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 687
    invoke-virtual {v15, v8}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v5

    move/from16 v17, v6

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    const/4 v13, 0x0

    goto :goto_0

    .line 693
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_5

    .line 694
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v15, v7, v4, v5, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 695
    invoke-virtual {v4, v5}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 696
    invoke-virtual {v4, v7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 697
    invoke-virtual {v4, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 698
    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 699
    invoke-virtual {v4}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v4

    goto :goto_3

    .line 701
    :cond_5
    new-instance v4, Landroid/text/StaticLayout;

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getWidth()I

    move-result v17

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v20

    const/16 v21, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_3
    move-object/from16 v5, p4

    .line 703
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 706
    :cond_6
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v12, 0x0

    if-nez v5, :cond_7

    .line 707
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->save()I

    move/from16 v5, p3

    int-to-float v5, v5

    .line 708
    invoke-virtual {v11, v12, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 709
    invoke-virtual {v4, v11}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 712
    :cond_7
    invoke-virtual {v2, v11}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 715
    :goto_4
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 716
    sget-object v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 717
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 718
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 719
    sget-object v13, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v14, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v15, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_5

    .line 721
    :cond_8
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    if-nez v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v4, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_a

    .line 722
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->save()I

    .line 723
    sget-object v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v11, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 724
    sget-object v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 725
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    .line 726
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    sget-object v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 728
    :cond_9
    sget-object v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v11, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v11, v12, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    invoke-virtual {v2, v11}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 731
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    const/4 v2, 0x0

    .line 735
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v2, v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_d

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-eqz p8, :cond_c

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_c

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :cond_c
    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v4

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v8, v4

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object/from16 v4, p7

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_7

    .line 743
    :cond_d
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->save()I

    .line 745
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v11, v12, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 746
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move/from16 v6, p1

    .line 747
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setInvalidateParent(Z)V

    .line 748
    invoke-virtual {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getParentView()Landroid/view/View;

    move-result-object v7

    if-eq v7, v0, :cond_e

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    .line 749
    :cond_e
    invoke-virtual {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 750
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-virtual {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v1, v7, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    goto :goto_9

    .line 752
    :cond_f
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 754
    :goto_9
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_10
    if-eqz v2, :cond_12

    .line 758
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 759
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 760
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_11

    .line 761
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 762
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 765
    :cond_11
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 767
    :cond_12
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v7, p0

    .line 299
    iget-boolean v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->drawPoints:Z

    if-eqz v0, :cond_f

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    iget-wide v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x22

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v8, v2

    .line 305
    iput-wide v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v13, 0x0

    move v0, v13

    .line 308
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aput v13, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v14, v13

    .line 311
    :goto_1
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    .line 312
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 314
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$700(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    int-to-float v6, v8

    add-float/2addr v0, v6

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$800(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$702(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 315
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$700(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$800(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v16

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 324
    :cond_1
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$900(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    mul-float v0, v0, v17

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    .line 325
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$516(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 326
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$616(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 328
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)I

    move-result v0

    .line 329
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    aput v3, v1, v2

    .line 330
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    aput v3, v1, v2

    .line 331
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_3

    .line 316
    :cond_2
    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v0, v1, :cond_3

    .line 317
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_3
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 334
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v0, v1, :cond_9

    .line 335
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v8, v1, v0

    .line 336
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v0, v14}, Ljava/util/Arrays;->fill([FF)V

    move v15, v13

    :goto_4
    if-ge v15, v8, :cond_9

    .line 338
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    rem-int/lit8 v1, v15, 0xe

    aget v2, v0, v1

    cmpl-float v3, v2, v14

    if-nez v3, :cond_5

    .line 340
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    :cond_5
    move v6, v2

    .line 343
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;)V

    :goto_5
    move-object v5, v0

    move v0, v13

    .line 346
    :goto_6
    invoke-direct {v7, v5, v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V

    add-int/lit8 v4, v0, 0x1

    .line 348
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v16

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v17

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v14, v4

    move v4, v12

    move-object v13, v5

    move/from16 v5, v16

    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    if-lt v14, v0, :cond_7

    goto :goto_7

    :cond_7
    move v6, v8

    move-object v5, v13

    move v0, v14

    move/from16 v8, v16

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_6

    :cond_8
    :goto_7
    float-to-double v0, v8

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    sub-double/2addr v0, v2

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 353
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 355
    invoke-static {v13, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1002(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 356
    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1102(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    const/4 v0, 0x0

    .line 358
    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$702(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 360
    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$802(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v6, v8, v1

    add-float/2addr v6, v0

    .line 361
    invoke-static {v13, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$902(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    .line 362
    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1202(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)I

    .line 363
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {v13}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)I

    move-result v0

    .line 366
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v13}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    aput v3, v1, v2

    .line 367
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v13}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    aput v3, v1, v2

    .line 368
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    goto/16 :goto_4

    .line 372
    :cond_9
    iget-boolean v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 375
    :goto_9
    iget-object v4, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 376
    iget-object v4, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 378
    iget-object v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_b

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)I

    move-result v5

    if-eq v5, v0, :cond_d

    iget-boolean v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v5, :cond_d

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 383
    :cond_d
    iget-object v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v5, v5, v0

    sub-int v6, v1, v3

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    aput v8, v5, v6

    .line 384
    iget-object v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v5, v5, v0

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x2

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 387
    :cond_e
    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v3, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v3, v3, v0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v4, p1

    .line 390
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 391
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v11, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v0

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v0, 0x80

    .line 393
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 394
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    .line 395
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->checkUpdate()V

    :cond_10
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public getRipplePath(Landroid/graphics/Path;)V
    .locals 6

    .line 252
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getRippleProgress()F
    .locals 1

    .line 259
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    return v0
.end method

.method public invalidateSelf()V
    .locals 2

    .line 435
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .line 465
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    const/4 v0, 0x0

    .line 466
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    aget v1, v1, v0

    int-to-float v3, p1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 286
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 287
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result p4

    float-to-int p4, p4

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p3

    if-nez p3, :cond_1

    .line 289
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 291
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge p3, p4, :cond_0

    .line 292
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .line 484
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    .line 485
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 486
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    int-to-float v3, v3

    aget v1, v1, v0

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 474
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInvalidateParent(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    return-void
.end method

.method public setMaxParticlesCount(I)V
    .locals 3

    .line 515
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    .line 516
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnRippleEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-void
.end method

.method public setRippleInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setRippleProgress(F)V
    .locals 1

    .line 275
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return-void
.end method

.method public setSuppressUpdates(Z)V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public setVisibleBounds(FFFF)V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_2

    .line 407
    :cond_1
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 408
    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 409
    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 410
    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public shouldInvalidateColor()Z
    .locals 2

    .line 266
    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    const/4 v1, 0x0

    .line 267
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return v0
.end method

.method public startRipple(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    return-void
.end method

.method public startRipple(FFFZ)V
    .locals 4

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    .line 197
    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    .line 198
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 199
    :goto_0
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    .line 200
    iput-boolean p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    .line 202
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    .line 203
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 204
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/16 p3, 0xff

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    sub-int/2addr v1, v0

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 205
    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    aput v3, v1, v2

    if-eqz p4, :cond_3

    move p1, p2

    :cond_3
    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const p4, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p4

    const/high16 p4, 0x437a0000    # 250.0f

    const v0, 0x44098000    # 550.0f

    invoke-static {p2, p4, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public updateMaxParticles()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    mul-int/2addr v0, v1

    sget v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setMaxParticlesCount(I)V

    return-void
.end method
