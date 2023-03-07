.class final Lcom/google/android/exoplayer2/effect/ContrastProcessor;
.super Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
.source "ContrastProcessor.java"


# static fields
.field private static final FRAGMENT_SHADER_PATH:Ljava/lang/String; = "shaders/fragment_shader_contrast_es2.glsl"

.field private static final VERTEX_SHADER_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es2.glsl"


# instance fields
.field private final glProgram:Lcom/google/android/exoplayer2/util/GlProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/Contrast;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;-><init>(Z)V

    .line 47
    iget p2, p2, Lcom/google/android/exoplayer2/effect/Contrast;->contrast:F

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p3, p2

    const v0, 0x3f800347    # 1.0001f

    sub-float/2addr v0, p2

    div-float/2addr p3, v0

    .line 50
    :try_start_0
    new-instance p2, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v1, "shaders/fragment_shader_contrast_es2.glsl"

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->getNormalizedCoordinateBounds()[F

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "aFramePosition"

    .line 56
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/exoplayer2/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    .line 61
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    const-string v0, "uTransformationMatrix"

    .line 62
    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string v0, "uTexTransformationMatrix"

    .line 63
    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string p1, "uContrastFactor"

    .line 64
    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatUniform(Ljava/lang/String;F)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 52
    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public configure(II)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public drawFrame(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->use()V

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexSampler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/GlProgram;->bindAttributesAndUniforms()V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 80
    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    throw v0
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->release()V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->delete()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
