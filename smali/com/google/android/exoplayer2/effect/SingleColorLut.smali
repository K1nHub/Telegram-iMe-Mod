.class public Lcom/google/android/exoplayer2/effect/SingleColorLut;
.super Ljava/lang/Object;
.source "SingleColorLut.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/ColorLut;


# instance fields
.field private final lut:Landroid/graphics/Bitmap;

.field private lutTextureId:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lut:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lutTextureId:I

    return-void
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/effect/SingleColorLut;
    .locals 5

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "LUT needs to be in a N x N^2 format, received %d x %d."

    .line 65
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "Color representation needs to be ARGB_8888."

    .line 68
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/effect/SingleColorLut;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/effect/SingleColorLut;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createFromCube([[[I)Lcom/google/android/exoplayer2/effect/SingleColorLut;
    .locals 5

    .line 43
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    aget-object v0, p0, v2

    array-length v0, v0

    if-lez v0, :cond_0

    aget-object v0, p0, v2

    aget-object v0, v0, v2

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "LUT must have three dimensions."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    array-length v0, p0

    aget-object v3, p0, v2

    array-length v3, v3

    if-ne v0, v3, :cond_1

    array-length v0, p0

    aget-object v3, p0, v2

    aget-object v3, v3, v2

    array-length v3, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p0

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aget-object v4, p0, v2

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aget-object v4, p0, v2

    aget-object v2, v4, v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "All three dimensions of a LUT must match, received %d x %d x %d."

    .line 48
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/effect/SingleColorLut;

    invoke-static {p0}, Lcom/google/android/exoplayer2/effect/SingleColorLut;->transformCubeIntoBitmap([[[I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/effect/SingleColorLut;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static storeLutAsTexture(Landroid/graphics/Bitmap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 165
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->createTexture(IIZ)I

    move-result v0

    const/16 v1, 0xde1

    .line 167
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 168
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return v0
.end method

.method private static transformCubeIntoBitmap([[[I)Landroid/graphics/Bitmap;
    .locals 9

    .line 109
    array-length v0, p0

    mul-int v1, v0, v0

    mul-int v2, v1, v0

    .line 110
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_0

    .line 115
    aget-object v7, p0, v4

    aget-object v7, v7, v5

    aget v7, v7, v6

    mul-int v8, v0, v4

    add-int/2addr v8, v5

    mul-int v8, v8, v0

    add-int/2addr v8, v6

    .line 117
    aput v7, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLength(J)I
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lut:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    return p1
.end method

.method public getLutTextureId(J)I
    .locals 0

    .line 132
    iget p1, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lutTextureId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "The LUT has not been stored as a texture in OpenGL yet. You must to call #toGlTextureProcessor() first."

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 136
    iget p1, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lutTextureId:I

    return p1
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 146
    iget v0, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lutTextureId:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteTexture(I)V

    return-void
.end method

.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/SingleColorLut;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    xor-int/lit8 v0, p2, 0x1

    const-string v1, "HDR is currently not supported."

    .line 152
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lut:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/google/android/exoplayer2/effect/SingleColorLut;->storeLutAsTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/effect/SingleColorLut;->lutTextureId:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/ColorLut;Z)V

    return-object v0

    :catch_0
    move-exception p1

    .line 157
    new-instance p2, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    const-string v0, "Could not store the LUT as a texture."

    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
