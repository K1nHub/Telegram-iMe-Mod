.class final Lcom/google/android/exoplayer2/effect/HslProcessor;
.super Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
.source "HslProcessor.java"


# static fields
.field private static final FRAGMENT_SHADER_PATH:Ljava/lang/String; = "shaders/fragment_shader_hsl_es2.glsl"

.field private static final VERTEX_SHADER_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es2.glsl"


# instance fields
.field private final glProgram:Lcom/google/android/exoplayer2/util/GlProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/HslAdjustment;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;-><init>(Z)V

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "HDR is not yet supported."

    .line 49
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    :try_start_0
    new-instance p3, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v1, "shaders/fragment_shader_hsl_es2.glsl"

    invoke-direct {p3, p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/HslProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->getNormalizedCoordinateBounds()[F

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "aFramePosition"

    .line 58
    invoke-virtual {p3, v1, p1, v0}, Lcom/google/android/exoplayer2/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    .line 63
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    const-string v0, "uTransformationMatrix"

    .line 64
    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const-string v0, "uTexTransformationMatrix"

    .line 65
    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 70
    iget p1, p2, Lcom/google/android/exoplayer2/effect/HslAdjustment;->hueAdjustmentDegrees:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const-string v0, "uHueAdjustmentDegrees"

    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatUniform(Ljava/lang/String;F)V

    .line 71
    iget p1, p2, Lcom/google/android/exoplayer2/effect/HslAdjustment;->saturationAdjustment:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const-string v1, "uSaturationAdjustment"

    invoke-virtual {p3, v1, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatUniform(Ljava/lang/String;F)V

    .line 72
    iget p1, p2, Lcom/google/android/exoplayer2/effect/HslAdjustment;->lightnessAdjustment:F

    div-float/2addr p1, v0

    const-string p2, "uLightnessAdjustment"

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatUniform(Ljava/lang/String;F)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
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

    .line 77
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

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/HslProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->use()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/HslProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexSampler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/HslProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/GlProgram;->bindAttributesAndUniforms()V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 88
    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    throw v0
.end method
