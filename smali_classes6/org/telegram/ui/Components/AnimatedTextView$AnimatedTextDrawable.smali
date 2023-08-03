.class public Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedTextDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;,
        Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;,
        Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;
    }
.end annotation


# instance fields
.field private allowCancel:Z

.field private alpha:I

.field private animateDelay:J

.field private animateDuration:J

.field private animateInterpolator:Landroid/animation/TimeInterpolator;

.field private animator:Landroid/animation/ValueAnimator;

.field private final bounds:Landroid/graphics/Rect;

.field private currentHeight:F

.field private currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

.field private currentText:Ljava/lang/CharSequence;

.field private currentWidth:F

.field private ellipsizeByGradient:Z

.field private ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private ellipsizeGradientMatrix:Landroid/graphics/Matrix;

.field private ellipsizePaint:Landroid/graphics/Paint;

.field private gravity:I

.field public ignoreRTL:Z

.field private isRTL:Z

.field private moveAmplitude:F

.field private moveDown:Z

.field private oldHeight:F

.field private oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

.field private oldText:Ljava/lang/CharSequence;

.field private oldWidth:F

.field private onAnimationFinishListener:Ljava/lang/Runnable;

.field private overrideFullWidth:I

.field private preserveIndex:Z

.field private rightPadding:F

.field private shadowColor:I

.field private shadowDx:F

.field private shadowDy:F

.field private shadowRadius:F

.field private shadowed:Z

.field private splitByWords:Z

.field private startFromEnd:Z

.field private t:F

.field private final textPaint:Landroid/text/TextPaint;

.field private toSetText:Ljava/lang/CharSequence;

.field private toSetTextMoveDown:Z

.field public updateAll:Z


# direct methods
.method public static synthetic $r8$lambda$WWkpHf1TsqM7JIjnS05cIA8NsPs(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$2(ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLA_9mo414YeWFa9YhYEJe33U50(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$0(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6mi2FNf7f0pq7WtR_YCOGQawrc(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$1(ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwzna1lv2ynjqA8CS04Ee0Au4K4(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 3

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    const/4 v2, 0x0

    .line 76
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    .line 77
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    const-wide/16 v1, 0x1c2

    .line 83
    iput-wide v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    .line 84
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    const/16 v1, 0xff

    .line 87
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    .line 806
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowed:Z

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    .line 121
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->preserveIndex:Z

    .line 122
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->startFromEnd:Z

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;)[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;F)F
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;F)F
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->onAnimationFinishListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    return p0
.end method

.method private applyAlphaInternal(F)V
    .locals 5

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 140
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowed:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowRadius:F

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowDx:F

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowDy:F

    iget v4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowColor:I

    invoke-static {v4, p1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method private diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 681
    iget-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->updateAll:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 682
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v5, v1, v7, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 683
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v4, v2, v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    return-void

    .line 686
    :cond_0
    iget-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->preserveIndex:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_14

    .line 689
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 690
    iget-boolean v9, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->startFromEnd:Z

    if-eqz v9, :cond_c

    .line 691
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v7

    move v12, v10

    move v11, v8

    move v13, v11

    :goto_0
    if-gt v10, v6, :cond_6

    .line 694
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v10

    sub-int/2addr v14, v8

    .line 695
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    sub-int/2addr v15, v10

    sub-int/2addr v15, v8

    if-ltz v14, :cond_1

    if-ltz v15, :cond_1

    .line 696
    invoke-static {v2, v1, v14, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v8

    goto :goto_1

    :cond_1
    move v14, v7

    :goto_1
    if-ne v11, v14, :cond_2

    if-ne v10, v6, :cond_5

    :cond_2
    sub-int v12, v10, v12

    if-lez v12, :cond_4

    .line 699
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_3

    goto :goto_2

    :cond_3
    move v11, v13

    .line 702
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v11

    :cond_4
    move v12, v10

    move v11, v14

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 708
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v6

    .line 709
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int/2addr v11, v6

    if-lez v10, :cond_7

    .line 711
    invoke-interface {v2, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v4, v6, v7, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_7
    if-lez v11, :cond_8

    .line 714
    invoke-interface {v1, v7, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6, v7, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 716
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    :goto_3
    if-ltz v6, :cond_1e

    .line 717
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 718
    rem-int/lit8 v14, v6, 0x2

    if-nez v14, :cond_9

    move v14, v8

    goto :goto_4

    :cond_9
    move v14, v7

    :goto_4
    if-ne v14, v13, :cond_b

    .line 719
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_a

    add-int v14, v10, v12

    .line 720
    invoke-interface {v2, v10, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v3, v15, v10, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_a
    add-int v14, v11, v12

    .line 722
    invoke-interface {v1, v11, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v3, v15, v11, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_b
    add-int v14, v10, v12

    .line 725
    invoke-interface {v2, v10, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v4, v15, v10, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    add-int v14, v11, v12

    .line 726
    invoke-interface {v1, v11, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v5, v15, v11, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :goto_5
    add-int/2addr v10, v12

    add-int/2addr v11, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_c
    move v9, v7

    move v11, v9

    move v10, v8

    :goto_6
    if-gt v9, v6, :cond_12

    if-ge v9, v6, :cond_d

    .line 733
    invoke-static {v2, v1, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_d

    move v12, v8

    goto :goto_7

    :cond_d
    move v12, v7

    :goto_7
    if-ne v10, v12, :cond_e

    if-ne v9, v6, :cond_11

    :cond_e
    sub-int v13, v9, v11

    if-lez v13, :cond_10

    if-eqz v10, :cond_f

    .line 737
    invoke-interface {v2, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v3, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_8

    .line 739
    :cond_f
    invoke-interface {v2, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v4, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 740
    invoke-interface {v1, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v5, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_10
    :goto_8
    move v11, v9

    move v10, v12

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 747
    :cond_12
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-lez v3, :cond_13

    .line 748
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v4, v3, v6, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 750
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v6

    if-lez v2, :cond_1e

    .line 751
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v5, v2, v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 758
    :cond_14
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v9, v7

    move v10, v9

    move v12, v10

    move v13, v12

    move v11, v8

    :goto_9
    if-gt v9, v6, :cond_1e

    if-ge v9, v6, :cond_15

    .line 760
    invoke-static {v2, v1, v9, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v14

    if-eqz v14, :cond_15

    move v14, v8

    goto :goto_a

    :cond_15
    move v14, v7

    :goto_a
    if-ne v11, v14, :cond_16

    if-ne v9, v6, :cond_1c

    :cond_16
    if-ne v9, v6, :cond_17

    .line 763
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 764
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    :cond_17
    sub-int v15, v9, v12

    sub-int v7, v10, v13

    if-gtz v15, :cond_18

    if-lez v7, :cond_1b

    :cond_18
    if-ne v15, v7, :cond_19

    if-eqz v11, :cond_19

    .line 770
    invoke-interface {v2, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v3, v7, v12, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_b

    :cond_19
    if-lez v15, :cond_1a

    .line 774
    invoke-interface {v2, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v4, v11, v12, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_1a
    if-lez v7, :cond_1b

    .line 778
    invoke-interface {v1, v13, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v5, v7, v13, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_1b
    :goto_b
    move v12, v9

    move v13, v10

    move v11, v14

    :cond_1c
    if-eqz v14, :cond_1d

    add-int/lit8 v10, v10, 0x1

    :cond_1d
    add-int/2addr v9, v8

    const/4 v7, 0x0

    goto :goto_9

    :cond_1e
    :goto_c
    return-void
.end method

.method private synthetic lambda$setText$0(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 1

    .line 329
    iget p5, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget p6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-static {p5, p6}, Ljava/lang/Math;->min(FF)F

    move-result p5

    float-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p5

    double-to-int p5, p5

    sub-int/2addr p1, p5

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p1

    .line 330
    new-instance p4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p5, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p6

    invoke-direct {p4, p1, p5, p6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Landroid/text/StaticLayout;FI)V

    .line 331
    new-instance p5, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p5, p1, p6, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Landroid/text/StaticLayout;FI)V

    .line 332
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget p2, p4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    .line 335
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    add-float/2addr p3, p2

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 336
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    add-float/2addr p3, p2

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 337
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    .line 338
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    return-void
.end method

.method private synthetic lambda$setText$1(ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 341
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    sub-int/2addr p1, p4

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p1

    .line 342
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    const/4 p5, -0x1

    invoke-direct {p3, p1, p4, p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Landroid/text/StaticLayout;FI)V

    .line 343
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget p3, p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 345
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    return-void
.end method

.method private synthetic lambda$setText$2(ILjava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 348
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    sub-int/2addr p1, p4

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p1

    .line 349
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    const/4 p5, -0x1

    invoke-direct {p3, p1, p4, p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Landroid/text/StaticLayout;FI)V

    .line 350
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget p3, p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 352
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    return-void
.end method

.method private synthetic lambda$setText$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 376
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    .line 377
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 12

    if-gtz p2, :cond_0

    .line 465
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    move v11, p2

    .line 467
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    .line 468
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1, p2, v0, v1, v11}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 469
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 470
    invoke-virtual {p1, p2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 471
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 472
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 476
    :cond_1
    new-instance p2, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 478
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v0, p2

    move-object v1, p1

    move v5, v11

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-object p2
.end method

.method public static partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 3

    .line 597
    instance-of v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    if-eqz v0, :cond_3

    .line 598
    check-cast p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->wordAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 599
    check-cast p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->wordAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 600
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_6

    :cond_4
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 602
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 147
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeByGradient:Z

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 149
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->rightPadding:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    const/16 v2, 0xff

    const/16 v3, 0x1f

    .line 150
    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 152
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 155
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 156
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v3, :cond_10

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    cmpl-float v10, v3, v8

    if-eqz v10, :cond_10

    .line 157
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    invoke-static {v10, v11, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 158
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    int-to-float v2, v2

    sub-float/2addr v2, v10

    div-float/2addr v2, v5

    .line 159
    invoke-virtual {v7, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 160
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v11, v10

    const/high16 v12, -0x40800000    # -1.0f

    if-ge v2, v11, :cond_9

    .line 161
    aget-object v10, v10, v2

    .line 162
    iget v11, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    .line 163
    iget v13, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 164
    iget-boolean v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v14, :cond_1

    iget-boolean v15, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v15, :cond_1

    .line 165
    iget v15, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v4, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v13, v4

    sub-float v13, v15, v13

    :cond_1
    if-ltz v11, :cond_3

    .line 168
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object v4, v4, v11

    .line 169
    iget v12, v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    if-eqz v14, :cond_2

    .line 170
    iget-boolean v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v14, :cond_2

    .line 171
    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v15, v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v12, v15

    sub-float v12, v14, v12

    .line 173
    :cond_2
    iget v4, v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v12, v4

    iget v4, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v13, v4

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v12, v13, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 174
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->applyAlphaInternal(F)V

    move v13, v6

    goto :goto_1

    .line 176
    :cond_3
    iget v4, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float v4, v13, v4

    .line 177
    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->getTextSize()F

    move-result v13

    neg-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    mul-float/2addr v13, v14

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    sub-float v15, v8, v14

    mul-float/2addr v13, v15

    iget-boolean v15, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    if-eqz v15, :cond_4

    move v12, v8

    :cond_4
    mul-float/2addr v13, v12

    .line 178
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->applyAlphaInternal(F)V

    .line 180
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-ltz v11, :cond_5

    move v11, v3

    goto :goto_2

    .line 181
    :cond_5
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 182
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v14, v12, -0x4

    if-eq v14, v9, :cond_8

    or-int/lit8 v14, v12, -0x6

    if-ne v14, v9, :cond_6

    :goto_3
    int-to-float v12, v1

    sub-float/2addr v12, v11

    :goto_4
    add-float/2addr v4, v12

    goto :goto_5

    :cond_6
    or-int/lit8 v12, v12, -0x2

    if-ne v12, v9, :cond_7

    int-to-float v12, v1

    sub-float/2addr v12, v11

    div-float/2addr v12, v5

    goto :goto_4

    .line 187
    :cond_7
    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v12, :cond_8

    goto :goto_3

    .line 191
    :cond_8
    :goto_5
    invoke-virtual {v7, v4, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    iget-object v4, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    .line 195
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v3, v2

    if-ge v4, v3, :cond_15

    .line 196
    aget-object v2, v2, v4

    .line 197
    iget v3, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    if-ltz v3, :cond_a

    goto :goto_b

    .line 201
    :cond_a
    iget v3, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 202
    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    mul-float/2addr v10, v11

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    mul-float/2addr v10, v11

    iget-boolean v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    if-eqz v13, :cond_b

    move v13, v8

    goto :goto_7

    :cond_b
    move v13, v12

    :goto_7
    mul-float/2addr v10, v13

    sub-float v11, v8, v11

    .line 203
    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->applyAlphaInternal(F)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v11, :cond_c

    iget-boolean v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v13, :cond_c

    .line 206
    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v14, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v3, v14

    sub-float v3, v13, v3

    .line 208
    :cond_c
    iget v13, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v3, v13

    .line 209
    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v14, v13, -0x4

    if-eq v14, v9, :cond_f

    or-int/lit8 v14, v13, -0x6

    if-ne v14, v9, :cond_d

    int-to-float v11, v1

    .line 211
    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    :goto_8
    sub-float/2addr v11, v13

    :goto_9
    add-float/2addr v3, v11

    goto :goto_a

    :cond_d
    or-int/lit8 v13, v13, -0x2

    if-ne v13, v9, :cond_e

    int-to-float v11, v1

    .line 213
    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    sub-float/2addr v11, v13

    div-float/2addr v11, v5

    goto :goto_9

    :cond_e
    if-eqz v11, :cond_f

    .line 214
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v11, :cond_f

    int-to-float v11, v1

    .line 215
    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    goto :goto_8

    .line 218
    :cond_f
    :goto_a
    invoke-virtual {v7, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 219
    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    int-to-float v2, v2

    .line 223
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {v7, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v2, :cond_15

    .line 225
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->applyAlphaInternal(F)V

    const/4 v4, 0x0

    .line 226
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v2, v2

    if-ge v4, v2, :cond_15

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 228
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object v2, v2, v4

    .line 229
    iget v3, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 230
    iget-boolean v8, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v8, :cond_11

    iget-boolean v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v10, :cond_11

    .line 231
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v11, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v3, v11

    sub-float v3, v10, v3

    .line 233
    :cond_11
    iget v10, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v3, v10

    .line 234
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v11, v10, -0x4

    if-eq v11, v9, :cond_14

    or-int/lit8 v11, v10, -0x6

    if-ne v11, v9, :cond_12

    int-to-float v8, v1

    .line 236
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    :goto_d
    sub-float/2addr v8, v10

    :goto_e
    add-float/2addr v3, v8

    goto :goto_f

    :cond_12
    or-int/lit8 v10, v10, -0x2

    if-ne v10, v9, :cond_13

    int-to-float v8, v1

    .line 238
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v5

    goto :goto_e

    :cond_13
    if-eqz v8, :cond_14

    .line 239
    iget-boolean v8, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v8, :cond_14

    int-to-float v8, v1

    .line 240
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    goto :goto_d

    .line 244
    :cond_14
    :goto_f
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 250
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeByGradient:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x10

    .line 252
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 253
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_16

    .line 254
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    new-array v14, v3, [F

    fill-array-data v14, :array_1

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    move v11, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    .line 255
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradientMatrix:Landroid/graphics/Matrix;

    .line 256
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizePaint:Landroid/graphics/Paint;

    .line 257
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 258
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 260
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 261
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradientMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->rightPadding:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 264
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v3

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->rightPadding:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    int-to-float v1, v3

    sub-float v5, v1, v5

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget-object v9, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v6

    move v4, v5

    move v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    return-void

    nop

    :array_0
    .array-data 4
        0xff0000
        -0x10000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCurrentWidth()F
    .locals 3

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_0

    .line 439
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    return v0

    .line 441
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 460
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    return v0
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    return v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 434
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAllowCancel(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 849
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    return-void
.end method

.method public setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 827
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    .line 828
    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    .line 829
    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    .line 830
    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 870
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 864
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ellipsizeByGradient:Z

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 823
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    return-void
.end method

.method public setHacks(ZZZ)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    .line 95
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->preserveIndex:Z

    .line 96
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->startFromEnd:Z

    return-void
.end method

.method public setOnAnimationFinishListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->onAnimationFinishListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverrideFullWidth(I)V
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->overrideFullWidth:I

    return-void
.end method

.method public setRightPadding(F)V
    .locals 0

    .line 271
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->rightPadding:F

    .line 272
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowed:Z

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowRadius:F

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowDx:F

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowDy:F

    iput p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->shadowColor:I

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 10

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p2, v1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 300
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->overrideFullWidth:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_e

    .line 302
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    if-eqz p2, :cond_4

    .line 303
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    .line 304
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 305
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 307
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 308
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    .line 309
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return-void

    .line 313
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 317
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    .line 318
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    .line 320
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 324
    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    .line 328
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 340
    new-instance v8, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;)V

    .line 347
    new-instance v9, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;ILjava/util/ArrayList;)V

    .line 355
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    :goto_2
    move-object v5, v0

    .line 356
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    if-eqz v0, :cond_8

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    :goto_3
    move-object v6, v0

    move-object v4, p0

    .line 358
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_9

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 362
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 364
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz p1, :cond_b

    array-length p1, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 366
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 368
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_d

    .line 370
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 373
    :cond_d
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 374
    fill-array-data p1, :array_0

    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 375
    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 404
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_f

    .line 405
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 407
    :cond_f
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 408
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    .line 409
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    .line 410
    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    .line 412
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 413
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 414
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p3, p1, v3, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Landroid/text/StaticLayout;FI)V

    aput-object p3, p2, v1

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object p2, p1, v1

    iget p2, p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 416
    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    .line 420
    :cond_10
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 421
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    .line 422
    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 423
    iput v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    .line 425
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTextColor(I)V
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 803
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
