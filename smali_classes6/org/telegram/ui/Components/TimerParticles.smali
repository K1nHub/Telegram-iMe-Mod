.class public Lorg/telegram/ui/Components/TimerParticles;
.super Ljava/lang/Object;
.source "TimerParticles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TimerParticles$Particle;
    }
.end annotation


# instance fields
.field private freeParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/TimerParticles$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnimationTime:J

.field private particles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/TimerParticles$Particle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/TimerParticles$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/TimerParticles$Particle;-><init>(Lorg/telegram/ui/Components/TimerParticles$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticles(J)V
    .locals 8

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 40
    iget-object v2, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TimerParticles$Particle;

    .line 41
    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->lifeTime:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_1

    .line 42
    iget-object v3, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    .line 43
    iget-object v3, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 50
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v5, v3

    iput v5, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    .line 51
    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->vx:F

    iget v5, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->velocity:F

    mul-float/2addr v4, v5

    long-to-float v6, p1

    mul-float/2addr v4, v6

    const/high16 v7, 0x43fa0000    # 500.0f

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    .line 52
    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->vy:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    .line 53
    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    add-float/2addr v3, v6

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 58
    iget-object v2, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 60
    iget-object v5, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/TimerParticles$Particle;

    const/high16 v6, 0x437f0000    # 255.0f

    .line 61
    iget v7, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    mul-float/2addr v7, v6

    mul-float v7, v7, p5

    float-to-int v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget v6, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v5, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v5, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v1, p4, v1

    float-to-double v1, v1

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v1, v4

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    neg-double v1, v1

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-double v9, v1

    float-to-double v11, v8

    mul-double/2addr v9, v11

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-double v13, v8

    add-double/2addr v9, v13

    double-to-float v8, v9

    mul-double/2addr v11, v6

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    float-to-double v9, v9

    add-double/2addr v11, v9

    double-to-float v9, v11

    move v10, v3

    :goto_1
    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 72
    iget-object v11, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 73
    iget-object v11, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/TimerParticles$Particle;

    .line 74
    iget-object v12, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_1
    new-instance v11, Lorg/telegram/ui/Components/TimerParticles$Particle;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/TimerParticles$Particle;-><init>(Lorg/telegram/ui/Components/TimerParticles$1;)V

    .line 78
    :goto_2
    iput v8, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    .line 79
    iput v9, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    .line 81
    sget-object v12, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v12

    add-int/lit8 v12, v12, -0x46

    int-to-double v12, v12

    mul-double/2addr v12, v4

    const-wide/16 v14, 0x0

    cmpg-double v14, v12, v14

    if-gez v14, :cond_2

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v12, v14

    .line 85
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v1

    sub-double v14, v14, v16

    double-to-float v14, v14

    iput v14, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->vx:F

    .line 86
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    add-double/2addr v14, v12

    double-to-float v12, v14

    iput v12, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->vy:F

    const/high16 v12, 0x3f800000    # 1.0f

    .line 88
    iput v12, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    const/4 v12, 0x0

    .line 89
    iput v12, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    .line 91
    sget-object v12, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v12

    add-int/lit16 v12, v12, 0x190

    int-to-float v12, v12

    iput v12, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->lifeTime:F

    const/high16 v12, 0x41a00000    # 20.0f

    .line 92
    sget-object v13, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13}, Ljava/security/SecureRandom;->nextFloat()F

    move-result v13

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v12

    iput v13, v11, Lorg/telegram/ui/Components/TimerParticles$Particle;->velocity:F

    .line 93
    iget-object v12, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 96
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x14

    .line 97
    iget-wide v5, v0, Lorg/telegram/ui/Components/TimerParticles;->lastAnimationTime:J

    sub-long v5, v1, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 98
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/TimerParticles;->updateParticles(J)V

    .line 99
    iput-wide v1, v0, Lorg/telegram/ui/Components/TimerParticles;->lastAnimationTime:J

    return-void
.end method
