.class public Lorg/telegram/ui/Components/Paint/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private texture:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static generateTexture(II)I
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 96
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 97
    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 99
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 101
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 102
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    .line 103
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    .line 104
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v10, 0x1908

    const/4 v9, 0x0

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v6, v10

    move v7, p0

    move v8, p1

    .line 109
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return v0
.end method

.method public static generateTexture(Lorg/telegram/ui/Components/Size;)I
    .locals 1

    .line 90
    iget v0, p0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v0, v0

    iget p0, p0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int p0, p0

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cleanResources(Z)V
    .locals 4

    .line 30
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 35
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 36
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public texture()I
    .locals 14

    .line 48
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz v0, :cond_0

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 57
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 58
    aget v0, v2, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    const/16 v2, 0xde1

    .line 60
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 62
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 63
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    .line 64
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 65
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v11, v0, v10

    .line 69
    new-array v12, v11, [I

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v12

    move v5, v0

    move v8, v0

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    :goto_0
    const v13, -0xff0100

    if-ge v2, v11, :cond_2

    .line 72
    aget v3, v12, v2

    and-int v4, v3, v13

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 73
    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    .line 75
    invoke-static {v12}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v11

    move v5, v0

    move v6, v10

    move-object v10, v11

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    and-int v2, v0, v13

    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x4

    .line 80
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 81
    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    .line 82
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 84
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 86
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    return v0

    :cond_4
    :goto_1
    return v1
.end method
