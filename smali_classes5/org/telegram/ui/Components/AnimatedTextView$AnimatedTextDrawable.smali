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

.field private bounds:Landroid/graphics/Rect;

.field private currentHeight:F

.field private currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

.field private currentText:Ljava/lang/CharSequence;

.field private currentWidth:F

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

.field private preserveIndex:Z

.field private splitByWords:Z

.field private startFromEnd:Z

.field private t:F

.field private textPaint:Landroid/text/TextPaint;

.field private toSetText:Ljava/lang/CharSequence;

.field private toSetTextMoveDown:Z


# direct methods
.method public static synthetic $r8$lambda$1D76KzsS7MW8WMSSdx81royeYos(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$1(Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gA7OZy6edgEi1hbrS3D4n4iBH88(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$jT2BqARZ9q5y6DvhN7c7OMNSHFQ(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$2(Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwzna1lv2ynjqA8CS04Ee0Au4K4(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->lambda$setText$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    .line 41
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    .line 67
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    const-wide/16 v0, 0x1c2

    .line 73
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    .line 74
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    const/16 v0, 0xff

    .line 77
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    .line 94
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->preserveIndex:Z

    .line 95
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->startFromEnd:Z

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;)[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->onAnimationFinishListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    return p0
.end method

.method private diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 528
    iget-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->preserveIndex:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_13

    .line 531
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 532
    iget-boolean v9, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->startFromEnd:Z

    if-eqz v9, :cond_b

    .line 533
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_0
    if-gt v10, v6, :cond_5

    .line 536
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v10

    sub-int/2addr v14, v7

    .line 537
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    sub-int/2addr v15, v10

    sub-int/2addr v15, v7

    if-ltz v14, :cond_0

    if-ltz v15, :cond_0

    .line 538
    invoke-static {v2, v1, v14, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-ne v11, v14, :cond_1

    if-ne v10, v6, :cond_4

    :cond_1
    sub-int v12, v10, v12

    if-lez v12, :cond_3

    .line 541
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    move v11, v13

    .line 544
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v11

    :cond_3
    move v12, v10

    move v11, v14

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 550
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v6

    .line 551
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int/2addr v11, v6

    if-lez v10, :cond_6

    .line 553
    invoke-interface {v2, v8, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v4, v6, v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_6
    if-lez v11, :cond_7

    .line 556
    invoke-interface {v1, v8, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6, v8, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 558
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_3
    if-ltz v6, :cond_1d

    .line 559
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 560
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_8

    if-eqz v13, :cond_a

    goto :goto_4

    :cond_8
    if-nez v13, :cond_a

    .line 561
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-le v8, v12, :cond_9

    add-int v8, v10, v7

    .line 562
    invoke-interface {v2, v10, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v3, v12, v10, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_9
    add-int v8, v11, v7

    .line 564
    invoke-interface {v1, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v3, v12, v11, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_a
    add-int v8, v10, v7

    .line 567
    invoke-interface {v2, v10, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v4, v12, v10, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    add-int v8, v11, v7

    .line 568
    invoke-interface {v1, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v5, v12, v11, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :goto_5
    add-int/2addr v10, v7

    add-int/2addr v11, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_6
    if-gt v9, v6, :cond_11

    if-ge v9, v6, :cond_c

    .line 575
    invoke-static {v2, v1, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    if-ne v10, v12, :cond_d

    if-ne v9, v6, :cond_10

    :cond_d
    sub-int v13, v9, v11

    if-lez v13, :cond_f

    if-eqz v10, :cond_e

    .line 579
    invoke-interface {v2, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v3, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_8

    .line 581
    :cond_e
    invoke-interface {v2, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v4, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 582
    invoke-interface {v1, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v5, v10, v11, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_f
    :goto_8
    move v11, v9

    move v10, v12

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 589
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-lez v3, :cond_12

    .line 590
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v4, v3, v6, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    .line 592
    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v6

    if-lez v2, :cond_1d

    .line 593
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v5, v2, v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_c

    .line 600
    :cond_13
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-gt v9, v6, :cond_1d

    if-ge v9, v6, :cond_14

    .line 602
    invoke-static {v2, v1, v9, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->partEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x1

    goto :goto_a

    :cond_14
    const/4 v14, 0x0

    :goto_a
    if-ne v11, v14, :cond_15

    if-ne v9, v6, :cond_1b

    :cond_15
    if-ne v9, v6, :cond_16

    .line 605
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 606
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    :cond_16
    sub-int v15, v9, v12

    sub-int v8, v10, v13

    if-gtz v15, :cond_17

    if-lez v8, :cond_1a

    :cond_17
    if-ne v15, v8, :cond_18

    if-eqz v11, :cond_18

    .line 612
    invoke-interface {v2, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v3, v8, v12, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    goto :goto_b

    :cond_18
    if-lez v15, :cond_19

    .line 616
    invoke-interface {v2, v12, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v4, v11, v12, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_19
    if-lez v8, :cond_1a

    .line 620
    invoke-interface {v1, v13, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v5, v8, v13, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;->run(Ljava/lang/CharSequence;II)V

    :cond_1a
    :goto_b
    move v12, v9

    move v13, v10

    move v11, v14

    :cond_1b
    if-eqz v14, :cond_1c

    add-int/lit8 v10, v10, 0x1

    :cond_1c
    add-int/2addr v9, v7

    const/4 v8, 0x0

    goto :goto_9

    :cond_1d
    :goto_c
    return-void
.end method

.method private synthetic lambda$setText$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 271
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    float-to-double v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    sub-int/2addr p4, p5

    invoke-direct {p0, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p3

    .line 272
    new-instance p4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p5, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p4, p0, p3, p5, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V

    .line 273
    new-instance p5, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p5, p0, p3, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V

    .line 274
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget p1, p4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    .line 277
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    add-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 278
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    add-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 279
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    .line 280
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    return-void
.end method

.method private synthetic lambda$setText$1(Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 283
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    sub-int/2addr p3, p4

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p2

    .line 284
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    const/4 v0, -0x1

    invoke-direct {p3, p0, p2, p4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V

    .line 285
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget p3, p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 287
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    return-void
.end method

.method private synthetic lambda$setText$2(Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 290
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    sub-int/2addr p3, p4

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p2

    .line 291
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    const/4 v0, -0x1

    invoke-direct {p3, p0, p2, p4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V

    .line 292
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget p3, p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 294
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    return-void
.end method

.method private synthetic lambda$setText$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    .line 318
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 12

    if-gtz p2, :cond_0

    .line 389
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    move v11, p2

    .line 391
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    .line 392
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1, p2, v0, v1, v11}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 393
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 394
    invoke-virtual {p1, p2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 395
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 396
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 397
    invoke-virtual {p1, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 400
    :cond_1
    new-instance p2, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 402
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

    .line 519
    instance-of v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    if-eqz v0, :cond_3

    .line 520
    check-cast p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->wordAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 521
    check-cast p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;->wordAt(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 522
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_6

    :cond_4
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 524
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 111
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 112
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, -0x1

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v4, :cond_10

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v4, v9

    if-eqz v10, :cond_10

    .line 113
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    invoke-static {v10, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 114
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    int-to-float v3, v3

    sub-float/2addr v3, v10

    div-float/2addr v3, v7

    .line 115
    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 116
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v11, v10

    const/high16 v12, -0x40800000    # -1.0f

    if-ge v3, v11, :cond_9

    .line 117
    aget-object v10, v10, v3

    .line 118
    iget v11, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    .line 119
    iget v13, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    if-ltz v11, :cond_2

    .line 121
    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v12, :cond_0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v14, :cond_0

    .line 122
    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v15, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v13, v15

    sub-float v13, v14, v13

    .line 124
    :cond_0
    iget-object v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object v14, v14, v11

    .line 125
    iget v15, v14, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    if-eqz v12, :cond_1

    .line 126
    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v12, :cond_1

    .line 127
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v5, v14, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v15, v5

    sub-float v15, v12, v15

    .line 129
    :cond_1
    iget v5, v14, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v15, v5

    iget v5, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v13, v5

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v15, v13, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 130
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v13, 0x0

    goto :goto_1

    .line 132
    :cond_2
    iget-boolean v5, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v5, :cond_3

    .line 133
    iget v5, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v14, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v13, v14

    sub-float v13, v5, v13

    .line 135
    :cond_3
    iget v5, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float v5, v13, v5

    .line 136
    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->getTextSize()F

    move-result v13

    neg-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    mul-float v13, v13, v14

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    sub-float v15, v9, v14

    mul-float v13, v13, v15

    iget-boolean v15, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    if-eqz v15, :cond_4

    const/high16 v12, 0x3f800000    # 1.0f

    :cond_4
    mul-float v13, v13, v12

    .line 137
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v15, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    int-to-float v15, v15

    mul-float v15, v15, v14

    float-to-int v14, v15

    invoke-virtual {v12, v14}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 139
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-ltz v11, :cond_5

    move v11, v4

    goto :goto_2

    .line 140
    :cond_5
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 141
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v14, v12, -0x4

    if-eq v14, v8, :cond_8

    or-int/lit8 v14, v12, -0x6

    if-ne v14, v8, :cond_6

    :goto_3
    int-to-float v12, v2

    sub-float/2addr v12, v11

    :goto_4
    add-float/2addr v5, v12

    goto :goto_5

    :cond_6
    or-int/lit8 v12, v12, -0x2

    if-ne v12, v8, :cond_7

    int-to-float v12, v2

    sub-float/2addr v12, v11

    div-float/2addr v12, v7

    goto :goto_4

    .line 146
    :cond_7
    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v12, :cond_8

    goto :goto_3

    .line 150
    :cond_8
    :goto_5
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget-object v5, v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    .line 154
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v4, v3

    if-ge v5, v4, :cond_15

    .line 155
    aget-object v3, v3, v5

    .line 156
    iget v4, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    if-ltz v4, :cond_a

    goto :goto_b

    .line 160
    :cond_a
    iget v4, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 161
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    mul-float v6, v6, v10

    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    mul-float v6, v6, v10

    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    if-eqz v11, :cond_b

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    const/high16 v11, -0x40800000    # -1.0f

    :goto_7
    mul-float v6, v6, v11

    .line 162
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    int-to-float v13, v13

    sub-float v10, v9, v10

    mul-float v13, v13, v10

    float-to-int v10, v13

    invoke-virtual {v11, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget-boolean v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v10, :cond_c

    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v11, :cond_c

    .line 165
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v13, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v4, v13

    sub-float v4, v11, v4

    .line 167
    :cond_c
    iget v11, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v4, v11

    .line 168
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v13, v11, -0x4

    if-eq v13, v8, :cond_f

    or-int/lit8 v13, v11, -0x6

    if-ne v13, v8, :cond_d

    int-to-float v10, v2

    .line 170
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    :goto_8
    sub-float/2addr v10, v11

    :goto_9
    add-float/2addr v4, v10

    goto :goto_a

    :cond_d
    or-int/lit8 v11, v11, -0x2

    if-ne v11, v8, :cond_e

    int-to-float v10, v2

    .line 172
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    goto :goto_9

    :cond_e
    if-eqz v10, :cond_f

    .line 173
    iget-boolean v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v10, :cond_f

    int-to-float v10, v2

    .line 174
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    goto :goto_8

    .line 177
    :cond_f
    :goto_a
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    int-to-float v3, v3

    .line 182
    iget v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v3, :cond_15

    .line 184
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 185
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    array-length v3, v3

    if-ge v5, v3, :cond_15

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object v3, v3, v5

    .line 188
    iget v4, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 189
    iget-boolean v9, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    if-eqz v9, :cond_11

    iget-boolean v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v10, :cond_11

    .line 190
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v11, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    add-float/2addr v4, v11

    sub-float v4, v10, v4

    .line 192
    :cond_11
    iget v10, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    sub-float/2addr v4, v10

    .line 193
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    or-int/lit8 v11, v10, -0x4

    if-eq v11, v8, :cond_14

    or-int/lit8 v11, v10, -0x6

    if-ne v11, v8, :cond_12

    int-to-float v9, v2

    .line 195
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    :goto_d
    sub-float/2addr v9, v10

    :goto_e
    add-float/2addr v4, v9

    goto :goto_f

    :cond_12
    or-int/lit8 v10, v10, -0x2

    if-ne v10, v8, :cond_13

    int-to-float v9, v2

    .line 197
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v7

    goto :goto_e

    :cond_13
    if-eqz v9, :cond_14

    .line 198
    iget-boolean v9, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    if-nez v9, :cond_14

    int-to-float v9, v2

    .line 199
    iget v10, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    goto :goto_d

    .line 203
    :cond_14
    :goto_f
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 209
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentWidth()F
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    return v0

    .line 380
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    return-object v0
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

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 373
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 219
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

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 683
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    return-void
.end method

.method public setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 661
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveAmplitude:F

    .line 662
    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    .line 663
    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    .line 664
    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 704
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 698
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 657
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->gravity:I

    return-void
.end method

.method public setOnAnimationFinishListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->onAnimationFinishListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 9

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_d

    .line 238
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->allowCancel:Z

    if-eqz p2, :cond_3

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    .line 240
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 241
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    .line 245
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    return-void

    .line 249
    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 253
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 266
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    .line 270
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 282
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;)V

    .line 289
    new-instance v8, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;)V

    .line 297
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    if-eqz v0, :cond_6

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    :goto_1
    move-object v4, v0

    .line 298
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->splitByWords:Z

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$WordSequence;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    :goto_2
    move-object v5, v0

    move-object v3, p0

    .line 300
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz v0, :cond_8

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 303
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 305
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    if-eqz p1, :cond_a

    array-length p1, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 307
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 309
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 314
    :cond_c
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->moveDown:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 315
    fill-array-data p1, :array_0

    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 316
    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDelay:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 345
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_e

    .line 346
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    :cond_e
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 349
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetText:Ljava/lang/CharSequence;

    .line 350
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->toSetTextMoveDown:Z

    .line 351
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->t:F

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 353
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 354
    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 v3, -0x1

    invoke-direct {p3, p0, p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;-><init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V

    aput-object p3, p2, v1

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    aget-object p2, p1, v1

    iget p2, p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentWidth:F

    .line 356
    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentHeight:F

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isRTL:Z

    .line 359
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldParts:[Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;

    .line 360
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldText:Ljava/lang/CharSequence;

    .line 361
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldWidth:F

    .line 362
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->oldHeight:F

    .line 364
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTextColor(I)V
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 645
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->alpha:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
