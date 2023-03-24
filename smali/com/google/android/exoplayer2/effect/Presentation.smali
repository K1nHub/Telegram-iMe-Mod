.class public final Lcom/google/android/exoplayer2/effect/Presentation;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/MatrixTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/Presentation$Layout;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_UNSET:F = -1.0f

.field public static final LAYOUT_SCALE_TO_FIT:I = 0x0

.field public static final LAYOUT_SCALE_TO_FIT_WITH_CROP:I = 0x1

.field public static final LAYOUT_STRETCH_TO_FIT:I = 0x2


# instance fields
.field private final layout:I

.field private outputHeight:F

.field private outputWidth:F

.field private requestedAspectRatio:F

.field private final requestedHeightPixels:I

.field private final requestedWidthPixels:I

.field private transformationMatrix:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>(IIFI)V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "width and aspect ratio should not both be set"

    .line 167
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 171
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedWidthPixels:I

    .line 172
    iput p2, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedHeightPixels:I

    .line 173
    iput p3, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    .line 174
    iput p4, p0, Lcom/google/android/exoplayer2/effect/Presentation;->layout:I

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    .line 177
    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    .line 178
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private applyAspectRatio()V
    .locals 6

    .line 217
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    iget v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    div-float v2, v0, v1

    .line 218
    iget v3, p0, Lcom/google/android/exoplayer2/effect/Presentation;->layout:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    .line 219
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    div-float/2addr v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    iget v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    div-float/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    iget v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 227
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    div-float/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 229
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    iget v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    div-float/2addr v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 232
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    iget v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 235
    iget v3, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    mul-float/2addr v1, v3

    .line 236
    iput v1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    goto :goto_0

    :cond_4
    div-float/2addr v0, v3

    .line 238
    iput v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    :cond_5
    :goto_0
    return-void
.end method

.method private static checkLayout(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid layout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static createForAspectRatio(FI)Lcom/google/android/exoplayer2/effect/Presentation;
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 118
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aspect ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " must be positive or unset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 121
    invoke-static {p1}, Lcom/google/android/exoplayer2/effect/Presentation;->checkLayout(I)V

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/effect/Presentation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/google/android/exoplayer2/effect/Presentation;-><init>(IIFI)V

    return-object v0
.end method

.method public static createForHeight(I)Lcom/google/android/exoplayer2/effect/Presentation;
    .locals 4

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/effect/Presentation;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/exoplayer2/effect/Presentation;-><init>(IIFI)V

    return-object v0
.end method

.method public static createForWidthAndHeight(III)Lcom/google/android/exoplayer2/effect/Presentation;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 151
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " must be positive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 152
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    invoke-static {p2}, Lcom/google/android/exoplayer2/effect/Presentation;->checkLayout(I)V

    .line 154
    new-instance v0, Lcom/google/android/exoplayer2/effect/Presentation;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/exoplayer2/effect/Presentation;-><init>(IIFI)V

    return-object v0
.end method


# virtual methods
.method public configure(II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 183
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "inputHeight must be positive"

    .line 184
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    int-to-float p1, p1

    .line 187
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    int-to-float p1, p2

    .line 188
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    .line 190
    iget p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedWidthPixels:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedHeightPixels:I

    if-eq v0, p2, :cond_2

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 191
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    .line 194
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedAspectRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    .line 195
    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/Presentation;->applyAspectRatio()V

    .line 199
    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedHeightPixels:I

    if-eq p1, p2, :cond_5

    .line 200
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->requestedWidthPixels:I

    if-eq v0, p2, :cond_4

    int-to-float p2, v0

    .line 201
    iput p2, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    goto :goto_2

    :cond_4
    int-to-float p2, p1

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    :goto_2
    int-to-float p1, p1

    .line 205
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    .line 207
    :cond_5
    iget p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputWidth:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p0, Lcom/google/android/exoplayer2/effect/Presentation;->outputHeight:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getGlMatrixArray(J)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/MatrixTransformation$-CC;->$default$getGlMatrixArray(Lcom/google/android/exoplayer2/effect/MatrixTransformation;J)[F

    move-result-object p1

    return-object p1
.end method

.method public getMatrix(J)Landroid/graphics/Matrix;
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/Presentation;->transformationMatrix:Landroid/graphics/Matrix;

    const-string p2, "configure must be called first"

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    return-object p1
.end method

.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method
