.class public Lorg/telegram/ui/Components/FilterShaders;
.super Ljava/lang/Object;
.source "FilterShaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FilterShaders$ToneCurve;,
        Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;,
        Lorg/telegram/ui/Components/FilterShaders$BlurProgram;
    }
.end annotation


# instance fields
.field private bitmapTextre:[I

.field private blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

.field private blurTextureCreated:Z

.field private boostInputTexCoordHandle:I

.field private boostPositionHandle:I

.field private boostProgram:I

.field private boostSourceImageHandle:I

.field private calcBuffer:Ljava/nio/ByteBuffer;

.field private cdtBuffer:Ljava/nio/ByteBuffer;

.field private compositeCurveImageHandle:I

.field private compositeInputImageHandle:I

.field private compositeInputTexCoordHandle:I

.field private compositeMatrixHandle:I

.field private compositeMixtureHandle:I

.field private compositePositionHandle:I

.field private compositeProgram:I

.field private compositeSourceImageHandle:I

.field private compositeTexSizeHandle:I

.field private contrastHandle:I

.field private curveTextures:[I

.field private curvesImageHandle:I

.field private delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

.field private enhanceFrameBuffer:[I

.field private enhanceInputImageTexture2Handle:I

.field private enhanceInputTexCoordHandle:I

.field private enhanceIntensityHandle:I

.field private enhancePositionHandle:I

.field private enhanceShaderProgram:I

.field private enhanceSourceImageHandle:I

.field private enhanceTextures:[I

.field private exposureHandle:I

.field private fadeAmountHandle:I

.field private grainHandle:I

.field private greenAndBlueChannelOverlayInputTexCoordHandle:I

.field private greenAndBlueChannelOverlayMatrixHandle:I

.field private greenAndBlueChannelOverlayPositionHandle:I

.field private greenAndBlueChannelOverlayProgram:I

.field private greenAndBlueChannelOverlaySourceImageHandle:I

.field private greenAndBlueChannelOverlayTexSizeHandle:I

.field private hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field private heightHandle:I

.field private highPassInputImageHandle:I

.field private highPassInputTexCoordHandle:I

.field private highPassPositionHandle:I

.field private highPassProgram:I

.field private highPassSourceImageHandle:I

.field private highlightsHandle:I

.field private highlightsTintColorHandle:I

.field private highlightsTintIntensityHandle:I

.field private hsvBuffer:Ljava/nio/ByteBuffer;

.field private hsvGenerated:Z

.field private inputTexCoordHandle:I

.field private isVideo:Z

.field private lastRadius:F

.field private linearBlurAngleHandle:I

.field private linearBlurAspectRatioHandle:I

.field private linearBlurExcludeBlurSizeHandle:I

.field private linearBlurExcludePointHandle:I

.field private linearBlurExcludeSizeHandle:I

.field private linearBlurInputTexCoordHandle:I

.field private linearBlurPositionHandle:I

.field private linearBlurShaderProgram:I

.field private linearBlurSourceImage2Handle:I

.field private linearBlurSourceImageHandle:I

.field private needUpdateBlurTexture:Z

.field private needUpdateSkinTexture:Z

.field private positionHandle:I

.field private radialBlurAspectRatioHandle:I

.field private radialBlurExcludeBlurSizeHandle:I

.field private radialBlurExcludePointHandle:I

.field private radialBlurExcludeSizeHandle:I

.field private radialBlurInputTexCoordHandle:I

.field private radialBlurPositionHandle:I

.field private radialBlurShaderProgram:I

.field private radialBlurSourceImage2Handle:I

.field private radialBlurSourceImageHandle:I

.field private renderBufferHeight:I

.field private renderBufferWidth:I

.field private renderFrameBuffer:[I

.field private renderTexture:[I

.field private rgbToHsvInputTexCoordHandle:[I

.field private rgbToHsvMatrixHandle:I

.field private rgbToHsvPositionHandle:[I

.field private rgbToHsvShaderProgram:[I

.field private rgbToHsvSourceImageHandle:[I

.field private rgbToHsvTexSizeHandle:I

.field private saturationHandle:I

.field private scaleBitmap:Z

.field private shadowsHandle:I

.field private shadowsTintColorHandle:I

.field private shadowsTintIntensityHandle:I

.field private sharpenHandle:I

.field private sharpenHeightHandle:I

.field private sharpenInputTexCoordHandle:I

.field private sharpenPositionHandle:I

.field private sharpenShaderProgram:I

.field private sharpenSourceImageHandle:I

.field private sharpenWidthHandle:I

.field private skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

.field private skinPassDrawn:Z

.field private skinTextureCreated:Z

.field private skipToneHandle:I

.field private sourceImageHandle:I

.field public textureBuffer:Ljava/nio/FloatBuffer;

.field private toneCurve:Lorg/telegram/ui/Components/FilterShaders$ToneCurve;

.field private toolsShaderProgram:I

.field public vertexBuffer:Ljava/nio/FloatBuffer;

.field public vertexInvertBuffer:Ljava/nio/FloatBuffer;

.field private videoMatrix:[F

.field private videoTexture:I

.field private vignetteHandle:I

.field private warmthHandle:I

.field private widthHandle:I


# direct methods
.method public constructor <init>(ZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 4

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateBlurTexture:Z

    .line 972
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateSkinTexture:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1011
    iput-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    new-array v2, v1, [I

    .line 1012
    iput-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvPositionHandle:[I

    new-array v2, v1, [I

    .line 1013
    iput-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvInputTexCoordHandle:[I

    new-array v2, v1, [I

    .line 1014
    iput-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvSourceImageHandle:[I

    new-array v1, v1, [I

    .line 1082
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    new-array v1, v0, [I

    .line 1083
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->enhanceFrameBuffer:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 1084
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    new-array v1, v0, [I

    .line 1085
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    new-array v1, v0, [I

    .line 1087
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->curveTextures:[I

    .line 1978
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->scaleBitmap:Z

    .line 1109
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    .line 1110
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterShaders;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    const/16 p1, 0x8

    new-array p2, p1, [F

    .line 1112
    fill-array-data p2, :array_0

    const/16 v0, 0x20

    .line 1118
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1119
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1120
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 1121
    invoke-virtual {v1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1122
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p2, p1, [F

    .line 1124
    fill-array-data p2, :array_1

    .line 1130
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1131
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1132
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    .line 1133
    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1134
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array p1, p1, [F

    .line 1136
    fill-array-data p1, :array_2

    .line 1143
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1144
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1145
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 1146
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(IF)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/FilterShaders;->fragmentShaderForOptimizedBlurOfRadius(IF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(IF)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/FilterShaders;->vertexShaderForOptimizedBlurOfRadius(IF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createBitmap(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 7

    .line 1971
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1972
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p2, p2

    .line 1973
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1974
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static fragmentShaderForOptimizedBlurOfRadius(IF)Ljava/lang/String;
    .locals 16

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 203
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    add-int/lit8 v5, p0, 0x1

    if-ge v4, v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v9, p1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 206
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v12

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v0, v4

    if-nez v4, :cond_0

    .line 208
    aget v5, v0, v4

    add-float/2addr v3, v5

    goto :goto_1

    :cond_0
    float-to-double v5, v3

    .line 210
    aget v3, v0, v4

    float-to-double v7, v3

    mul-double/2addr v7, v12

    add-double/2addr v5, v7

    double-to-float v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_2

    .line 214
    aget v6, v0, v4

    div-float/2addr v6, v3

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 216
    :cond_2
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    rem-int/lit8 v5, p0, 0x2

    add-int/2addr v3, v5

    const/4 v5, 0x7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uniform sampler2D sTexture;\n"

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "uniform highp float texelWidthOffset;\n"

    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "uniform highp float texelHeightOffset;\n"

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v1, [Ljava/lang/Object;

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "varying highp vec2 blurCoordinates[%d];\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "void main()\n"

    .line 225
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "{\n"

    .line 226
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "lowp vec4 sum = vec4(0.0);\n"

    .line 227
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v1, [Ljava/lang/Object;

    .line 228
    aget v9, v0, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "sum += texture2D(sTexture, blurCoordinates[0]) * %f;\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_3

    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v8, 0x1

    .line 231
    aget v10, v0, v9

    add-int/2addr v8, v4

    .line 232
    aget v11, v0, v8

    add-float/2addr v10, v11

    .line 234
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v1

    const-string v9, "sum += texture2D(sTexture, blurCoordinates[%d]) * %f;\n"

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v12, v4, [Ljava/lang/Object;

    .line 235
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v1

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-le v3, v5, :cond_4

    const-string v7, "highp vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v5, v3, :cond_4

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v7, 0x1

    .line 242
    aget v9, v0, v8

    add-int/2addr v7, v4

    .line 243
    aget v10, v0, v7

    add-float v11, v9, v10

    int-to-float v8, v8

    mul-float/2addr v9, v8

    int-to-float v7, v7

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    .line 246
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v1

    const-string v10, "sum += texture2D(sTexture, blurCoordinates[0] + singleStepOffset * %f) * %f;\n"

    invoke-static {v7, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v4, [Ljava/lang/Object;

    .line 247
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "sum += texture2D(sTexture, blurCoordinates[0] - singleStepOffset * %f) * %f;\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-string v0, "gl_FragColor = sum;\n"

    .line 251
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    .line 252
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;
    .locals 1

    .line 2077
    new-instance v0, Lorg/telegram/ui/Components/FilterShaders$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FilterShaders$1;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;)V

    return-object v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1550
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 1551
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1552
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 1554
    invoke-static {p0, v1, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1555
    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 1556
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1557
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shader code:\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1560
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, v2

    :cond_1
    return p0
.end method

.method private loadTexture(Landroid/graphics/Bitmap;III)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1984
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    move/from16 v3, p4

    .line 1985
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    .line 1987
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x4

    new-array v5, v3, [I

    .line 1988
    iput-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    .line 1989
    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1990
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_0
    const/16 v3, 0x2803

    const/16 v5, 0x2802

    const/16 v6, 0x2800

    const/16 v7, 0x2801

    const v8, 0x812f

    const/16 v9, 0x2601

    const/16 v10, 0xde1

    if-eqz v1, :cond_9

    .line 1993
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1994
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    const/4 v12, 0x1

    invoke-static {v12, v11, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1996
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v11

    int-to-float v11, v11

    .line 1997
    iget-boolean v12, v0, Lorg/telegram/ui/Components/FilterShaders;->scaleBitmap:Z

    if-eqz v12, :cond_1

    iget v13, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v13, v13

    cmpl-float v13, v13, v11

    if-gtz v13, :cond_2

    iget v13, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v13, v13

    cmpl-float v13, v13, v11

    if-gtz v13, :cond_2

    :cond_1
    rem-int/lit16 v13, v2, 0x168

    if-eqz v13, :cond_8

    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_5

    .line 1999
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v12, v12

    cmpl-float v12, v12, v11

    if-gtz v12, :cond_3

    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v12, v12

    cmpl-float v12, v12, v11

    if-lez v12, :cond_5

    .line 2000
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v13, v11, v12

    .line 2001
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v11, v12

    cmpg-float v14, v13, v12

    if-gez v14, :cond_4

    float-to-int v11, v11

    .line 2003
    iput v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    .line 2004
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    goto :goto_0

    :cond_4
    float-to-int v11, v11

    .line 2007
    iput v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    .line 2008
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    move v13, v12

    .line 2013
    :cond_5
    :goto_0
    rem-int/lit16 v11, v2, 0x168

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_6

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_7

    .line 2014
    :cond_6
    iget v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    .line 2015
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    iput v12, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    .line 2016
    iput v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    .line 2019
    :cond_7
    invoke-direct {v0, v1, v2, v13}, Lorg/telegram/ui/Components/FilterShaders;->createBitmap(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2022
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    aget v2, v2, v4

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2023
    invoke-static {v10, v7, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2024
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2025
    invoke-static {v10, v5, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2026
    invoke-static {v10, v3, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2027
    invoke-static {v10, v4, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_9
    :goto_1
    const/4 v1, 0x2

    if-ge v4, v1, :cond_a

    .line 2031
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v4

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2032
    invoke-static {v10, v7, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2033
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2034
    invoke-static {v10, v5, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2035
    invoke-static {v10, v3, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/16 v13, 0x1908

    .line 2036
    iget v14, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v15, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method private setupExternalShaders()Z
    .locals 22

    move-object/from16 v0, p0

    .line 1393
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1395
    sget v7, Lorg/telegram/messenger/R$raw;->yuv_hlg2rgb:I

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    .line 1397
    sget v7, Lorg/telegram/messenger/R$raw;->yuv_pq2rgb:I

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 1399
    :goto_1
    iget-boolean v7, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v7, :cond_3

    const-string v8, "#extension GL_OES_EGL_image_external : require"

    goto :goto_2

    :cond_3
    move-object v8, v4

    :goto_2
    const-string v9, "sampler2D"

    if-eqz v7, :cond_4

    const-string v7, "samplerExternalOES"

    goto :goto_3

    :cond_4
    move-object v7, v9

    :goto_3
    new-array v10, v6, [I

    const/4 v11, 0x0

    .line 1404
    :goto_4
    iget-boolean v12, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v12, :cond_5

    move v13, v5

    goto :goto_5

    :cond_5
    move v13, v6

    :goto_5
    const-string v14, "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = vec2(videoMatrix * inputTexCoord).xy;}"

    const-string v15, "#version 320 es\nin vec4 position;uniform mat4 videoMatrix;in vec4 inputTexCoord;out vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = vec2(videoMatrix * inputTexCoord).xy;}"

    const-string v5, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;}"

    const-string v2, "texSize"

    const-string v6, "videoMatrix"

    move-object/from16 v18, v2

    const-string v2, "sTexture"

    move-object/from16 v19, v6

    const-string v6, "inputTexCoord"

    move-object/from16 v20, v2

    const-string v2, "position"

    move-object/from16 v21, v10

    if-ge v11, v13, :cond_d

    const-string v13, "%1$s\nprecision highp float;varying vec2 vTextureCoord;uniform %2$s sTexture;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sTexture, vTextureCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

    const/4 v10, 0x1

    if-ne v11, v10, :cond_8

    if-eqz v12, :cond_8

    if-eqz v1, :cond_6

    const v5, 0x8b31

    .line 1407
    invoke-static {v5, v15}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v12

    .line 1408
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v15, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v15, v10

    const-string v10, "%1$s\nin vec2 vTextureCoord;out vec4 fragColor;highp vec3 rgb_to_hsv(vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = TEX(vTextureCoord);fragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

    invoke-static {v5, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v10, 0x8b30

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_7

    if-nez v5, :cond_9

    :cond_7
    const v10, 0x8b31

    .line 1413
    invoke-static {v10, v14}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v12

    .line 1414
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v10, v15

    const/16 v17, 0x1

    aput-object v7, v10, v17

    invoke-static {v5, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v10, 0x8b30

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_8
    move/from16 v17, v10

    const v10, 0x8b31

    const v12, 0x8b30

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 1417
    invoke-static {v10, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 1418
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v4, v12, v15

    aput-object v9, v12, v17

    invoke-static {v10, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const v12, 0x8b30

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v10

    move v12, v5

    move v5, v10

    .line 1420
    :cond_9
    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v10, v10, v11

    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    if-eqz v12, :cond_c

    if-eqz v5, :cond_c

    .line 1422
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v13

    aput v13, v10, v11

    .line 1423
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v10, v10, v11

    invoke-static {v10, v12}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1424
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v10, v10, v11

    invoke-static {v10, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1425
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    const/4 v10, 0x0

    invoke-static {v5, v10, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1426
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    const/4 v12, 0x1

    invoke-static {v5, v12, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1428
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1429
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    move-object/from16 v13, v21

    const v12, 0x8b82

    invoke-static {v5, v12, v13, v10}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1430
    aget v5, v13, v10

    if-nez v5, :cond_a

    .line 1431
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v2, v2, v11

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1432
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aput v10, v2, v11

    goto :goto_8

    .line 1434
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvPositionHandle:[I

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v10, v10, v11

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v5, v11

    .line 1435
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvInputTexCoordHandle:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    aput v5, v2, v11

    .line 1436
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvSourceImageHandle:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v5, v5, v11

    move-object/from16 v10, v20

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    aput v5, v2, v11

    const/4 v2, 0x1

    if-ne v11, v2, :cond_b

    .line 1438
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v2, v2, v11

    move-object/from16 v5, v19

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvMatrixHandle:I

    .line 1439
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v2, v2, v11

    move-object/from16 v5, v18

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvTexSizeHandle:I

    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object v10, v13

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    return v4

    :cond_d
    move-object/from16 v9, v18

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v13, v21

    const-string v4, "%1$s\nprecision lowp float;varying highp vec2 vTextureCoord;uniform %2$s sTexture;void main() {vec4 inp = texture2D(sTexture, vTextureCoord);vec4 image = vec4(inp.rgb * pow(2.0, -1.0), inp.w);vec4 base = vec4(image.g, image.g, image.g, 1.0);vec4 overlay = vec4(image.b, image.b, image.b, 1.0);float ba = 2.0 * overlay.b * base.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);gl_FragColor = vec4(ba,ba,ba,image.a);}"

    if-eqz v12, :cond_10

    if-eqz v1, :cond_e

    const v5, 0x8b31

    .line 1449
    invoke-static {v5, v15}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v12

    .line 1450
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    move/from16 v18, v12

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v12, v15

    const-string v15, "%1$s\nin highp vec2 vTextureCoord;out vec4 fragColor;void main() {vec4 inp = TEX(vTextureCoord);vec4 image = vec4(inp.rgb * pow(2.0, -1.0), inp.w);vec4 base = vec4(image.g, image.g, image.g, 1.0);vec4 overlay = vec4(image.b, image.b, image.b, 1.0);float ba = 2.0 * overlay.b * base.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);fragColor = vec4(ba,ba,ba,image.a);}"

    invoke-static {v5, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v12, 0x8b30

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_f

    if-nez v5, :cond_11

    :cond_f
    const v12, 0x8b31

    .line 1455
    invoke-static {v12, v14}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v18

    .line 1456
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/16 v17, 0x1

    aput-object v7, v15, v17

    invoke-static {v5, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v15, 0x8b30

    invoke-static {v15, v4}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    goto :goto_a

    :cond_10
    const v12, 0x8b31

    const/4 v14, 0x2

    const v15, 0x8b30

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1459
    invoke-static {v12, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v18

    .line 1460
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v8, v12, v16

    aput-object v7, v12, v17

    invoke-static {v5, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v5

    :cond_11
    :goto_a
    move/from16 v4, v18

    .line 1462
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    if-eqz v4, :cond_1b

    if-eqz v5, :cond_1b

    .line 1464
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    .line 1465
    invoke-static {v12, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1466
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1467
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1468
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    const/4 v12, 0x1

    invoke-static {v4, v12, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1470
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1471
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    const v12, 0x8b82

    invoke-static {v4, v12, v13, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1472
    aget v4, v13, v5

    if-nez v4, :cond_12

    .line 1473
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1474
    iput v5, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    goto :goto_b

    .line 1476
    :cond_12
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayPositionHandle:I

    .line 1477
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayInputTexCoordHandle:I

    .line 1478
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlaySourceImageHandle:I

    .line 1479
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v4, :cond_13

    .line 1480
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayMatrixHandle:I

    .line 1481
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayTexSizeHandle:I

    .line 1488
    :cond_13
    :goto_b
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    const-string v5, "%1$s\nprecision lowp float;varying highp vec2 vTextureCoord;varying highp vec2 texCoord2;uniform %2$s sTexture;uniform sampler2D toneCurveTexture;uniform sampler2D inputImageTexture3;uniform lowp float mixturePercent;void main() {vec4 image = texture2D(sTexture, vTextureCoord);vec4 mask = texture2D(inputImageTexture3, texCoord2);float redCurveValue = texture2D(toneCurveTexture, vec2(image.r, 0.0)).r;float greenCurveValue = texture2D(toneCurveTexture, vec2(image.g, 0.0)).g;float blueCurveValue = texture2D(toneCurveTexture, vec2(image.b, 0.0)).b;vec4 result = vec4(redCurveValue, greenCurveValue, blueCurveValue, image.a);vec4 tone = mix(image, result, mixturePercent);gl_FragColor = vec4(mix(image.rgb, tone.rgb, 1.0 - mask.b), 1.0);}"

    if-eqz v4, :cond_16

    if-eqz v1, :cond_14

    const-string v1, "#version 320 es\nin vec4 position;uniform mat4 videoMatrix;in vec4 inputTexCoord;out vec2 vTextureCoord;out vec2 texCoord2;void main() {gl_Position = position;vTextureCoord = vec2(videoMatrix * inputTexCoord).xy;texCoord2 = inputTexCoord.xy;}"

    const v4, 0x8b31

    .line 1490
    invoke-static {v4, v1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1491
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    const-string v3, "%1$s\nin highp vec2 vTextureCoord;in highp vec2 texCoord2;uniform sampler2D toneCurveTexture;uniform sampler2D inputImageTexture3;uniform lowp float mixturePercent;out vec4 fragColor;void main() {vec4 image = TEX(vTextureCoord);vec4 mask = texture(inputImageTexture3, texCoord2);float redCurveValue = texture(toneCurveTexture, vec2(image.r, 0.0)).r;float greenCurveValue = texture(toneCurveTexture, vec2(image.g, 0.0)).g;float blueCurveValue = texture(toneCurveTexture, vec2(image.b, 0.0)).b;vec4 result = vec4(redCurveValue, greenCurveValue, blueCurveValue, image.a);vec4 tone = mix(image, result, mixturePercent);fragColor = vec4(mix(image.rgb, tone.rgb, 1.0 - mask.b), 1.0);}"

    invoke-static {v4, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x8b30

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v3

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_c
    if-eqz v1, :cond_15

    if-nez v3, :cond_17

    :cond_15
    const-string v1, "attribute vec4 position;uniform mat4 videoMatrix;attribute vec4 inputTexCoord;varying vec2 vTextureCoord;varying vec2 texCoord2;void main() {gl_Position = position;vTextureCoord = vec2(videoMatrix * inputTexCoord).xy;texCoord2 = inputTexCoord.xy;}"

    const v3, 0x8b31

    .line 1496
    invoke-static {v3, v1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1497
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v4, v12

    const/4 v14, 0x1

    aput-object v7, v4, v14

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v15, 0x8b30

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v3

    goto :goto_d

    :cond_16
    const v3, 0x8b31

    const/4 v4, 0x2

    const/4 v12, 0x0

    const/4 v14, 0x1

    const v15, 0x8b30

    const-string v1, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;varying vec2 texCoord2;void main() {gl_Position = position;vTextureCoord = inputTexCoord;texCoord2 = inputTexCoord;}"

    .line 1500
    invoke-static {v3, v1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1501
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v12

    aput-object v7, v4, v14

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1503
    :cond_17
    :goto_d
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    if-eqz v1, :cond_1a

    if-eqz v3, :cond_1a

    .line 1505
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    .line 1506
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1507
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1508
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1509
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const/4 v4, 0x1

    invoke-static {v1, v4, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1511
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1512
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const v4, 0x8b82

    invoke-static {v1, v4, v13, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1513
    aget v1, v13, v3

    if-nez v1, :cond_18

    .line 1514
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1515
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    goto :goto_e

    .line 1517
    :cond_18
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositePositionHandle:I

    .line 1518
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeInputTexCoordHandle:I

    .line 1519
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeSourceImageHandle:I

    .line 1520
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const-string v2, "inputImageTexture3"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeInputImageHandle:I

    .line 1521
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const-string v2, "toneCurveTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeCurveImageHandle:I

    .line 1522
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    const-string v2, "mixturePercent"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeMixtureHandle:I

    .line 1523
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_19

    .line 1524
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeMatrixHandle:I

    .line 1525
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeTexSizeHandle:I

    :cond_19
    :goto_e
    const/4 v1, 0x1

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1

    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private static vertexShaderForOptimizedBlurOfRadius(IF)Ljava/lang/String;
    .locals 16

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 161
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    add-int/lit8 v5, p0, 0x1

    if-ge v4, v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v9, p1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 164
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v12

    div-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v0, v4

    if-nez v4, :cond_0

    .line 166
    aget v5, v0, v4

    add-float/2addr v3, v5

    goto :goto_1

    :cond_0
    float-to-double v5, v3

    .line 168
    aget v3, v0, v4

    float-to-double v7, v3

    mul-double/2addr v7, v12

    add-double/2addr v5, v7

    double-to-float v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_2

    .line 172
    aget v6, v0, v4

    div-float/2addr v6, v3

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 174
    :cond_2
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    rem-int/lit8 v5, p0, 0x2

    add-int/2addr v3, v5

    const/4 v5, 0x7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 175
    new-array v5, v3, [F

    move v6, v2

    :goto_3
    if-ge v6, v3, :cond_3

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v8, v7, 0x1

    .line 177
    aget v9, v0, v8

    add-int/2addr v7, v4

    .line 178
    aget v10, v0, v7

    add-float v11, v9, v10

    int-to-float v8, v8

    mul-float/2addr v9, v8

    int-to-float v7, v7

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    .line 180
    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attribute vec4 position;\n"

    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "attribute vec4 inputTexCoord;\n"

    .line 184
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uniform float texelWidthOffset;\n"

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uniform float texelHeightOffset;\n"

    .line 186
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "varying vec2 blurCoordinates[%d];\n"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "void main()\n"

    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{\n"

    .line 189
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "gl_Position = position;\n"

    .line 190
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "blurCoordinates[0] = inputTexCoord.xy;\n"

    .line 192
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    :goto_4
    if-ge v6, v3, :cond_4

    .line 194
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v10, v9, 0x1

    .line 196
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    aget v10, v5, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v1

    add-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x3

    aget v10, v5, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "blurCoordinates[%d] = inputTexCoord.xy + singleStepOffset * %f;\nblurCoordinates[%d] = inputTexCoord.xy - singleStepOffset * %f;\n"

    .line 194
    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    const-string v1, "}"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Z
    .locals 16

    move-object/from16 v0, p0

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->curveTextures:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1156
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    const/4 v4, 0x2

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1157
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceFrameBuffer:[I

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1159
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    aget v1, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v5, 0x2601

    .line 1160
    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2800

    .line 1161
    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2802

    const v8, 0x812f

    .line 1162
    invoke-static {v4, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v9, 0x2803

    .line 1163
    invoke-static {v4, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1165
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterShaders;->curveTextures:[I

    aget v10, v10, v3

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1166
    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1167
    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1168
    invoke-static {v4, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1169
    invoke-static {v4, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-array v1, v2, [I

    const v4, 0x8b31

    const-string v5, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;}"

    .line 1173
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    const v7, 0x8b30

    const-string v8, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;}return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sTexture, vTextureCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(vTextureCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(vTextureCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}"

    .line 1174
    invoke-static {v7, v8}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v8

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    .line 1177
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    .line 1178
    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1179
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1180
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v8, "position"

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1181
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v9, "inputTexCoord"

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1183
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1184
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const v10, 0x8b82

    invoke-static {v6, v10, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1185
    aget v6, v1, v3

    const-string v11, "sTexture"

    if-nez v6, :cond_0

    .line 1186
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1187
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    goto/16 :goto_0

    .line 1189
    :cond_0
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->positionHandle:I

    .line 1190
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->inputTexCoordHandle:I

    .line 1191
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v6, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sourceImageHandle:I

    .line 1192
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "shadows"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->shadowsHandle:I

    .line 1193
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "highlights"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->highlightsHandle:I

    .line 1194
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "exposure"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->exposureHandle:I

    .line 1195
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "contrast"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->contrastHandle:I

    .line 1196
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "saturation"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->saturationHandle:I

    .line 1197
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "warmth"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->warmthHandle:I

    .line 1198
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "vignette"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->vignetteHandle:I

    .line 1199
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "grain"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->grainHandle:I

    .line 1200
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "width"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->widthHandle:I

    .line 1201
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "height"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->heightHandle:I

    .line 1202
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "curvesImage"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->curvesImageHandle:I

    .line 1203
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "skipTone"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->skipToneHandle:I

    .line 1204
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "fadeAmount"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->fadeAmountHandle:I

    .line 1205
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "shadowsTintIntensity"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintIntensityHandle:I

    .line 1206
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "highlightsTintIntensity"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintIntensityHandle:I

    .line 1207
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "shadowsTintColor"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintColorHandle:I

    .line 1208
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    const-string v12, "highlightsTintColor"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintColorHandle:I

    :goto_0
    const-string v6, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}"

    .line 1214
    invoke-static {v4, v6}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    const-string v12, "precision highp float;varying vec2 vTextureCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sTexture;uniform float sharpen;void main() {vec4 result = texture2D(sTexture, vTextureCoord);vec3 leftTextureColor = texture2D(sTexture, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sTexture, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sTexture, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sTexture, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}"

    .line 1215
    invoke-static {v7, v12}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v12

    if-eqz v6, :cond_9

    if-eqz v12, :cond_9

    .line 1218
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    .line 1219
    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1220
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1221
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1222
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1224
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1225
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v10, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1226
    aget v6, v1, v3

    if-nez v6, :cond_1

    .line 1227
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1228
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    goto :goto_1

    .line 1230
    :cond_1
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenPositionHandle:I

    .line 1231
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenInputTexCoordHandle:I

    .line 1232
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v6, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenSourceImageHandle:I

    .line 1233
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    const-string v12, "inputWidth"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenWidthHandle:I

    .line 1234
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    const-string v12, "inputHeight"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenHeightHandle:I

    .line 1235
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    const-string v12, "sharpen"

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->sharpenHandle:I

    .line 1241
    :goto_1
    new-instance v6, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v13, 0x40400000    # 3.0f

    invoke-direct {v6, v12, v13, v3}, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;-><init>(FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    .line 1242
    invoke-virtual {v6}, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->create()Z

    move-result v6

    if-nez v6, :cond_2

    return v3

    .line 1246
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FilterShaders;->setupExternalShaders()Z

    move-result v6

    if-nez v6, :cond_3

    return v3

    .line 1250
    :cond_3
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    const-string v12, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sTexture, vTextureCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, vTextureCoord);highp vec2 texCoordToUse = vec2(vTextureCoord.x, (vTextureCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    .line 1251
    invoke-static {v7, v12}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v12

    if-eqz v6, :cond_9

    if-eqz v12, :cond_9

    .line 1254
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v13

    iput v13, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    .line 1255
    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1256
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v12}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1257
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1258
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1260
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1261
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v10, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1262
    aget v6, v1, v3

    const-string v12, "aspectRatio"

    const-string v13, "excludeBlurSize"

    const-string v14, "excludePoint"

    const-string v15, "excludeSize"

    const-string v10, "inputImageTexture2"

    if-nez v6, :cond_4

    .line 1263
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1264
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    goto :goto_2

    .line 1266
    :cond_4
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurPositionHandle:I

    .line 1267
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurInputTexCoordHandle:I

    .line 1268
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurSourceImageHandle:I

    .line 1269
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurSourceImage2Handle:I

    .line 1270
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludeSizeHandle:I

    .line 1271
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v14}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludePointHandle:I

    .line 1272
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v6, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludeBlurSizeHandle:I

    .line 1273
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    const-string v2, "angle"

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurAngleHandle:I

    .line 1274
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurAspectRatioHandle:I

    .line 1280
    :goto_2
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v2

    const-string v6, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sTexture, vTextureCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, vTextureCoord);highp vec2 texCoordToUse = vec2(vTextureCoord.x, (vTextureCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    .line 1281
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    .line 1284
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    .line 1285
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1286
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1287
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1288
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    const/4 v6, 0x1

    invoke-static {v2, v6, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1290
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1291
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    const v6, 0x8b82

    invoke-static {v2, v6, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1292
    aget v2, v1, v3

    if-nez v2, :cond_5

    .line 1293
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1294
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    goto :goto_3

    .line 1296
    :cond_5
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurPositionHandle:I

    .line 1297
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurInputTexCoordHandle:I

    .line 1298
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurSourceImageHandle:I

    .line 1299
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurSourceImage2Handle:I

    .line 1300
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludeSizeHandle:I

    .line 1301
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludePointHandle:I

    .line 1302
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludeBlurSizeHandle:I

    .line 1303
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurAspectRatioHandle:I

    .line 1309
    :goto_3
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v2

    const-string v6, "precision highp float;varying vec2 vTextureCoord;uniform sampler2D sTexture;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(vTextureCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sTexture, vTextureCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}"

    const v7, 0x8b30

    .line 1310
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    .line 1312
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    .line 1313
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1314
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1315
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1316
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    const/4 v6, 0x1

    invoke-static {v2, v6, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1318
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1319
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    const v6, 0x8b82

    invoke-static {v2, v6, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1320
    aget v2, v1, v3

    if-nez v2, :cond_6

    .line 1321
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1322
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    goto :goto_4

    .line 1324
    :cond_6
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhancePositionHandle:I

    .line 1325
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceInputTexCoordHandle:I

    .line 1326
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceSourceImageHandle:I

    .line 1327
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    const-string v6, "intensity"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceIntensityHandle:I

    .line 1328
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceInputImageTexture2Handle:I

    :goto_4
    const-string v2, "precision lowp float;varying highp vec2 vTextureCoord;varying highp vec2 texCoord2;uniform sampler2D sTexture;uniform sampler2D inputImageTexture2;void main() {vec4 image = texture2D(sTexture, vTextureCoord);vec4 blurredImage = texture2D(inputImageTexture2, texCoord2);gl_FragColor = vec4((image.rgb - blurredImage.rgb + vec3(0.5,0.5,0.5)), image.a);}"

    const v6, 0x8b30

    .line 1334
    invoke-static {v6, v2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v2

    const-string v6, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;varying vec2 texCoord2;void main() {gl_Position = position;vTextureCoord = inputTexCoord;texCoord2 = inputTexCoord;}"

    .line 1335
    invoke-static {v4, v6}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    .line 1337
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    .line 1338
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1339
    iget v6, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1340
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1341
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    const/4 v6, 0x1

    invoke-static {v2, v6, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1343
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1344
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    const v6, 0x8b82

    invoke-static {v2, v6, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1345
    aget v2, v1, v3

    if-nez v2, :cond_7

    .line 1346
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1347
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    goto :goto_5

    .line 1349
    :cond_7
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassPositionHandle:I

    .line 1350
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassInputTexCoordHandle:I

    .line 1351
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassSourceImageHandle:I

    .line 1352
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassInputImageHandle:I

    :goto_5
    const-string v2, "precision lowp float;varying highp vec2 vTextureCoord;uniform sampler2D sTexture;void main() {vec4 color = texture2D(sTexture, vTextureCoord);float hardLightColor = color.b;for (int i = 0; i < 3; ++i){if (hardLightColor < 0.5) {hardLightColor = hardLightColor * hardLightColor * 2.0;} else {hardLightColor = 1.0 - (1.0 - hardLightColor) * (1.0 - hardLightColor) * 2.0;}}float k = 255.0 / (164.0 - 75.0);hardLightColor = (hardLightColor - 75.0 / 255.0) * k;gl_FragColor = vec4(vec3(hardLightColor), color.a);}"

    const v6, 0x8b30

    .line 1358
    invoke-static {v6, v2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 1359
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 1361
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    .line 1362
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1363
    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1364
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v2, v3, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1365
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1367
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1368
    iget v2, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1369
    aget v1, v1, v3

    if-nez v1, :cond_8

    .line 1370
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1371
    iput v3, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    goto :goto_6

    .line 1373
    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostPositionHandle:I

    .line 1374
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostInputTexCoordHandle:I

    .line 1375
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v1, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostSourceImageHandle:I

    .line 1381
    :goto_6
    new-instance v1, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;

    invoke-direct {v1}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->toneCurve:Lorg/telegram/ui/Components/FilterShaders$ToneCurve;

    const/4 v1, 0x1

    return v1

    :cond_9
    return v3
.end method

.method public drawBlurPass()Z
    .locals 22

    move-object/from16 v0, p0

    .line 1880
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1881
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldShowOriginal()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1884
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateBlurTexture:Z

    const/4 v4, 0x4

    const/4 v5, 0x5

    const v6, 0x84c0

    const v7, 0x8ce0

    const/4 v8, 0x2

    const v9, 0x8d40

    const/4 v10, 0x1

    const/16 v11, 0xde1

    if-eqz v3, :cond_3

    .line 1885
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurTextureCreated:Z

    if-nez v3, :cond_2

    .line 1886
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v8

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v12, 0x2601

    .line 1887
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 1888
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v12, 0x812f

    .line 1889
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 1890
    invoke-static {v11, v3, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/16 v15, 0x1908

    .line 1891
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    const/16 v18, 0x0

    const/16 v19, 0x1908

    const/16 v20, 0x1401

    const/16 v21, 0x0

    move/from16 v16, v3

    move/from16 v17, v12

    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1892
    iput-boolean v10, v0, Lorg/telegram/ui/Components/FilterShaders;->blurTextureCreated:Z

    .line 1895
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurShaderProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1896
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurSourceImageHandle:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1897
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurInputTexCoordHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1898
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v12, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurInputTexCoordHandle:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1899
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurPositionHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1900
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v12, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurPositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1902
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v3, v3, v2

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1903
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v2

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1904
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1905
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v10

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1906
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurWidthHandle:I

    const/4 v12, 0x0

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1907
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurHeightHandle:I

    iget v13, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v13, v14, v13

    invoke-static {v3, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1908
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1910
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v3, v3, v8

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1911
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v8

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1912
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1913
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v2

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1914
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurWidthHandle:I

    iget v13, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-static {v3, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1915
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->blurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v3, v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurHeightHandle:I

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1916
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1917
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateBlurTexture:Z

    .line 1920
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v3, v3, v2

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1921
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v2

    invoke-static {v9, v7, v11, v3, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    if-ne v1, v10, :cond_4

    .line 1923
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1924
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1925
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurSourceImage2Handle:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1926
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludeSizeHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludeSize()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1927
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludeBlurSizeHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludeBlurSize()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1928
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludePoint()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 1929
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurExcludePointHandle:I

    iget v7, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1930
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurAspectRatioHandle:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v3, v3

    iget v7, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1931
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1932
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurInputTexCoordHandle:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1933
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1934
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->radialBlurPositionHandle:I

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    :cond_4
    if-ne v1, v8, :cond_5

    .line 1936
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1937
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1938
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurSourceImage2Handle:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1939
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludeSizeHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludeSize()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1940
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludeBlurSizeHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludeBlurSize()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1941
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurAngleHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurAngle()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1942
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getBlurExcludePoint()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 1943
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurExcludePointHandle:I

    iget v7, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1944
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurAspectRatioHandle:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v3, v3

    iget v7, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1945
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1946
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurInputTexCoordHandle:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1947
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1948
    iget v12, v0, Lorg/telegram/ui/Components/FilterShaders;->linearBlurPositionHandle:I

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1951
    :cond_5
    :goto_1
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1952
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v10

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c1

    .line 1953
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1954
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v8

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1955
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return v10

    :cond_6
    :goto_2
    return v2
.end method

.method public drawCustomParamsPass()V
    .locals 15

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 1677
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    iget-boolean v4, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    xor-int/2addr v4, v2

    aget v3, v3, v4

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v3, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1679
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->toolsShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 1680
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    aget v0, v0, v1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1682
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sourceImageHandle:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1683
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1699
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getShadowsValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1700
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getHighlightsValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1701
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->exposureHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getExposureValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1702
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->contrastHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getContrastValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1703
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->saturationHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getSaturationValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1704
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->warmthHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getWarmthValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1705
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->vignetteHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getVignetteValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1706
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->grainHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getGrainValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1707
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->fadeAmountHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getFadeValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getTintHighlightsColor()I

    move-result v0

    .line 1709
    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getTintShadowsColor()I

    move-result v6

    .line 1710
    iget v7, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintColorHandle:I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v9

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v7, v8, v10, v0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1711
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintIntensityHandle:I

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getTintHighlightsIntensityValue()F

    move-result v7

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1712
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintColorHandle:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v9

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v9

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v0, v7, v8, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1713
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintIntensityHandle:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getTintShadowsIntensityValue()F

    move-result v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldDrawCurvesPass()Z

    move-result v0

    .line 1715
    iget v6, p0, Lorg/telegram/ui/Components/FilterShaders;->skipToneHandle:I

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    if-eqz v0, :cond_3

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->fillAndGetCurveBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    const v0, 0x84c1

    .line 1718
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->curveTextures:[I

    aget v0, v0, v5

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0xc8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    .line 1720
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1721
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->curvesImageHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 1684
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1685
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1686
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->exposureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1687
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->contrastHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1688
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->saturationHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1689
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->warmthHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1690
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->vignetteHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1691
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->grainHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1692
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->fadeAmountHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1693
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintColorHandle:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1694
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->highlightsTintIntensityHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1695
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintColorHandle:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1696
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->shadowsTintIntensityHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1697
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->skipToneHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1725
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->widthHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1726
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->heightHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1727
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->inputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1728
    iget v6, p0, Lorg/telegram/ui/Components/FilterShaders;->inputTexCoordHandle:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    iget-object v11, p0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1729
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1730
    iget v6, p0, Lorg/telegram/ui/Components/FilterShaders;->positionHandle:I

    iget-object v11, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 1731
    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public drawEnhancePass()V
    .locals 20

    move-object/from16 v0, p0

    .line 1568
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    .line 1571
    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    xor-int/2addr v3, v2

    :goto_0
    const/4 v4, 0x5

    const v5, 0x8ce0

    const/4 v6, 0x4

    const v7, 0x84c0

    const v8, 0x8d40

    const/16 v9, 0xde1

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    if-eqz v1, :cond_2

    .line 1575
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinPassDrawn:Z

    if-nez v1, :cond_2

    .line 1576
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1577
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    .line 1578
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->videoTexture:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1579
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvMatrixHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->videoMatrix:[F

    invoke-static {v1, v2, v10, v3, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1580
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvTexSizeHandle:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1581
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v11, v11

    invoke-static {v1, v3, v11}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_1
    move v1, v2

    goto :goto_2

    .line 1585
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvShaderProgram:[I

    aget v1, v1, v10

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1586
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1587
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinPassDrawn:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    aget v1, v1, v10

    :goto_1
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move v1, v10

    .line 1591
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvSourceImageHandle:[I

    aget v3, v3, v1

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1592
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvInputTexCoordHandle:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1593
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvInputTexCoordHandle:[I

    aget v11, v3, v1

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1594
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvPositionHandle:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1595
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->rgbToHsvPositionHandle:[I

    aget v11, v3, v1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexBuffer:Ljava/nio/FloatBuffer;

    :goto_3
    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1597
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceFrameBuffer:[I

    aget v1, v1, v10

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1598
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    aget v1, v1, v10

    invoke-static {v8, v5, v9, v1, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1599
    invoke-static {v4, v10, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1602
    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    if-nez v1, :cond_b

    .line 1603
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    mul-int/2addr v1, v3

    mul-int/2addr v1, v6

    .line 1604
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v1, v3, :cond_7

    .line 1605
    :cond_6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvBuffer:Ljava/nio/ByteBuffer;

    .line 1607
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->cdtBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_8

    const/16 v1, 0x4000

    .line 1608
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->cdtBuffer:Ljava/nio/ByteBuffer;

    .line 1610
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->calcBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const v1, 0x8080

    .line 1611
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->calcBuffer:Ljava/nio/ByteBuffer;

    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1613
    iget v13, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v14, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    const/16 v15, 0x1908

    const/16 v16, 0x1401

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v17, v1

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1614
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvBuffer:Ljava/nio/ByteBuffer;

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v11, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterShaders;->cdtBuffer:Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterShaders;->calcBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3, v11, v12, v13}, Lorg/telegram/messenger/Utilities;->calcCDT(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 1616
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    aget v1, v1, v2

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x100

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    .line 1617
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->cdtBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v1

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1619
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 1620
    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvBuffer:Ljava/nio/ByteBuffer;

    .line 1621
    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->cdtBuffer:Ljava/nio/ByteBuffer;

    .line 1622
    iput-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->calcBuffer:Ljava/nio/ByteBuffer;

    .line 1624
    :cond_a
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    .line 1627
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v2

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1628
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v2

    invoke-static {v8, v5, v9, v1, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1630
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1631
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1632
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    aget v1, v1, v10

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1633
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceSourceImageHandle:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v1, 0x84c1

    .line 1634
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1635
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    aget v1, v1, v2

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1636
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceInputImageTexture2Handle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1637
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 1640
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceIntensityHandle:I

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getEnhanceValue()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_5

    .line 1638
    :cond_d
    :goto_4
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceIntensityHandle:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1643
    :goto_5
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1644
    iget v11, v0, Lorg/telegram/ui/Components/FilterShaders;->enhanceInputTexCoordHandle:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1645
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->enhancePositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1646
    iget v11, v0, Lorg/telegram/ui/Components/FilterShaders;->enhancePositionHandle:I

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1647
    invoke-static {v4, v10, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public drawSharpenPass()V
    .locals 8

    .line 1651
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v0, :cond_0

    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 1655
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v3, v3, v1

    const/16 v4, 0xde1

    invoke-static {v2, v0, v4, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1657
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 1658
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1660
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenSourceImageHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1664
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getSharpenValue()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    .line 1662
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenHandle:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1666
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenWidthHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1667
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenHeightHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1668
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1669
    iget v2, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenInputTexCoordHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1670
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1671
    iget v2, p0, Lorg/telegram/ui/Components/FilterShaders;->sharpenPositionHandle:I

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 1672
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public drawSkinSmoothPass()Z
    .locals 26

    move-object/from16 v0, p0

    .line 1735
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->shouldShowOriginal()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getSoftenSkinValue()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-lez v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    if-lez v1, :cond_b

    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    if-gtz v4, :cond_0

    goto/16 :goto_2

    .line 1742
    :cond_0
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateSkinTexture:Z

    const v5, 0x84c1

    const v6, 0x8d65

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x5

    const v10, 0x84c0

    const v11, 0x8ce0

    const/4 v12, 0x3

    const v13, 0x8d40

    const/4 v14, 0x1

    const/16 v15, 0xde1

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v4, :cond_8

    :cond_1
    int-to-float v1, v1

    const v4, 0x3bc49ba6    # 0.006f

    mul-float/2addr v1, v4

    .line 1744
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    if-eqz v4, :cond_2

    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->lastRadius:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v3, v4

    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v3, v3, v17

    if-lez v3, :cond_4

    .line 1745
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    if-eqz v3, :cond_3

    .line 1746
    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->destroy()V

    .line 1748
    :cond_3
    iput v1, v0, Lorg/telegram/ui/Components/FilterShaders;->lastRadius:F

    .line 1749
    new-instance v3, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v1, v4, v14}, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;-><init>(FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    .line 1750
    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->create()Z

    .line 1753
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinTextureCreated:Z

    if-nez v1, :cond_5

    .line 1754
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v12

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v3, 0x2601

    .line 1755
    invoke-static {v15, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 1756
    invoke-static {v15, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v3, 0x812f

    .line 1757
    invoke-static {v15, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 1758
    invoke-static {v15, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v17, 0xde1

    const/16 v18, 0x0

    const/16 v19, 0x1908

    .line 1759
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    const/16 v22, 0x0

    const/16 v23, 0x1908

    const/16 v24, 0x1401

    const/16 v25, 0x0

    move/from16 v20, v1

    move/from16 v21, v3

    invoke-static/range {v17 .. v25}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1760
    iput-boolean v14, v0, Lorg/telegram/ui/Components/FilterShaders;->skinTextureCreated:Z

    .line 1764
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1765
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlaySourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1766
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1767
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayInputTexCoordHandle:I

    const/16 v18, 0x2

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v17, v1

    move-object/from16 v22, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1768
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1769
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_6

    .line 1770
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayMatrixHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->videoMatrix:[F

    invoke-static {v1, v14, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1771
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayTexSizeHandle:I

    if-eq v1, v7, :cond_6

    .line 1772
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1775
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->greenAndBlueChannelOverlayPositionHandle:I

    const/16 v18, 0x2

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move/from16 v17, v1

    move-object/from16 v22, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1777
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v2

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1778
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v2

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1779
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1780
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_7

    .line 1781
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->videoTexture:I

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 1783
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    aget v1, v1, v2

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1785
    :goto_0
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1788
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1789
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1790
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1791
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurInputTexCoordHandle:I

    const/16 v18, 0x2

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v17, v1

    move-object/from16 v22, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1792
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1793
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurPositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move/from16 v17, v1

    move-object/from16 v22, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1795
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v14

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1796
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v14

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1797
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1798
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v2

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1799
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurWidthHandle:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1800
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurHeightHandle:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1801
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1803
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v12

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1804
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v12

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1805
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1806
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v14

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1807
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurWidthHandle:I

    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1808
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinBlurProgram:Lorg/telegram/ui/Components/FilterShaders$BlurProgram;

    iget v1, v1, Lorg/telegram/ui/Components/FilterShaders$BlurProgram;->blurHeightHandle:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1809
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1812
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1813
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1814
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassInputImageHandle:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1815
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1816
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassInputTexCoordHandle:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1817
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1818
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->highPassPositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1820
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v14

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1821
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v14

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1822
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1823
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v2

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1824
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1825
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v12

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1826
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1829
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1830
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1831
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1832
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostInputTexCoordHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1833
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1834
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->boostPositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1836
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v12

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1837
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v12

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1838
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1839
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v14

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1840
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1842
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateSkinTexture:Z

    .line 1844
    :cond_8
    iput-boolean v14, v0, Lorg/telegram/ui/Components/FilterShaders;->skinPassDrawn:Z

    .line 1845
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    .line 1846
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1847
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeSourceImageHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1848
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeInputImageHandle:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1849
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeCurveImageHandle:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1850
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeMixtureHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;->getSoftenSkinValue()F

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1851
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1852
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeInputTexCoordHandle:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1853
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositePositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1854
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositePositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move/from16 v16, v1

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1855
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_9

    .line 1856
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeMatrixHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterShaders;->videoMatrix:[F

    invoke-static {v1, v14, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1857
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->compositeTexSizeHandle:I

    if-eq v1, v7, :cond_9

    .line 1858
    iget v3, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1862
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    aget v1, v1, v14

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1863
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v14

    invoke-static {v13, v11, v15, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1864
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1865
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v1, :cond_a

    .line 1866
    iget v1, v0, Lorg/telegram/ui/Components/FilterShaders;->videoTexture:I

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 1868
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->bitmapTextre:[I

    aget v1, v1, v2

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1870
    :goto_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1871
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget v1, v1, v12

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c2

    .line 1872
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1873
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterShaders;->toneCurve:Lorg/telegram/ui/Components/FilterShaders$ToneCurve;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->getCurveTexture()I

    move-result v1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1874
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return v14

    .line 1736
    :cond_b
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/Components/FilterShaders;->skinPassDrawn:Z

    if-eqz v1, :cond_c

    .line 1737
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    .line 1738
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FilterShaders;->skinPassDrawn:Z

    :cond_c
    return v2
.end method

.method public getRenderBufferHeight()I
    .locals 1

    .line 2057
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    return v0
.end method

.method public getRenderBufferWidth()I
    .locals 1

    .line 2053
    iget v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    return v0
.end method

.method public getRenderFrameBuffer()I
    .locals 2

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderFrameBuffer:[I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    xor-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderTexture(I)I
    .locals 1

    .line 2061
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->isVideo:Z

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aget p1, v0, p1

    return p1

    .line 2064
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->renderTexture:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public onVideoFrameUpdate([F)V
    .locals 0

    .line 1961
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterShaders;->videoMatrix:[F

    const/4 p1, 0x0

    .line 1963
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterShaders;->hsvGenerated:Z

    return-void
.end method

.method public requestUpdateBlurTexture()V
    .locals 1

    const/4 v0, 0x1

    .line 2072
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateBlurTexture:Z

    .line 2073
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterShaders;->needUpdateSkinTexture:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterShaders;->delegate:Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    return-void
.end method

.method public setRenderData(Landroid/graphics/Bitmap;IIII)V
    .locals 9

    .line 1536
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/telegram/ui/Components/FilterShaders;->loadTexture(Landroid/graphics/Bitmap;III)V

    .line 1537
    iput p3, p0, Lorg/telegram/ui/Components/FilterShaders;->videoTexture:I

    .line 1541
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterShaders;->enhanceTextures:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 p3, 0x2601

    .line 1542
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 1543
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p3, 0x812f

    .line 1544
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 1545
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1546
    iget v3, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/FilterShaders;->renderBufferHeight:I

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public setScaleBitmap(Z)V
    .locals 0

    .line 1980
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterShaders;->scaleBitmap:Z

    return-void
.end method

.method public updateHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterShaders;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 1388
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterShaders;->setupExternalShaders()Z

    return-void
.end method
