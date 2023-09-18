.class public Lorg/telegram/messenger/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final FRAGMENT_EXTERNAL_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);}\n"

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final GRADIENT_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform vec4 gradientTopColor;\nuniform vec4 gradientBottomColor;\nfloat interleavedGradientNoise(vec2 n) {\n    return fract(52.9829189 * fract(.06711056 * n.x + .00583715 * n.y));\n}\nvoid main() {\n  gl_FragColor = mix(gradientTopColor, gradientBottomColor, vTextureCoord.y + (.2 * interleavedGradientNoise(gl_FragCoord.xy) - .1));\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final VERTEX_SHADER_300:Ljava/lang/String; = "#version 320 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private NUM_EXTERNAL_SHADER:I

.field private NUM_FILTER_SHADER:I

.field private NUM_GRADIENT_SHADER:I

.field bitmapData:[F

.field private bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

.field private blendEnabled:Z

.field private emojiDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private filterShaders:Lorg/telegram/ui/Components/FilterShaders;

.field private firstFrame:Z

.field private gradientBottomColor:I

.field private gradientBottomColorHandle:I

.field private gradientTextureBuffer:Ljava/nio/FloatBuffer;

.field private gradientTopColor:I

.field private gradientTopColorHandle:I

.field private gradientVerticesBuffer:Ljava/nio/FloatBuffer;

.field private imageOrientation:I

.field private imagePath:Ljava/lang/String;

.field private isPhoto:Z

.field private mMVPMatrix:[F

.field private mProgram:[I

.field private mSTMatrix:[F

.field private mSTMatrixIdentity:[F

.field private mTextureID:I

.field private maPositionHandle:[I

.field private maTextureHandle:[I

.field private mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private muMVPMatrixHandle:[I

.field private muSTMatrixHandle:[I

.field private originalHeight:I

.field private originalWidth:I

.field private paintPath:Ljava/lang/String;

.field private paintTexture:[I

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;"
        }
    .end annotation
.end field

.field private partsTexture:[I

.field private partsTextureBuffer:Ljava/nio/FloatBuffer;

.field private partsVerticesBuffer:[Ljava/nio/FloatBuffer;

.field path:Landroid/graphics/Path;

.field private renderTextureBuffer:Ljava/nio/FloatBuffer;

.field private simpleInputTexCoordHandle:I

.field private simplePositionHandle:I

.field private simpleShaderProgram:I

.field private simpleSourceImageHandle:I

.field private stickerBitmap:Landroid/graphics/Bitmap;

.field private stickerCanvas:Landroid/graphics/Canvas;

.field private stickerTexture:[I

.field private texSizeHandle:I

.field textColorPaint:Landroid/graphics/Paint;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private transformedHeight:I

.field private transformedWidth:I

.field private useMatrixForImagePath:Z

.field private verticesBuffer:Ljava/nio/FloatBuffer;

.field private videoFps:F

.field xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "IIIIIFZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p11

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 99
    fill-array-data v8, :array_0

    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/4 v8, -0x1

    .line 168
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    .line 169
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    .line 170
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    const/16 v8, 0x10

    new-array v9, v8, [F

    .line 172
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    new-array v9, v8, [F

    .line 173
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    new-array v8, v8, [F

    .line 174
    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    const/4 v8, 0x1

    .line 202
    iput-boolean v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    move/from16 v9, p12

    .line 225
    iput-boolean v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    move-object/from16 v9, p16

    .line 226
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    new-array v9, v7, [F

    .line 228
    fill-array-data v9, :array_1

    .line 235
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_0

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "start textureRenderer w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " r = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " fps = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cropState px = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " py = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " cScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " cropRotate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " pw = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " ph = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " tw = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " th = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " tr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mirror = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v10, 0x20

    .line 245
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 246
    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    array-length v9, v9

    const/4 v12, 0x4

    mul-int/2addr v9, v12

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 249
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 252
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_1

    .line 255
    new-instance v9, Lorg/telegram/ui/Components/FilterShaders;

    move-object/from16 v13, p15

    invoke-direct {v9, v8, v13}, Lorg/telegram/ui/Components/FilterShaders;-><init>(ZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    .line 257
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/FilterShaders;->setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    .line 260
    :cond_1
    iput v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 261
    iput v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 262
    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    .line 263
    iput v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move-object/from16 v9, p2

    .line 264
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    move-object/from16 v9, p3

    .line 265
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move-object/from16 v9, p4

    .line 266
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    cmpl-float v13, v6, v9

    if-nez v13, :cond_2

    const/high16 v6, 0x41f00000    # 30.0f

    .line 267
    :cond_2
    iput v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    .line 270
    iput v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const/4 v6, 0x2

    if-eqz p14, :cond_3

    if-eqz p13, :cond_3

    .line 272
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    move v13, v6

    goto :goto_0

    :cond_3
    move v13, v8

    .line 274
    :goto_0
    iget-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v14, :cond_4

    add-int/lit8 v14, v13, 0x1

    .line 275
    iput v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    move v13, v14

    .line 277
    :cond_4
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    .line 278
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    .line 279
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    .line 280
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    .line 281
    new-array v13, v13, [I

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    .line 283
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v13, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v15, 0x5

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz p14, :cond_9

    if-eqz p13, :cond_9

    new-array v14, v7, [F

    .line 286
    fill-array-data v14, :array_2

    .line 292
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 293
    invoke-virtual {v10, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v10, v7, [F

    aput v9, v10, v11

    .line 295
    iget-boolean v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-eqz v13, :cond_5

    move/from16 v14, v17

    goto :goto_1

    :cond_5
    move v14, v9

    :goto_1
    aput v14, v10, v8

    aput v17, v10, v6

    if-eqz v13, :cond_6

    move/from16 v14, v17

    goto :goto_2

    :cond_6
    move v14, v9

    :goto_2
    aput v14, v10, v16

    aput v9, v10, v12

    if-eqz v13, :cond_7

    move v14, v9

    goto :goto_3

    :cond_7
    move/from16 v14, v17

    :goto_3
    aput v14, v10, v15

    const/4 v14, 0x6

    aput v17, v10, v14

    if-eqz v13, :cond_8

    move v13, v9

    goto :goto_4

    :cond_8
    move/from16 v13, v17

    :goto_4
    const/4 v14, 0x7

    aput v13, v10, v14

    const/16 v13, 0x20

    .line 300
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    .line 301
    invoke-virtual {v13, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    .line 303
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    :cond_9
    if-eqz v1, :cond_d

    .line 306
    iget-object v10, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v10, :cond_b

    .line 307
    iput-boolean v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    new-array v14, v7, [F

    aput v9, v14, v11

    aput v9, v14, v8

    int-to-float v4, v4

    aput v4, v14, v6

    aput v9, v14, v16

    aput v9, v14, v12

    int-to-float v5, v5

    aput v5, v14, v15

    const/4 v6, 0x6

    aput v4, v14, v6

    const/4 v4, 0x7

    aput v5, v14, v4

    .line 314
    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v4, v11

    :goto_5
    if-ge v4, v12, :cond_a

    mul-int/lit8 v5, v4, 0x2

    .line 316
    aget v6, v14, v5

    int-to-float v10, v2

    div-float/2addr v6, v10

    mul-float/2addr v6, v13

    sub-float v6, v6, v17

    aput v6, v14, v5

    add-int/2addr v5, v8

    .line 317
    aget v6, v14, v5

    int-to-float v10, v3

    div-float/2addr v6, v10

    mul-float/2addr v6, v13

    sub-float v6, v17, v6

    aput v6, v14, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const/16 v4, 0x20

    .line 319
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 320
    invoke-virtual {v2, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_7

    :cond_b
    new-array v4, v7, [F

    aput v9, v4, v11

    aput v9, v4, v8

    int-to-float v5, v2

    aput v5, v4, v6

    aput v9, v4, v16

    aput v9, v4, v12

    int-to-float v10, v3

    aput v10, v4, v15

    const/4 v14, 0x6

    aput v5, v4, v14

    const/4 v14, 0x7

    aput v10, v4, v14

    .line 328
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 330
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 331
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 333
    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    neg-float v9, v9

    float-to-double v8, v9

    const-wide v18, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v8, v8, v18

    double-to-float v8, v8

    move v9, v11

    :goto_6
    if-ge v9, v12, :cond_c

    mul-int/lit8 v18, v9, 0x2

    .line 335
    aget v19, v4, v18

    div-int/lit8 v15, v2, 0x2

    int-to-float v15, v15

    sub-float v15, v19, v15

    add-int/lit8 v19, v18, 0x1

    .line 336
    aget v20, v4, v19

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    sub-float v12, v20, v12

    float-to-double v6, v15

    move v15, v14

    float-to-double v13, v8

    .line 337
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v6

    float-to-double v11, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    add-double v2, v21, v2

    double-to-float v2, v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v2, v3

    .line 338
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v6, v6, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v6, v11

    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v3, v10

    float-to-double v11, v3

    sub-double/2addr v6, v11

    double-to-float v3, v6

    iget v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v3, v6

    .line 339
    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    aput v2, v4, v18

    .line 340
    iget v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v3, v6

    aput v3, v4, v19

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p6

    move/from16 v3, p7

    move v13, v6

    move v14, v15

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x4

    goto :goto_6

    :cond_c
    move v15, v14

    const/16 v2, 0x20

    .line 342
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 343
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_d
    move v4, v7

    move v3, v11

    const/16 v2, 0x20

    new-array v5, v4, [F

    .line 346
    fill-array-data v5, :array_3

    .line 352
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 353
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_7
    const/4 v14, 0x0

    .line 356
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_11

    if-ne v14, v5, :cond_e

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 358
    fill-array-data v2, :array_4

    goto :goto_9

    :cond_e
    const/16 v2, 0x8

    if-ne v14, v4, :cond_f

    new-array v2, v2, [F

    .line 365
    fill-array-data v2, :array_5

    goto :goto_9

    :cond_f
    if-ne v14, v3, :cond_10

    new-array v2, v2, [F

    .line 372
    fill-array-data v2, :array_6

    goto :goto_9

    :cond_10
    new-array v2, v2, [F

    .line 379
    fill-array-data v2, :array_7

    goto :goto_9

    :cond_11
    const/16 v2, 0x8

    if-ne v14, v5, :cond_12

    new-array v2, v2, [F

    .line 388
    fill-array-data v2, :array_8

    goto :goto_9

    :cond_12
    if-ne v14, v4, :cond_13

    new-array v2, v2, [F

    .line 395
    fill-array-data v2, :array_9

    goto :goto_9

    :cond_13
    if-ne v14, v3, :cond_14

    new-array v2, v2, [F

    .line 402
    fill-array-data v2, :array_a

    goto :goto_9

    :cond_14
    new-array v2, v2, [F

    .line 409
    fill-array-data v2, :array_b

    .line 417
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v3, :cond_15

    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 418
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    .line 419
    aget v3, v2, v16

    sub-float v3, v17, v3

    aput v3, v2, v16

    const/4 v3, 0x5

    .line 420
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    .line 421
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    :cond_15
    if-eqz v1, :cond_17

    .line 423
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_17

    mul-int/lit8 v1, v3, 0x2

    .line 425
    aget v4, v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    const/4 v4, 0x0

    .line 426
    aput v4, v2, v1

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    .line 428
    aput v17, v2, v1

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_a

    .line 432
    :cond_17
    array-length v1, v2

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    .line 433
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

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
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
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

.method static synthetic access$000(Lorg/telegram/messenger/video/TextureRenderer;)I
    .locals 0

    .line 83
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/TextureRenderer;)I
    .locals 0

    .line 83
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/TextureRenderer;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    return-void
.end method

.method private applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V
    .locals 7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 621
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 624
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 625
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 627
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 629
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    .line 631
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 632
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    .line 633
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 636
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    mul-float/2addr v0, v3

    .line 637
    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 638
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 639
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 640
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 641
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 644
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 645
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    .line 646
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 648
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    iget-object v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float v4, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v5, p1

    iget-object v6, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    const v0, 0x8b82

    const v1, 0x8b30

    const v2, 0x8b31

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    .line 1164
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v4

    .line 1168
    :cond_0
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v4

    .line 1172
    :cond_1
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_2

    return v4

    .line 1176
    :cond_2
    invoke-static {p3, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1177
    invoke-static {p3, p2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1178
    invoke-static {p3}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1180
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 1181
    aget p1, p1, v4

    if-eq p1, v3, :cond_3

    .line 1182
    invoke-static {p3}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v4, p3

    :goto_0
    return v4

    .line 1187
    :cond_4
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 1191
    :cond_5
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6

    return v4

    .line 1195
    :cond_6
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_7

    return v4

    .line 1199
    :cond_7
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1200
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1201
    invoke-static {p3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1203
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1204
    aget p1, p1, v4

    if-eq p1, v3, :cond_8

    .line 1205
    invoke-static {p3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_1

    :cond_8
    move v4, p3

    :goto_1
    return v4
.end method

.method private drawEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;I)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p1

    .line 560
    iget-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xde1

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    .line 561
    iget-object v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v4, :cond_4

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v5, :cond_0

    goto :goto_2

    .line 564
    :cond_0
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 565
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-byte v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    move/from16 v1, p2

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    invoke-direct {p0, v10, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    .line 566
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 567
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 568
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v1

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 569
    iget-object v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v1, v1, v14

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 570
    iput v8, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    :cond_2
    const/4 v1, 0x0

    .line 572
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v0, v12

    if-eqz v0, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v14

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto/16 :goto_9

    :cond_4
    :goto_2
    return-void

    .line 573
    :cond_5
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 574
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v1, v0

    .line 575
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v2

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v0, v0

    :goto_3
    if-eq v1, v0, :cond_6

    .line 578
    iget-object v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 581
    :cond_6
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 583
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_8

    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 584
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    .line 585
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 586
    :cond_7
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 589
    :cond_8
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 590
    invoke-virtual {v1, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 591
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 592
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    iget-byte v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    move/from16 v1, p2

    goto :goto_4

    :cond_9
    move v1, v14

    :goto_4
    invoke-direct {p0, v10, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    .line 593
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 594
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 595
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v0, v12

    if-eqz v0, :cond_a

    move v8, v11

    goto :goto_5

    :cond_a
    move v8, v14

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto/16 :goto_9

    .line 599
    :cond_b
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 600
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 601
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 602
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    sub-float v5, v0, v5

    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    div-float v4, v6, v4

    sub-float v4, v0, v4

    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    add-float v7, v0, v3

    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    add-float/2addr v6, v0

    iget v8, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v0, v12, :cond_c

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v0, v12

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v11, v14

    :goto_6
    move-object v0, p0

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    .line 604
    :cond_d
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 605
    :goto_7
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_10

    .line 606
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    if-nez v0, :cond_e

    goto :goto_8

    .line 610
    :cond_e
    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    if-nez v0, :cond_f

    goto :goto_8

    .line 614
    :cond_f
    iget v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->drawEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;I)V

    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_10
    :goto_9
    return-void
.end method

.method private drawGradient()V
    .locals 8

    .line 441
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-gez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v0, v1, v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 446
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 447
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 448
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 451
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 452
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 454
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColorHandle:I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v4, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-static {v0, v1, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 455
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColorHandle:I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v4, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-static {v0, v1, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 456
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private drawTexture(ZI)V
    .locals 9

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 654
    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    return-void
.end method

.method private drawTexture(ZIFFFFFZ)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 658
    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    return-void
.end method

.method private drawTexture(ZIFFFFFZZI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 662
    iget-boolean v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0xbe2

    .line 663
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    .line 664
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 665
    iput-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    :cond_0
    const v2, -0x39e3c000    # -10000.0f

    cmpg-float v2, p3, v2

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-gtz v2, :cond_1

    .line 668
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v2, v12

    .line 669
    aput v11, v2, v3

    .line 671
    aput v11, v2, v9

    .line 672
    aput v11, v2, v5

    .line 674
    aput v13, v2, v8

    .line 675
    aput v13, v2, v7

    .line 677
    aput v11, v2, v6

    .line 678
    aput v13, v2, v4

    goto :goto_0

    :cond_1
    mul-float v2, p3, v10

    sub-float/2addr v2, v11

    sub-float v13, v11, p4

    mul-float/2addr v13, v10

    sub-float/2addr v13, v11

    mul-float v11, p5, v10

    mul-float v14, p6, v10

    .line 685
    iget-object v15, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aput v2, v15, v12

    .line 686
    aput v13, v15, v3

    add-float/2addr v11, v2

    .line 688
    aput v11, v15, v9

    .line 689
    aput v13, v15, v5

    .line 691
    aput v2, v15, v8

    sub-float/2addr v13, v14

    .line 692
    aput v13, v15, v7

    .line 694
    aput v11, v15, v6

    .line 695
    aput v13, v15, v4

    .line 697
    :goto_0
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aget v4, v2, v12

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    if-eqz p8, :cond_2

    .line 699
    aget v5, v2, v9

    .line 700
    aget v11, v2, v12

    aput v11, v2, v9

    .line 701
    aput v5, v2, v12

    .line 703
    aget v5, v2, v6

    .line 704
    aget v9, v2, v8

    aput v9, v2, v6

    .line 705
    aput v5, v2, v8

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    .line 708
    iget v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 709
    aget v6, v2, v7

    aget v2, v2, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v10

    move v2, v12

    :goto_1
    if-ge v2, v8, :cond_3

    .line 711
    iget-object v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    mul-int/lit8 v9, v2, 0x2

    aget v10, v3, v9

    sub-float/2addr v10, v4

    add-int/lit8 v11, v9, 0x1

    .line 712
    aget v13, v3, v11

    sub-float/2addr v13, v6

    div-float/2addr v13, v5

    float-to-double v14, v10

    float-to-double v7, v1

    .line 713
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    float-to-double v12, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    move/from16 p3, v11

    sub-double v10, v16, v18

    double-to-float v10, v10

    add-float/2addr v10, v4

    aput v10, v3, v9

    .line 714
    iget-object v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v12, v7

    add-double/2addr v14, v12

    double-to-float v7, v14

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    aput v7, v3, p3

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v12, 0x0

    goto :goto_1

    .line 717
    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 718
    iget v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-ltz p10, :cond_4

    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    aget-object v1, v1, p10

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_4
    if-eqz p9, :cond_5

    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :goto_3
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 719
    iget v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 720
    iget v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ltz p10, :cond_6

    iget-object v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->partsTextureBuffer:Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_6
    if-eqz p9, :cond_7

    iget-object v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_7
    iget-object v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    :goto_4
    move/from16 p5, v1

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p8, v4

    move/from16 p9, v5

    move-object/from16 p10, v6

    invoke-static/range {p5 .. p10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-eqz p1, :cond_8

    const/16 v1, 0xde1

    move/from16 v2, p2

    .line 722
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 724
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1084
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1085
    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    const/high16 v4, 0x44000000    # 512.0f

    const/16 v5, 0x200

    if-le v0, v5, :cond_0

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1087
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 1088
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1090
    :cond_0
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-le v0, v5, :cond_1

    .line 1091
    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1092
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 1094
    :cond_1
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 1095
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v0, :cond_3

    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1098
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    new-array v9, v0, [I

    .line 1099
    iput-object v9, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 1100
    iget-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iget v8, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    .line 1101
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    goto/16 :goto_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1103
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v6, Ljava/io/File;

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    sget v16, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v17, 0x1

    const/16 v18, 0x200

    const/16 v19, 0x200

    const/16 v20, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v20}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1104
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFps()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    const/4 v0, 0x0

    .line 1105
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 1106
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 1108
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v5, 0x2

    if-lt v0, v3, :cond_7

    .line 1109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1110
    iget-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v3, v5, :cond_6

    .line 1111
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1113
    :cond_6
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1116
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1117
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 1119
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1120
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v0, v7, v6, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1122
    iget-byte v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v7, v5, :cond_8

    .line 1123
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1125
    :cond_8
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v6, v0, v7, v8, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1127
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1129
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1132
    :goto_1
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_a

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    .line 1133
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    .line 1134
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1135
    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    float-to-double v6, v6

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1136
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    rem-int/2addr v0, v5

    if-ne v0, v4, :cond_9

    .line 1137
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v5, v4, v3

    add-float/2addr v0, v5

    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v7, v6, v3

    add-float/2addr v5, v7

    .line 1139
    iget v7, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v8, v7

    mul-float/2addr v4, v8

    iget v8, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v8

    div-float/2addr v4, v9

    int-to-float v8, v8

    mul-float/2addr v6, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1140
    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1141
    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v6, v3

    sub-float/2addr v0, v6

    .line 1143
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float/2addr v4, v3

    sub-float/2addr v5, v4

    .line 1144
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1146
    :cond_9
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1147
    :cond_a
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_b

    .line 1150
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v0, v4, v0

    .line 1151
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1152
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    goto :goto_2

    :cond_b
    cmpg-float v4, v0, v4

    if-gez v4, :cond_c

    .line 1154
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v0, v4

    .line 1155
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1156
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1234
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const-string v1, "#version 320 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    if-eqz p3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1235
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1237
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1238
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aput p1, v0, v3

    const-string/jumbo v0, "texSize"

    .line 1240
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    .line 1243
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v0, v0

    if-ge p1, v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 1244
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_3

    .line 1246
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aget p2, p2, p3

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1247
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aput p1, p2, p3

    :cond_3
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 15

    move-object v11, p0

    .line 460
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    const v1, 0x84c0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    goto/16 :goto_2

    .line 463
    :cond_0
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 464
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    if-eqz v0, :cond_2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v13

    .line 466
    :goto_0
    iget-object v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 467
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stMatrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 470
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    .line 473
    :cond_2
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xbe2

    .line 474
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 475
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    .line 482
    :cond_3
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_6

    .line 483
    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 485
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    invoke-static {v13, v13, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 486
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 487
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 488
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 489
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 490
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v0

    const v2, 0x8d40

    .line 492
    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 493
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    if-ne v2, v3, :cond_4

    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    iget v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    if-eq v3, v4, :cond_5

    .line 494
    :cond_4
    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v13, v13, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 497
    :cond_5
    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    xor-int/2addr v0, v12

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v0

    .line 498
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    const/16 v3, 0xde1

    .line 500
    iget-object v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    goto :goto_1

    .line 502
    :cond_6
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 503
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const v3, 0x8d65

    .line 505
    iget-object v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    .line 508
    :goto_1
    invoke-direct {p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    .line 510
    iget-object v5, v11, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 511
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 512
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 514
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v5, v0, v2

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    iget-object v10, v11, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 515
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 516
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v5, v0, v2

    iget-object v10, v11, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 517
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 519
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    if-eqz v0, :cond_7

    .line 520
    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    iget v5, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v5, v5

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 523
    :cond_7
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    aget v0, v0, v2

    invoke-static {v0, v12, v13, v4, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 524
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    aget v0, v0, v2

    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v12, v13, v2, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 525
    invoke-static {v0, v13, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 527
    :goto_2
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_9

    .line 528
    :cond_8
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 529
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 531
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 532
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 533
    iget v1, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, v11, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 534
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 536
    :cond_9
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_b

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v14, v13

    :goto_3
    if-ge v14, v12, :cond_b

    const/4 v1, 0x1

    .line 538
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    aget v2, v0, v14

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-eqz v0, :cond_a

    if-nez v14, :cond_a

    move v9, v12

    goto :goto_4

    :cond_a
    move v9, v13

    :goto_4
    const/4 v10, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 541
    :cond_b
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_c

    move v14, v13

    .line 542
    :goto_5
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v0

    if-ge v14, v1, :cond_c

    const/4 v1, 0x1

    .line 543
    aget v2, v0, v14

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v10, v14

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 546
    :cond_c
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_f

    .line 547
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_d

    move v0, v12

    goto :goto_6

    :cond_d
    move v0, v13

    :goto_6
    move v14, v0

    :goto_7
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v1, v0

    if-ge v14, v1, :cond_f

    const/4 v1, 0x1

    .line 548
    aget v2, v0, v14

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-eqz v0, :cond_e

    if-nez v14, :cond_e

    move v9, v12

    goto :goto_8

    :cond_e
    move v9, v13

    :goto_8
    const/4 v10, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 551
    :cond_f
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-eqz v0, :cond_10

    .line 552
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge v13, v0, :cond_10

    .line 553
    iget-object v1, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/video/TextureRenderer;->drawEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 556
    :cond_10
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 437
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public release()V
    .locals 7

    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 1214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1215
    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1216
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1217
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1219
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1

    .line 1220
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1222
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Components/EditTextEffects;

    if-eqz v4, :cond_2

    .line 1223
    check-cast v3, Lorg/telegram/ui/Components/EditTextEffects;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEffects;->recycleEmojis()V

    .line 1225
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    .line 1227
    iput-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V
    .locals 1

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBreakStrategy(I)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 28

    move-object/from16 v10, p0

    const/4 v11, 0x0

    move v0, v11

    .line 734
    :goto_0
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    const/4 v2, 0x0

    .line 736
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    if-ne v0, v3, :cond_0

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);}\n"

    goto :goto_1

    .line 738
    :cond_0
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    if-ne v0, v3, :cond_1

    const-string/jumbo v2, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    .line 740
    :cond_1
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-ne v0, v3, :cond_2

    const-string/jumbo v2, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform vec4 gradientTopColor;\nuniform vec4 gradientBottomColor;\nfloat interleavedGradientNoise(vec2 n) {\n    return fract(52.9829189 * fract(.06711056 * n.x + .00583715 * n.y));\n}\nvoid main() {\n  gl_FragColor = mix(gradientTopColor, gradientBottomColor, vTextureCoord.y + (.2 * interleavedGradientNoise(gl_FragCoord.xy) - .1));\n}\n"

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 746
    invoke-direct {v10, v3, v2, v11}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    aput v2, v1, v0

    .line 747
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 748
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 749
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 750
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 751
    iget v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-ne v0, v1, :cond_4

    .line 752
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v1, v1, v0

    const-string v2, "gradientTopColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColorHandle:I

    .line 753
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v1, v1, v0

    const-string v2, "gradientBottomColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColorHandle:I

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x1

    new-array v0, v12, [I

    .line 757
    invoke-static {v12, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 758
    aget v0, v0, v11

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    const v1, 0x8d65

    .line 759
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    .line 760
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 761
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2802

    const v6, 0x812f

    .line 762
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2803

    .line 763
    invoke-static {v1, v7, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 765
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-nez v0, :cond_6

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    :cond_6
    const v0, 0x8b31

    const-string v1, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;}"

    .line 766
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    const-string/jumbo v8, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;void main() {gl_FragColor = texture2D(sTexture, vTextureCoord);}"

    .line 767
    invoke-static {v1, v8}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 769
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    .line 770
    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 771
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 772
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 773
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string v8, "inputTexCoord"

    invoke-static {v0, v12, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 775
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v12, [I

    .line 777
    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const v13, 0x8b82

    invoke-static {v9, v13, v0, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 778
    aget v0, v0, v11

    if-nez v0, :cond_7

    .line 779
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 780
    iput v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    goto :goto_3

    .line 782
    :cond_7
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    .line 783
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    .line 784
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v1, "sourceImage"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    .line 789
    :cond_8
    :goto_3
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_9

    .line 790
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->create()Z

    .line 791
    iget-object v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    iget v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v8

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/ui/Components/FilterShaders;->setRenderData(Landroid/graphics/Bitmap;IIII)V

    .line 793
    :cond_9
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    const/high16 v13, -0x1000000

    const/4 v14, 0x2

    const/16 v8, 0xde1

    if-nez v0, :cond_a

    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v9, :cond_14

    :cond_a
    if-eqz v0, :cond_b

    move v0, v12

    goto :goto_4

    :cond_b
    move v0, v11

    .line 794
    :goto_4
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v9, :cond_c

    move v9, v12

    goto :goto_5

    :cond_c
    move v9, v11

    :goto_5
    add-int/2addr v0, v9

    new-array v0, v0, [I

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    .line 795
    array-length v9, v0

    invoke-static {v9, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v0, v11

    .line 797
    :goto_6
    :try_start_0
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v9, v9

    if-ge v0, v9, :cond_14

    if-nez v0, :cond_d

    .line 800
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v9, :cond_d

    .line 802
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 803
    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 804
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_7

    .line 806
    :cond_d
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move v1, v11

    move v15, v1

    .line 808
    :goto_7
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_13

    if-nez v0, :cond_12

    .line 810
    iget-object v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v11, :cond_12

    iget-boolean v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-nez v11, :cond_12

    .line 811
    iget v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 812
    invoke-virtual {v5, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 813
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v11, 0x5a

    if-eq v1, v11, :cond_f

    const/16 v11, 0x10e

    if-ne v1, v11, :cond_e

    goto :goto_8

    .line 818
    :cond_e
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v13, v13

    div-float/2addr v11, v13

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget v6, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v6, v6

    div-float/2addr v13, v6

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_9

    .line 816
    :cond_f
    :goto_8
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v11, v11

    div-float/2addr v6, v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v13, v13

    div-float/2addr v11, v13

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 821
    :goto_9
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 822
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    neg-int v13, v13

    div-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/2addr v4, v14

    int-to-float v4, v4

    invoke-virtual {v11, v13, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-ne v15, v12, :cond_10

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_a

    :cond_10
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_a
    div-float/2addr v4, v6

    if-ne v15, v14, :cond_11

    const/high16 v13, -0x40800000    # -1.0f

    goto :goto_b

    :cond_11
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_b
    div-float/2addr v13, v6

    .line 823
    invoke-virtual {v11, v4, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    .line 824
    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 825
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, v14

    int-to-float v4, v4

    invoke-virtual {v11, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 826
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7, v9, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v9, v5

    .line 830
    :cond_12
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    aget v1, v1, v0

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 831
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 832
    invoke-static {v8, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 833
    invoke-static {v8, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 834
    invoke-static {v8, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v1, 0x0

    .line 835
    invoke-static {v8, v1, v9, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x2800

    const/16 v5, 0x2802

    const v6, 0x812f

    const/16 v7, 0x2803

    const/4 v11, 0x0

    const/high16 v13, -0x1000000

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 839
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 842
    :cond_14
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    const/4 v11, 0x4

    const/16 v13, 0x8

    const/4 v15, 0x7

    const/16 v22, 0x0

    const/4 v9, 0x3

    const/high16 v23, 0x40000000    # 2.0f

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 843
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    .line 844
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/FloatBuffer;

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    .line 845
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, 0x0

    .line 847
    :goto_c
    :try_start_1
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 848
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 849
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 851
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 852
    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 853
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    .line 854
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 855
    iget v6, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 856
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 857
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    aget v5, v5, v0

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 858
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    .line 859
    invoke-static {v8, v5, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2802

    const v6, 0x812f

    .line 860
    invoke-static {v8, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    .line 861
    invoke-static {v8, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v5, 0x0

    .line 862
    invoke-static {v8, v5, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    new-array v4, v13, [F

    aput v22, v4, v5

    aput v22, v4, v12

    .line 864
    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v6, v5

    aput v6, v4, v14

    aput v22, v4, v9

    aput v22, v4, v11

    const/4 v6, 0x5

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v9, v7

    aput v9, v4, v6

    const/4 v6, 0x6

    int-to-float v5, v5

    aput v5, v4, v6

    int-to-float v5, v7

    aput v5, v4, v15

    .line 870
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v11, :cond_15

    mul-int/lit8 v5, v1, 0x2

    .line 872
    aget v6, v4, v5

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v23

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 873
    aget v6, v4, v5

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v23

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_15
    const/high16 v7, 0x3f800000    # 1.0f

    .line 875
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v1, v0

    .line 876
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x3

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    .line 879
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_16
    new-array v0, v13, [F

    .line 882
    fill-array-data v0, :array_0

    const/16 v1, 0x20

    .line 888
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTextureBuffer:Ljava/nio/FloatBuffer;

    .line 889
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 891
    :cond_17
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    const/16 v0, 0x200

    const/16 v1, 0x200

    .line 893
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    new-array v0, v12, [I

    .line 894
    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    const/4 v1, 0x0

    .line 895
    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 896
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v1

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 897
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 898
    invoke-static {v8, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 899
    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 900
    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 901
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v0, :cond_31

    .line 902
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 903
    iget-byte v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-eqz v1, :cond_2f

    if-ne v1, v14, :cond_18

    goto/16 :goto_1a

    :cond_18
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v12, :cond_2c

    .line 906
    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    .line 907
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 908
    iget-boolean v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->betterFraming:Z

    .line 909
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    .line 910
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 911
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 913
    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 914
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 916
    :cond_19
    iget v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 917
    new-instance v5, Landroid/text/SpannableString;

    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 919
    iget-object v1, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    if-nez v1, :cond_1a

    goto :goto_f

    .line 922
    :cond_1a
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v1, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 923
    iget-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 924
    iget-byte v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 925
    new-instance v4, Lorg/telegram/messenger/video/TextureRenderer$1;

    const-wide/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v21

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    move-object v11, v4

    move-wide/from16 v3, v18

    move-object v15, v5

    move/from16 v5, v20

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    move v13, v7

    move-object v7, v8

    move-object v13, v8

    move-object/from16 v8, v19

    move/from16 v24, v9

    move-object/from16 v9, v25

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/video/TextureRenderer$1;-><init>(Lorg/telegram/messenger/video/TextureRenderer;JFLandroid/graphics/Paint$FontMetricsInt;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;)V

    move-object/from16 v1, v25

    .line 953
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v1, v2

    const/16 v3, 0x21

    invoke-virtual {v15, v11, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v8, v13

    move-object v5, v15

    move-object/from16 v6, v19

    move/from16 v9, v24

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v11, 0x4

    const/16 v13, 0x8

    const/4 v15, 0x7

    goto :goto_f

    :cond_1b
    move-object v15, v5

    move-object/from16 v19, v6

    move-object v13, v8

    move/from16 v24, v9

    .line 955
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v15, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 957
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 958
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_1c

    .line 959
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v3, 0x0

    .line 960
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_1c

    .line 961
    aget-object v4, v1, v3

    const v5, 0x3f59999a    # 0.85f

    iput v5, v4, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 967
    :cond_1c
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v1, v12, :cond_1e

    if-eq v1, v14, :cond_1d

    const/16 v1, 0x13

    goto :goto_11

    :cond_1d
    const/16 v1, 0x15

    goto :goto_11

    :cond_1e
    const/16 v1, 0x11

    .line 980
    :goto_11
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 981
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_23

    .line 983
    iget v3, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v3, v12, :cond_22

    if-eq v3, v14, :cond_21

    .line 986
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_20

    :cond_1f
    const/4 v9, 0x3

    goto :goto_13

    :cond_20
    :goto_12
    move v9, v14

    goto :goto_13

    .line 992
    :cond_21
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1f

    goto :goto_12

    :cond_22
    const/4 v9, 0x4

    .line 995
    :goto_13
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_23
    const/4 v3, 0x0

    .line 998
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/high16 v3, 0x10000000

    .line 999
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1000
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1001
    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v3, 0x17

    if-lt v1, v3, :cond_24

    .line 1003
    invoke-virtual {v10, v2}, Lorg/telegram/messenger/video/TextureRenderer;->setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    .line 1005
    :cond_24
    iget-byte v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-nez v1, :cond_26

    .line 1006
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1007
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v3, 0x3f389375    # 0.721f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_25

    const/high16 v1, -0x1000000

    goto :goto_14

    :cond_25
    const/4 v1, -0x1

    :goto_14
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :goto_15
    const/4 v3, 0x3

    goto :goto_18

    :cond_26
    if-ne v1, v12, :cond_28

    .line 1009
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_27

    const/high16 v1, -0x67000000

    goto :goto_16

    :cond_27
    const v1, -0x66000001

    :goto_16
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1010
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_15

    :cond_28
    if-ne v1, v14, :cond_2a

    .line 1012
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_29

    const/high16 v1, -0x1000000

    goto :goto_17

    :cond_29
    const/4 v1, -0x1

    :goto_17
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1013
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_15

    :cond_2a
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2b

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1016
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1019
    :cond_2b
    :goto_18
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/EditText;->measure(II)V

    .line 1020
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v4}, Landroid/widget/EditText;->layout(IIII)V

    .line 1021
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1022
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1023
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1b

    :cond_2c
    move-object v13, v8

    move/from16 v24, v9

    const/4 v3, 0x3

    if-ne v1, v3, :cond_30

    .line 1025
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;F)V

    .line 1026
    iget-object v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    .line 1027
    iget-byte v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    .line 1028
    iget v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    .line 1029
    iget-object v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v12, :cond_2d

    .line 1030
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji()V

    .line 1032
    :cond_2d
    iget v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1033
    iget v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 1034
    iget v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v4, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 1035
    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/16 v6, 0x8

    add-int/2addr v4, v6

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    add-int/2addr v5, v6

    .line 1036
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1037
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v5, 0x8

    int-to-float v6, v5

    .line 1038
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1039
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1040
    invoke-virtual {v1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/16 v4, 0x10

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 1041
    iget v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v2, v2

    div-float v2, v4, v2

    iput v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalWidth:F

    .line 1042
    iget v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    .line 1043
    iget-object v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v12, :cond_30

    .line 1044
    iget-object v2, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 1045
    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v6}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v6, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1046
    iget-object v7, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1047
    iget-byte v7, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v7, v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1049
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1050
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiBounds(Landroid/graphics/RectF;)V

    .line 1052
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget v8, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    .line 1053
    iget v7, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget v9, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1055
    iget v8, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    cmpl-float v11, v8, v22

    if-eqz v11, :cond_2e

    .line 1056
    iget v11, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v15, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v15, v15, v23

    add-float/2addr v11, v15

    .line 1057
    iget v15, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    div-float v9, v9, v23

    add-float/2addr v15, v9

    .line 1058
    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v3, v3

    div-float/2addr v9, v3

    sub-float/2addr v1, v11

    sub-float/2addr v7, v15

    div-float/2addr v7, v9

    float-to-double v4, v1

    neg-float v1, v8

    move v8, v15

    float-to-double v14, v1

    .line 1061
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    move-wide/from16 v26, v4

    float-to-double v3, v7

    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    move-object/from16 v16, v6

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    sub-double/2addr v14, v5

    double-to-float v1, v14

    add-float/2addr v1, v11

    .line 1062
    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v26

    iget v7, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v7, v7

    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v3, v14

    add-double/2addr v5, v3

    double-to-float v3, v5

    mul-float/2addr v3, v9

    add-float v7, v3, v8

    goto :goto_19

    :cond_2e
    move-object/from16 v16, v6

    .line 1065
    :goto_19
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v4, v5

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1066
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr v4, v5

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1067
    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1068
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v3, v3, v23

    sub-float/2addr v1, v3

    .line 1069
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float v4, v4, v23

    sub-float/2addr v7, v4

    .line 1070
    iput v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1071
    iget v1, v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1073
    invoke-direct {v10, v2}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    goto :goto_1b

    :cond_2f
    :goto_1a
    move-object v13, v8

    move/from16 v24, v9

    .line 904
    invoke-direct {v10, v13}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_30
    :goto_1b
    add-int/lit8 v9, v24, 0x1

    const/4 v11, 0x4

    const/16 v13, 0x8

    const/4 v14, 0x2

    const/4 v15, 0x7

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    .line 1078
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_31
    return-void

    :array_0
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
