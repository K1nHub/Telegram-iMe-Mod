.class public Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;
.super Ljava/lang/Object;
.source "FragmentContextViewWavesDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;
    }
.end annotation


# instance fields
.field private amplitude:F

.field private amplitude2:F

.field private animateAmplitudeDiff:F

.field private animateAmplitudeDiff2:F

.field private animateToAmplitude:F

.field currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field private lastUpdateTime:J

.field lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

.field paint:Landroid/graphics/Paint;

.field parents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field path:Landroid/graphics/Path;

.field pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field progressToState:F

.field states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 29
    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 47
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 48
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 51
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkColors()V
    .locals 3

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 250
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->checkColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(IZ)V
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v0, :cond_1

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 266
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    :goto_1
    return-void
.end method


# virtual methods
.method public addParent(Landroid/view/View;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V
    .locals 20

    move-object/from16 v0, p0

    .line 62
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->checkColors()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p6, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    cmpl-float v2, p2, p4

    if-lez v2, :cond_2

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    .line 72
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-ne v4, v11, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-ne v4, v11, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 76
    iget-wide v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    sub-long v4, v2, v4

    .line 77
    iput-wide v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    const-wide/16 v2, 0x14

    cmp-long v6, v4, v2

    if-lez v6, :cond_6

    const-wide/16 v2, 0x11

    goto :goto_2

    :cond_6
    move-wide v2, v4

    :goto_2
    const-wide/16 v4, 0x3

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    move-wide v14, v2

    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    move v13, v1

    move-wide v14, v2

    :goto_3
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v13, :cond_f

    .line 86
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_a

    .line 87
    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    long-to-float v4, v14

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_8

    cmpl-float v2, v2, v1

    if-lez v2, :cond_9

    .line 90
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    goto :goto_4

    :cond_8
    cmpg-float v2, v2, v1

    if-gez v2, :cond_9

    .line 94
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    .line 97
    :cond_9
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 100
    :cond_a
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_d

    .line 101
    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    long-to-float v4, v14

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_b

    cmpl-float v2, v2, v1

    if-lez v2, :cond_c

    .line 104
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    goto :goto_5

    :cond_b
    cmpg-float v2, v2, v1

    if-gez v2, :cond_c

    .line 108
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    .line 111
    :cond_c
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 114
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v1, :cond_f

    .line 115
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    long-to-float v2, v14

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_e

    .line 117
    iput v8, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    const/4 v1, 0x0

    .line 118
    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 120
    :cond_e
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_f
    const/4 v7, 0x0

    :goto_6
    const/4 v6, 0x2

    if-ge v7, v6, :cond_19

    if-nez v7, :cond_10

    .line 125
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v1, :cond_10

    move v10, v7

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    goto/16 :goto_b

    :cond_10
    if-nez v7, :cond_11

    .line 130
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    sub-float v1, v8, v1

    .line 131
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    move/from16 v16, v1

    const/16 v18, 0x2

    goto :goto_9

    .line 133
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v1, :cond_12

    return-void

    .line 136
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v2, :cond_13

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    move/from16 v16, v2

    goto :goto_7

    :cond_13
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_7
    if-eqz v13, :cond_14

    sub-float v2, p4, p2

    float-to-int v2, v2

    sub-float v3, p3, p1

    float-to-int v3, v3

    .line 138
    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    move/from16 v17, v4

    move-wide v4, v14

    const/16 v18, 0x2

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->update(IIJF)V

    goto :goto_8

    :cond_14
    const/16 v18, 0x2

    .line 140
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    .line 143
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iput v9, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 144
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 146
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 147
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 149
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 150
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    if-ne v7, v11, :cond_15

    if-eqz v13, :cond_15

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 155
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 183
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42980000    # 76.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x6

    .line 184
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float v2, v2, v3

    .line 185
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float v17, v1, v3

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v3, p2, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    move v10, v7

    move-object/from16 v7, v18

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v8, p2

    const/16 v19, 0x0

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 187
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v3, p2, v17

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    const/16 v1, 0xff

    if-ne v10, v11, :cond_16

    if-eqz v12, :cond_16

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    :cond_16
    if-ne v10, v11, :cond_17

    .line 193
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    .line 195
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_a
    if-ne v10, v11, :cond_18

    if-eqz v12, :cond_18

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/16 v1, 0x12

    .line 199
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    sub-float v2, p4, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, p2, v2

    sub-float v3, p3, p1

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    mul-float v3, v3, v16

    .line 202
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 203
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v9, p5

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 206
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p2

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 207
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 209
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p2

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    :goto_b
    add-int/lit8 v7, v10, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_19
    return-void
.end method

.method public removeParent(Landroid/view/View;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :cond_0
    return-void
.end method

.method public setAmplitude(F)V
    .locals 3

    .line 272
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    .line 273
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    sub-float v1, p1, v0

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    .line 274
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    return-void
.end method

.method public updateState(Z)V
    .locals 6

    .line 292
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 294
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 295
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 296
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v1, :cond_2

    .line 300
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v3, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    const/4 v0, 0x3

    .line 302
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 305
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 308
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 309
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    :cond_6
    :goto_0
    return-void
.end method
