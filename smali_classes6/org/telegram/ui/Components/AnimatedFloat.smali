.class public Lorg/telegram/ui/Components/AnimatedFloat;
.super Ljava/lang/Object;
.source "AnimatedFloat.java"


# instance fields
.field private firstSet:Z

.field private invalidate:Ljava/lang/Runnable;

.field private parent:Landroid/view/View;

.field private startValue:F

.field private targetValue:F

.field private transition:Z

.field private transitionDelay:J

.field private transitionDuration:J

.field private transitionInterpolator:Landroid/animation/TimeInterpolator;

.field private transitionStart:J

.field private value:F


# direct methods
.method public constructor <init>(FLandroid/view/View;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 89
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 90
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 101
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 102
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    .line 103
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    .line 104
    iput-wide p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 105
    iput-object p7, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 110
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    .line 111
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    .line 112
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    .line 113
    iput-wide p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 114
    iput-object p7, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 41
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    .line 42
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 43
    iput-object p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 34
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 35
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 61
    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    .line 62
    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 63
    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 53
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    .line 54
    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 55
    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    .line 21
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 22
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    .line 75
    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    .line 76
    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    return v0
.end method

.method public getTransitionProgress()F
    .locals 6

    .line 169
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 173
    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getTransitionProgressInterpolated()F
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgress()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgress()F

    move-result v0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    return v0
.end method

.method public set(F)F
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result p1

    return p1
.end method

.method public set(FZ)F
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 130
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    const/4 p2, 0x1

    .line 135
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    .line 136
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    .line 137
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    .line 133
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    .line 140
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    if-eqz p1, :cond_7

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 142
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 143
    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long/2addr p1, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    cmp-long v2, p1, v4

    if-ltz v2, :cond_4

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    if-nez p1, :cond_3

    .line 145
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    iget p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    goto :goto_2

    .line 147
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    invoke-interface {p1, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p2, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    :cond_4
    :goto_2
    cmpl-float p1, v1, v3

    if-ltz p1, :cond_5

    .line 151
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    goto :goto_3

    .line 153
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 156
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 157
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_7
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    return p1
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    return-void
.end method
