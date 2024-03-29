.class public Lorg/telegram/ui/GroupCallActivity$WeavingState;
.super Ljava/lang/Object;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeavingState"
.end annotation


# instance fields
.field public currentState:I

.field private duration:F

.field private matrix:Landroid/graphics/Matrix;

.field public shader:Landroid/graphics/Shader;

.field private startX:F

.field private startY:F

.field private targetX:F

.field private targetY:F

.field private time:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 927
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    .line 928
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    .line 934
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->matrix:Landroid/graphics/Matrix;

    .line 938
    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    return-void
.end method

.method private setTarget()V
    .locals 5

    .line 978
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->isGradientState(I)Z

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x64

    if-eqz v0, :cond_0

    const v0, 0x3f59999a    # 0.85f

    .line 979
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 980
    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    goto :goto_0

    .line 981
    :cond_0
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 982
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    const v0, 0x3f333333    # 0.7f

    .line 983
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    goto :goto_0

    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    .line 985
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    .line 986
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    :goto_0
    return-void
.end method


# virtual methods
.method public update(IIIJF)V
    .locals 3

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->duration:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    .line 946
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x5dc

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->duration:F

    .line 947
    iput v1, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    .line 948
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 949
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->setTarget()V

    .line 951
    :cond_2
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->startX:F

    .line 952
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->startY:F

    .line 953
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->setTarget()V

    .line 955
    :cond_3
    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    long-to-float p4, p4

    const/high16 p5, 0x3f000000    # 0.5f

    sget v1, Lorg/telegram/ui/Components/BlobDrawable;->GRADIENT_SPEED_MIN:F

    add-float/2addr v1, p5

    mul-float/2addr v1, p4

    sget p5, Lorg/telegram/ui/Components/BlobDrawable;->GRADIENT_SPEED_MAX:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p5, v2

    mul-float/2addr p4, p5

    mul-float/2addr p4, p6

    add-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    .line 956
    iget p4, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->duration:F

    cmpl-float p5, v0, p4

    if-lez p5, :cond_4

    .line 957
    iput p4, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    .line 959
    :cond_4
    sget-object p5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget p6, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->time:F

    div-float/2addr p6, p4

    invoke-virtual {p5, p6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p4

    int-to-float p2, p2

    int-to-float p3, p3

    .line 960
    iget p5, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->startX:F

    iget p6, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetX:F

    sub-float/2addr p6, p5

    mul-float/2addr p6, p4

    add-float/2addr p5, p6

    mul-float/2addr p5, p3

    add-float/2addr p2, p5

    const/high16 p5, 0x43480000    # 200.0f

    sub-float/2addr p2, p5

    int-to-float p1, p1

    .line 961
    iget p6, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->startY:F

    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->targetY:F

    sub-float/2addr v0, p6

    mul-float/2addr v0, p4

    add-float/2addr p6, v0

    mul-float/2addr p3, p6

    add-float/2addr p1, p3

    sub-float/2addr p1, p5

    .line 964
    iget p3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->isGradientState(I)Z

    move-result p3

    if-eqz p3, :cond_5

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 967
    :cond_5
    iget p3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_6

    const/high16 p3, 0x40800000    # 4.0f

    goto :goto_0

    :cond_6
    const/high16 p3, 0x40200000    # 2.5f

    :goto_0
    const/16 p4, 0x7a

    .line 969
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    const/high16 p6, 0x43c80000    # 400.0f

    div-float/2addr p4, p6

    mul-float/2addr p4, p3

    .line 970
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 971
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 972
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->matrix:Landroid/graphics/Matrix;

    add-float/2addr p2, p5

    add-float/2addr p1, p5

    invoke-virtual {p3, p4, p4, p2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 974
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
