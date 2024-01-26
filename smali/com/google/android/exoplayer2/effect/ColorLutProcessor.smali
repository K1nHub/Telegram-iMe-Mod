.class final Lcom/google/android/exoplayer2/effect/ColorLutProcessor;
.super Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
.source "ColorLutProcessor.java"


# static fields
.field private static final FRAGMENT_SHADER_PATH:Ljava/lang/String; = "shaders/fragment_shader_lut_es2.glsl"

.field private static final VERTEX_SHADER_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es2.glsl"


# instance fields
.field private final colorLut:Lcom/google/android/exoplayer2/effect/ColorLut;

.field private final glProgram:Lcom/google/android/exoplayer2/util/GlProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/ColorLut;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;-><init>(Z)V

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "LutProcessor does not support HDR colors."

    .line 50
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->colorLut:Lcom/google/android/exoplayer2/effect/ColorLut;

    .line 54
    :try_start_0
    new-instance p2, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string p3, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v0, "shaders/fragment_shader_lut_es2.glsl"

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->getNormalizedCoordinateBounds()[F

    move-result-object p1

    const/4 p3, 0x4

    const-string v0, "aFramePosition"

    .line 60
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    .line 65
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    const-string p3, "uTransformationMatrix"

    .line 66
    invoke-virtual {p2, p3, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string p3, "uTexTransformationMatrix"

    .line 67
    invoke-virtual {p2, p3, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
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

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public drawFrame(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->use()V

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexSampler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 80
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "uColorLut"

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->colorLut:Lcom/google/android/exoplayer2/effect/ColorLut;

    .line 81
    invoke-interface {v1, p2, p3}, Lcom/google/android/exoplayer2/effect/ColorLut;->getLutTextureId(J)I

    move-result v1

    const/4 v3, 0x1

    .line 80
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "uColorLutLength"

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->colorLut:Lcom/google/android/exoplayer2/effect/ColorLut;

    invoke-interface {v1, p2, p3}, Lcom/google/android/exoplayer2/effect/ColorLut;->getLength(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatUniform(Ljava/lang/String;F)V

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/GlProgram;->bindAttributesAndUniforms()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 85
    invoke-static {p1, v2, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 93
    invoke-super {p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->release()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->colorLut:Lcom/google/android/exoplayer2/effect/ColorLut;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/ColorLut;->release()V

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->delete()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
