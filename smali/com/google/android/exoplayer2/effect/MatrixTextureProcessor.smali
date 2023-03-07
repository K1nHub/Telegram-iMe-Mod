.class final Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
.super Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
.source "MatrixTextureProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;


# static fields
.field private static final BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

.field private static final BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

.field private static final FRAGMENT_SHADER_OETF_ES3_PATH:Ljava/lang/String; = "shaders/fragment_shader_oetf_es3.glsl"

.field private static final FRAGMENT_SHADER_TRANSFORMATION_EXTERNAL_YUV_ES3_PATH:Ljava/lang/String; = "shaders/fragment_shader_transformation_external_yuv_es3.glsl"

.field private static final FRAGMENT_SHADER_TRANSFORMATION_PATH:Ljava/lang/String; = "shaders/fragment_shader_transformation_es2.glsl"

.field private static final FRAGMENT_SHADER_TRANSFORMATION_SDR_EXTERNAL_PATH:Ljava/lang/String; = "shaders/fragment_shader_transformation_sdr_external_es2.glsl"

.field private static final FRAGMENT_SHADER_TRANSFORMATION_SDR_OETF_ES2_PATH:Ljava/lang/String; = "shaders/fragment_shader_transformation_sdr_oetf_es2.glsl"

.field private static final NDC_SQUARE:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation
.end field

.field private static final VERTEX_SHADER_TRANSFORMATION_ES3_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es3.glsl"

.field private static final VERTEX_SHADER_TRANSFORMATION_PATH:Ljava/lang/String; = "shaders/vertex_shader_transformation_es2.glsl"


# instance fields
.field private final compositeRgbMatrixArray:[F

.field private final compositeTransformationMatrixArray:[F

.field private final glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

.field private final matrixTransformations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private final rgbMatrices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final rgbMatrixCache:[[F

.field private final tempResultMatrix:[F

.field private final transformationMatrixCache:[[F

.field private final useHdr:Z

.field private visiblePolygon:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 70
    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    .line 71
    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->NDC_SQUARE:Lcom/google/common/collect/ImmutableList;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 80
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    new-array v0, v0, [F

    .line 85
    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x41d77319    # -0.1646f
        0x3ff0d1b7    # 1.8814f
        0x3fbcbfb1    # 1.4746f
        -0x40edb8bb    # -0.5714f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f959e84    # 1.1689f
        0x3f959e84    # 1.1689f
        0x3f959e84    # 1.1689f
        0x0
        -0x41bf62b7    # -0.1881f
        0x40099ce0
        0x3fd7b7e9    # 1.6853f
        -0x40d8d4fe    # -0.653f
        0x0
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/util/GlProgram;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/GlProgram;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;Z)V"
        }
    .end annotation

    .line 349
    const-class v0, F

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;-><init>(Z)V

    .line 350
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    .line 351
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    .line 352
    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    .line 353
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->useHdr:Z

    .line 355
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 p2, 0x2

    new-array p4, p2, [I

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput v2, p4, v1

    const/4 v3, 0x0

    aput p1, p4, v3

    invoke-static {v0, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->transformationMatrixCache:[[F

    .line 356
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    new-array p2, p2, [I

    aput v2, p2, v1

    aput p1, p2, v3

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrixCache:[[F

    .line 357
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    .line 358
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeRgbMatrixArray:[F

    new-array p1, v2, [F

    .line 359
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    .line 360
    sget-object p1, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->NDC_SQUARE:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;Z)",
            "Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    const-string v0, "shaders/vertex_shader_transformation_es2.glsl"

    const-string v1, "shaders/fragment_shader_transformation_es2.glsl"

    .line 151
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createGlProgram(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/util/GlProgram;

    move-result-object p0

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 158
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 159
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;-><init>(Lcom/google/android/exoplayer2/util/GlProgram;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method public static createApplyingOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 253
    invoke-static {p3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "shaders/vertex_shader_transformation_es3.glsl"

    goto :goto_0

    :cond_0
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "shaders/fragment_shader_oetf_es3.glsl"

    goto :goto_1

    :cond_1
    const-string v2, "shaders/fragment_shader_transformation_sdr_oetf_es2.glsl"

    .line 258
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createGlProgram(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/util/GlProgram;

    move-result-object p0

    if-eqz v0, :cond_4

    .line 261
    iget p3, p3, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-eq p3, v1, :cond_3

    const/4 v1, 0x6

    if-ne p3, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 262
    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-string v1, "uOetfColorTransfer"

    .line 264
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    .line 267
    :cond_4
    new-instance p3, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 269
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 270
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;-><init>(Lcom/google/android/exoplayer2/util/GlProgram;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    return-object p3
.end method

.method private static createGlProgram(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/util/GlProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 369
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p0

    const-string p1, "uTexTransformationMatrix"

    .line 375
    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 371
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createWithExternalSamplerApplyingEotf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 192
    invoke-static {p3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "shaders/vertex_shader_transformation_es3.glsl"

    goto :goto_0

    :cond_0
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "shaders/fragment_shader_transformation_external_yuv_es3.glsl"

    goto :goto_1

    :cond_1
    const-string v2, "shaders/fragment_shader_transformation_sdr_external_es2.glsl"

    .line 199
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createGlProgram(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/util/GlProgram;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 203
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->isYuvTargetExtensionSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    iget v2, p3, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 210
    sget-object v2, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    goto :goto_2

    .line 211
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    :goto_2
    const-string v4, "uYuvToRgbColorTransform"

    .line 207
    invoke-virtual {p0, v4, v2}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 213
    iget p3, p3, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v2, 0x7

    if-eq p3, v2, :cond_3

    const/4 v2, 0x6

    if-ne p3, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 214
    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-string v1, "uEotfColorTransfer"

    .line 216
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_3

    .line 204
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    const-string p1, "The EXT_YUV_target extension is required for HDR editing input."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p3, "uApplyOetf"

    .line 218
    invoke-virtual {p0, p3, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    .line 221
    :goto_3
    new-instance p3, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 223
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 224
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;-><init>(Lcom/google/android/exoplayer2/util/GlProgram;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    return-object p3
.end method

.method public static createWithExternalSamplerApplyingEotfThenOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/effect/RgbMatrix;",
            ">;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 299
    invoke-static {p3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "shaders/vertex_shader_transformation_es3.glsl"

    goto :goto_0

    :cond_0
    const-string v1, "shaders/vertex_shader_transformation_es2.glsl"

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "shaders/fragment_shader_transformation_external_yuv_es3.glsl"

    goto :goto_1

    :cond_1
    const-string v2, "shaders/fragment_shader_transformation_sdr_external_es2.glsl"

    .line 306
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->createGlProgram(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/util/GlProgram;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 310
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->isYuvTargetExtensionSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    iget p3, p3, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne p3, v1, :cond_2

    .line 317
    sget-object p3, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    goto :goto_2

    .line 318
    :cond_2
    sget-object p3, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX:[F

    :goto_2
    const-string v1, "uYuvToRgbColorTransform"

    .line 314
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    const/4 p3, -0x1

    const-string v1, "uEotfColorTransfer"

    .line 321
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_3

    .line 311
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    const-string p1, "The EXT_YUV_target extension is required for HDR editing input."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p3, "uApplyOetf"

    .line 323
    invoke-virtual {p0, p3, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    .line 326
    :goto_3
    new-instance p3, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    .line 328
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 329
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;-><init>(Lcom/google/android/exoplayer2/util/GlProgram;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    return-object p3
.end method

.method private updateCompositeRgbaMatrixArray(J)V
    .locals 9

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x10

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, F

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    .line 478
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/effect/RgbMatrix;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->useHdr:Z

    invoke-interface {v3, p1, p2, v4}, Lcom/google/android/exoplayer2/effect/RgbMatrix;->getMatrix(JZ)[F

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrixCache:[[F

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->updateMatrixCache([[F[[F)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 487
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->rgbMatrices:Lcom/google/common/collect/ImmutableList;

    .line 490
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/effect/RgbMatrix;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->useHdr:Z

    invoke-interface {v1, p1, p2, v5}, Lcom/google/android/exoplayer2/effect/RgbMatrix;->getMatrix(JZ)[F

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeRgbMatrixArray:[F

    const/4 v8, 0x0

    .line 487
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 494
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeRgbMatrixArray:[F

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateCompositeTransformationMatrixAndVisiblePolygon(J)V
    .locals 9

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x10

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, F

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    .line 431
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    .line 433
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;->getGlMatrixArray(J)[F

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->transformationMatrixCache:[[F

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->updateMatrixCache([[F[[F)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 443
    sget-object p1, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->NDC_SQUARE:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 444
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->transformationMatrixCache:[[F

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 445
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 452
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    iget-object v4, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    array-length v5, v3

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 460
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->transformPoints([FLcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 459
    invoke-static {v1}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->clipConvexPolygonToNdcRange(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 461
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    invoke-static {p1, v2, p2, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 472
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->tempResultMatrix:[F

    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->transformPoints([FLcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static updateMatrixCache([[F[[F)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 513
    aget-object v3, p0, v1

    .line 514
    aget-object v4, p1, v1

    .line 515
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 516
    array-length v2, v4

    const/16 v5, 0x10

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v5, "A 4x4 transformation matrix must have 16 elements"

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 517
    array-length v2, v4

    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public configure(II)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->matrixTransformations:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->configureAndGetOutputSize(IILcom/google/common/collect/ImmutableList;)Landroid/util/Pair;

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

    .line 391
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->updateCompositeRgbaMatrixArray(J)V

    .line 392
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->updateCompositeTransformationMatrixAndVisiblePolygon(J)V

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    .line 398
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->use()V

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexSampler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 400
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "uTransformationMatrix"

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeTransformationMatrixArray:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 401
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "uRgbMatrix"

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->compositeRgbMatrixArray:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 402
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v0, "aFramePosition"

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 404
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/GlUtil;->createVertexBuffer(Ljava/util/List;)[F

    move-result-object v1

    const/4 v3, 0x4

    .line 402
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    .line 406
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/GlProgram;->bindAttributesAndUniforms()V

    const/4 p1, 0x6

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 408
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 407
    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 409
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 411
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

    .line 417
    invoke-super {p0}, Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;->release()V

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->delete()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 421
    new-instance v1, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTextureTransformMatrix([F)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->glProgram:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexTransformationMatrix"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    return-void
.end method
