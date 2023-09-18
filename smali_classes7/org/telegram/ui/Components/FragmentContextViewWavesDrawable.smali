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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 32
    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 50
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 51
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 54
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
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

    .line 197
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->checkColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(IZ)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v0, :cond_1

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 209
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 214
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    :goto_1
    return-void
.end method


# virtual methods
.method public addParent(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V
    .locals 20

    move-object/from16 v0, p0

    .line 65
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->checkColors()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p6, :cond_1

    :cond_0
    move v1, v10

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v11

    :goto_0
    cmpl-float v2, p2, p4

    if-lez v2, :cond_2

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    .line 75
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
    move v12, v11

    goto :goto_1

    :cond_5
    move v12, v10

    :goto_1
    if-eqz v1, :cond_7

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 79
    iget-wide v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    sub-long v4, v2, v4

    .line 80
    iput-wide v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    const-wide/16 v2, 0x14

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x11

    goto :goto_2

    :cond_6
    move-wide v2, v4

    :goto_2
    const-wide/16 v4, 0x3

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    move-wide v14, v2

    move v13, v10

    goto :goto_3

    :cond_7
    move v13, v1

    move-wide v14, v2

    :goto_3
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v13, :cond_f

    .line 89
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_a

    .line 90
    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    long-to-float v4, v14

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_8

    cmpl-float v2, v2, v1

    if-lez v2, :cond_9

    .line 93
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    goto :goto_4

    :cond_8
    cmpg-float v2, v2, v1

    if-gez v2, :cond_9

    .line 97
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    .line 100
    :cond_9
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 103
    :cond_a
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_d

    .line 104
    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    long-to-float v4, v14

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_b

    cmpl-float v2, v2, v1

    if-lez v2, :cond_c

    .line 107
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    goto :goto_5

    :cond_b
    cmpg-float v2, v2, v1

    if-gez v2, :cond_c

    .line 111
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    .line 114
    :cond_c
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 117
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v1, :cond_f

    .line 118
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    long-to-float v2, v14

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_e

    .line 120
    iput v8, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    const/4 v1, 0x0

    .line 121
    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 123
    :cond_e
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_f
    move v7, v10

    :goto_6
    const/4 v6, 0x2

    if-ge v7, v6, :cond_1a

    if-nez v7, :cond_10

    .line 128
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v1, :cond_10

    move v10, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_c

    :cond_10
    if-nez v7, :cond_11

    .line 133
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    sub-float v1, v8, v1

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    move/from16 v16, v1

    move/from16 v18, v6

    goto :goto_9

    .line 136
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v1, :cond_12

    return-void

    .line 139
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v2, :cond_13

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    move/from16 v16, v2

    goto :goto_7

    :cond_13
    move/from16 v16, v8

    :goto_7
    if-eqz v13, :cond_14

    sub-float v2, p4, p2

    float-to-int v2, v2

    sub-float v3, p3, p1

    float-to-int v3, v3

    .line 141
    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    move/from16 v17, v4

    move-wide v4, v14

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->update(IIJF)V

    goto :goto_8

    :cond_14
    move/from16 v18, v6

    .line 143
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    .line 146
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iput v9, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 147
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 149
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 150
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

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 152
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    if-ne v7, v11, :cond_15

    if-eqz v13, :cond_15

    .line 156
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 157
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 158
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    :cond_15
    const/16 v1, 0x200

    .line 161
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 162
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42980000    # 76.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x6

    .line 163
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float/2addr v2, v3

    .line 164
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float v17, v1, v3

    .line 165
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

    move/from16 v18, v8

    move/from16 v8, p2

    move/from16 v19, v9

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 166
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v3, p2, v17

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_a

    :cond_16
    move v10, v7

    move/from16 v18, v8

    move/from16 v19, v9

    :goto_a
    const/16 v1, 0xff

    if-ne v10, v11, :cond_17

    if-eqz v12, :cond_17

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    :cond_17
    if-ne v10, v11, :cond_18

    .line 172
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    .line 174
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_b
    if-ne v10, v11, :cond_19

    if-eqz v12, :cond_19

    .line 177
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/16 v1, 0x12

    .line 178
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

    mul-float/2addr v3, v4

    mul-float v3, v3, v16

    .line 181
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 182
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v9, p5

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 185
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

    .line 186
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 188
    :cond_19
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

    :goto_c
    add-int/lit8 v7, v10, 0x1

    move/from16 v8, v18

    move/from16 v9, v19

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_1a
    return-void
.end method

.method public removeParent(Landroid/view/View;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :cond_0
    return-void
.end method

.method public setAmplitude(F)V
    .locals 3

    .line 220
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    .line 221
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    sub-float v1, p1, v0

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    return-void
.end method

.method public updateState(Z)V
    .locals 6

    .line 240
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 243
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

    .line 244
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_5

    .line 247
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v1, :cond_2

    .line 248
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

    .line 249
    invoke-virtual {v0, v3, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    const/4 v0, 0x3

    .line 250
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 253
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    goto :goto_0

    .line 256
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 257
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    :cond_6
    :goto_0
    return-void
.end method
