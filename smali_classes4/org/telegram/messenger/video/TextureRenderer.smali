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

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 97
    fill-array-data v8, :array_0

    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/4 v8, -0x1

    .line 166
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    .line 167
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    .line 168
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    const/16 v8, 0x10

    new-array v9, v8, [F

    .line 170
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    new-array v9, v8, [F

    .line 171
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    new-array v8, v8, [F

    .line 172
    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    const/4 v8, 0x1

    .line 200
    iput-boolean v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    move/from16 v9, p12

    .line 223
    iput-boolean v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    move-object/from16 v9, p16

    .line 224
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    new-array v9, v7, [F

    .line 226
    fill-array-data v9, :array_1

    .line 233
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_0

    .line 234
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

    .line 236
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

    .line 243
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 244
    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
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

    .line 247
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 250
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_1

    .line 253
    new-instance v9, Lorg/telegram/ui/Components/FilterShaders;

    move-object/from16 v13, p15

    invoke-direct {v9, v8, v13}, Lorg/telegram/ui/Components/FilterShaders;-><init>(ZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    .line 255
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/FilterShaders;->setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    .line 258
    :cond_1
    iput v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 259
    iput v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 260
    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    .line 261
    iput v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move-object/from16 v9, p2

    .line 262
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    move-object/from16 v9, p3

    .line 263
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move-object/from16 v9, p4

    .line 264
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    cmpl-float v13, v6, v9

    if-nez v13, :cond_2

    const/high16 v6, 0x41f00000    # 30.0f

    .line 265
    :cond_2
    iput v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    .line 268
    iput v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const/4 v6, 0x2

    if-eqz p14, :cond_3

    if-eqz p13, :cond_3

    .line 270
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    move v13, v6

    goto :goto_0

    :cond_3
    move v13, v8

    .line 272
    :goto_0
    iget-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v14, :cond_4

    add-int/lit8 v14, v13, 0x1

    .line 273
    iput v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    move v13, v14

    .line 275
    :cond_4
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    .line 276
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    .line 277
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    .line 278
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    .line 279
    new-array v13, v13, [I

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    .line 281
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v13, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v15, 0x5

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz p14, :cond_9

    if-eqz p13, :cond_9

    new-array v14, v7, [F

    .line 284
    fill-array-data v14, :array_2

    .line 290
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 291
    invoke-virtual {v10, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v10, v7, [F

    aput v9, v10, v11

    .line 293
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

    .line 298
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    .line 299
    invoke-virtual {v13, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    .line 301
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    :cond_9
    if-eqz v1, :cond_d

    .line 304
    iget-object v10, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v10, :cond_b

    .line 305
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

    .line 312
    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v4, v11

    :goto_5
    if-ge v4, v12, :cond_a

    mul-int/lit8 v5, v4, 0x2

    .line 314
    aget v6, v14, v5

    int-to-float v10, v2

    div-float/2addr v6, v10

    mul-float/2addr v6, v13

    sub-float v6, v6, v17

    aput v6, v14, v5

    add-int/2addr v5, v8

    .line 315
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

    .line 317
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 318
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

    .line 326
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 328
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 329
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 331
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

    .line 333
    aget v19, v4, v18

    div-int/lit8 v15, v2, 0x2

    int-to-float v15, v15

    sub-float v15, v19, v15

    add-int/lit8 v19, v18, 0x1

    .line 334
    aget v20, v4, v19

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    sub-float v12, v20, v12

    float-to-double v6, v15

    move v15, v14

    float-to-double v13, v8

    .line 335
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

    .line 336
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

    .line 337
    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    aput v2, v4, v18

    .line 338
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

    .line 340
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 341
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

    .line 344
    fill-array-data v5, :array_3

    .line 350
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 351
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_7
    const/4 v14, 0x0

    .line 354
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_11

    if-ne v14, v5, :cond_e

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 356
    fill-array-data v2, :array_4

    goto :goto_9

    :cond_e
    const/16 v2, 0x8

    if-ne v14, v4, :cond_f

    new-array v2, v2, [F

    .line 363
    fill-array-data v2, :array_5

    goto :goto_9

    :cond_f
    if-ne v14, v3, :cond_10

    new-array v2, v2, [F

    .line 370
    fill-array-data v2, :array_6

    goto :goto_9

    :cond_10
    new-array v2, v2, [F

    .line 377
    fill-array-data v2, :array_7

    goto :goto_9

    :cond_11
    const/16 v2, 0x8

    if-ne v14, v5, :cond_12

    new-array v2, v2, [F

    .line 386
    fill-array-data v2, :array_8

    goto :goto_9

    :cond_12
    if-ne v14, v4, :cond_13

    new-array v2, v2, [F

    .line 393
    fill-array-data v2, :array_9

    goto :goto_9

    :cond_13
    if-ne v14, v3, :cond_14

    new-array v2, v2, [F

    .line 400
    fill-array-data v2, :array_a

    goto :goto_9

    :cond_14
    new-array v2, v2, [F

    .line 407
    fill-array-data v2, :array_b

    .line 415
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v3, :cond_15

    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 416
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    .line 417
    aget v3, v2, v16

    sub-float v3, v17, v3

    aput v3, v2, v16

    const/4 v3, 0x5

    .line 418
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    .line 419
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    :cond_15
    if-eqz v1, :cond_17

    .line 421
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_17

    mul-int/lit8 v1, v3, 0x2

    .line 423
    aget v4, v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    const/4 v4, 0x0

    .line 424
    aput v4, v2, v1

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    .line 426
    aput v17, v2, v1

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_a

    .line 430
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

    .line 431
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

    .line 81
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/TextureRenderer;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    return p0
.end method

.method private applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V
    .locals 7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 616
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 619
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 620
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 622
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 624
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    .line 626
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 627
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    .line 628
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 631
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

    .line 632
    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 633
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 634
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 636
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 639
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 640
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    .line 641
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 643
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 644
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

    .line 1091
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v4

    .line 1095
    :cond_0
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v4

    .line 1099
    :cond_1
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_2

    return v4

    .line 1103
    :cond_2
    invoke-static {p3, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1104
    invoke-static {p3, p2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1105
    invoke-static {p3}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1107
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 1108
    aget p1, p1, v4

    if-eq p1, v3, :cond_3

    .line 1109
    invoke-static {p3}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v4, p3

    :goto_0
    return v4

    .line 1114
    :cond_4
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 1118
    :cond_5
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6

    return v4

    .line 1122
    :cond_6
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_7

    return v4

    .line 1126
    :cond_7
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1127
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1128
    invoke-static {p3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1130
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1131
    aget p1, p1, v4

    if-eq p1, v3, :cond_8

    .line 1132
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

    .line 558
    iget-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xde1

    const/4 v14, 0x0

    if-eqz v2, :cond_3

    .line 559
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, v2

    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    const/16 v4, 0x200

    const/16 v5, 0x200

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 560
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    iget-byte v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    invoke-direct {p0, v10, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    .line 561
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 562
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 563
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v1

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 564
    iget-object v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v1, v1, v14

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 565
    iput v8, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    :cond_1
    const/4 v1, 0x0

    .line 567
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v0, v12

    if-eqz v0, :cond_2

    move v8, v11

    goto :goto_1

    :cond_2
    move v8, v14

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto/16 :goto_8

    .line 568
    :cond_3
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_9

    .line 569
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v1, v0

    .line 570
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v2

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v0, v0

    :goto_2
    if-eq v1, v0, :cond_4

    .line 573
    iget-object v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 576
    :cond_4
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 578
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_6

    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 579
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    .line 580
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 581
    :cond_5
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

    .line 584
    :cond_6
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    .line 585
    invoke-virtual {v1, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 586
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 587
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    iget-byte v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move/from16 v1, p2

    goto :goto_3

    :cond_7
    move v1, v14

    :goto_3
    invoke-direct {p0, v10, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    .line 588
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 589
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 590
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v0, v12

    if-eqz v0, :cond_8

    move v8, v11

    goto :goto_4

    :cond_8
    move v8, v14

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto :goto_8

    .line 594
    :cond_9
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 595
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 596
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 597
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v0, v14

    iget v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v0, v12, :cond_a

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

    .line 599
    :cond_b
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 600
    :goto_6
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_e

    .line 601
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    if-nez v0, :cond_c

    goto :goto_7

    .line 605
    :cond_c
    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    if-nez v0, :cond_d

    goto :goto_7

    .line 609
    :cond_d
    iget v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->drawEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;I)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_e
    :goto_8
    return-void
.end method

.method private drawGradient()V
    .locals 8

    .line 439
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-gez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v0, v1, v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 444
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 445
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 446
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 447
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 450
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 452
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

    .line 453
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

    .line 454
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

    .line 649
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

    .line 653
    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    return-void
.end method

.method private drawTexture(ZIFFFFFZZI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 657
    iget-boolean v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0xbe2

    .line 658
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    .line 659
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 660
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

    .line 663
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v2, v12

    .line 664
    aput v11, v2, v3

    .line 666
    aput v11, v2, v9

    .line 667
    aput v11, v2, v5

    .line 669
    aput v13, v2, v8

    .line 670
    aput v13, v2, v7

    .line 672
    aput v11, v2, v6

    .line 673
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

    .line 680
    iget-object v15, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aput v2, v15, v12

    .line 681
    aput v13, v15, v3

    add-float/2addr v11, v2

    .line 683
    aput v11, v15, v9

    .line 684
    aput v13, v15, v5

    .line 686
    aput v2, v15, v8

    sub-float/2addr v13, v14

    .line 687
    aput v13, v15, v7

    .line 689
    aput v11, v15, v6

    .line 690
    aput v13, v15, v4

    .line 692
    :goto_0
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aget v4, v2, v12

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    if-eqz p8, :cond_2

    .line 694
    aget v5, v2, v9

    .line 695
    aget v11, v2, v12

    aput v11, v2, v9

    .line 696
    aput v5, v2, v12

    .line 698
    aget v5, v2, v6

    .line 699
    aget v9, v2, v8

    aput v9, v2, v6

    .line 700
    aput v5, v2, v8

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    .line 703
    iget v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 704
    aget v6, v2, v7

    aget v2, v2, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v10

    move v2, v12

    :goto_1
    if-ge v2, v8, :cond_3

    .line 706
    iget-object v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    mul-int/lit8 v9, v2, 0x2

    aget v10, v3, v9

    sub-float/2addr v10, v4

    add-int/lit8 v11, v9, 0x1

    .line 707
    aget v13, v3, v11

    sub-float/2addr v13, v6

    div-float/2addr v13, v5

    float-to-double v14, v10

    float-to-double v7, v1

    .line 708
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

    .line 709
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

    .line 712
    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 713
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

    .line 714
    iget v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 715
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

    .line 717
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 719
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1025
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    new-array v9, v0, [I

    .line 1026
    iput-object v9, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 1027
    iget-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x200

    const/16 v8, 0x200

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    .line 1028
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    goto/16 :goto_1

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1030
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

    .line 1031
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFps()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    const/4 v0, 0x0

    .line 1032
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 1033
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 1035
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v5, 0x2

    if-lt v0, v3, :cond_3

    .line 1036
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1037
    iget-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v3, v5, :cond_2

    .line 1038
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1040
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1043
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 1046
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1047
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1048
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v0, v7, v6, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1049
    iget-byte v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v7, v5, :cond_4

    .line 1050
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1052
    :cond_4
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1053
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v6, v0, v7, v8, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1054
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1056
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1059
    :goto_0
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_6

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    .line 1060
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

    .line 1061
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1062
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

    .line 1063
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    rem-int/2addr v0, v5

    if-ne v0, v4, :cond_5

    .line 1064
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v5, v4, v3

    add-float/2addr v0, v5

    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v7, v6, v3

    add-float/2addr v5, v7

    .line 1066
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

    .line 1067
    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1068
    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v6, v3

    sub-float/2addr v0, v6

    .line 1070
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float/2addr v4, v3

    sub-float/2addr v5, v4

    .line 1071
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1073
    :cond_5
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 1074
    :cond_6
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 1075
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

    if-lez v5, :cond_7

    .line 1077
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v0, v4, v0

    .line 1078
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1079
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    goto :goto_1

    :cond_7
    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    .line 1081
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v0, v4

    .line 1082
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1083
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1157
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

    .line 1158
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1160
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aput p1, v0, v3

    const-string/jumbo v0, "texSize"

    .line 1163
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    .line 1166
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

    .line 1167
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_3

    .line 1169
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aget p2, p2, p3

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1170
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aput p1, p2, p3

    :cond_3
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 15

    move-object v11, p0

    .line 458
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    const v1, 0x84c0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    goto/16 :goto_2

    .line 461
    :cond_0
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 462
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    if-eqz v0, :cond_2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v13

    .line 464
    :goto_0
    iget-object v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 465
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stMatrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 468
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    .line 471
    :cond_2
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xbe2

    .line 472
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 473
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    .line 480
    :cond_3
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_6

    .line 481
    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 483
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    invoke-static {v13, v13, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 484
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 485
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 486
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 487
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 488
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v0

    const v2, 0x8d40

    .line 490
    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 491
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    if-ne v2, v3, :cond_4

    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    iget v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    if-eq v3, v4, :cond_5

    .line 492
    :cond_4
    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v13, v13, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 495
    :cond_5
    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    xor-int/2addr v0, v12

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v0

    .line 496
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    const/16 v3, 0xde1

    .line 498
    iget-object v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    goto :goto_1

    .line 500
    :cond_6
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 501
    iget v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const v3, 0x8d65

    .line 503
    iget-object v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    .line 506
    :goto_1
    invoke-direct {p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    .line 508
    iget-object v5, v11, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 509
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 510
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 512
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v5, v0, v2

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    iget-object v10, v11, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 513
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 514
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v5, v0, v2

    iget-object v10, v11, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 515
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 517
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    if-eqz v0, :cond_7

    .line 518
    iget v3, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    iget v5, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v5, v5

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 521
    :cond_7
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    aget v0, v0, v2

    invoke-static {v0, v12, v13, v4, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 522
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    aget v0, v0, v2

    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v12, v13, v2, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 523
    invoke-static {v0, v13, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 525
    :goto_2
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-nez v0, :cond_8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_9

    .line 526
    :cond_8
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 527
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 529
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 530
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 531
    iget v1, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, v11, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 532
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 534
    :cond_9
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_b

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v14, v13

    :goto_3
    if-ge v14, v12, :cond_b

    const/4 v1, 0x1

    .line 536
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

    .line 539
    :cond_b
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_c

    move v14, v13

    .line 540
    :goto_5
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v0

    if-ge v14, v1, :cond_c

    const/4 v1, 0x1

    .line 541
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

    .line 544
    :cond_c
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_f

    .line 545
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

    .line 546
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

    .line 549
    :cond_f
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-eqz v0, :cond_10

    .line 550
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge v13, v0, :cond_10

    .line 551
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

    .line 554
    :cond_10
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 435
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public release()V
    .locals 7

    .line 1140
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1142
    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1143
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1144
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1146
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1

    .line 1147
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1149
    :cond_1
    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/EditTextEffects;

    if-eqz v3, :cond_2

    .line 1150
    check-cast v2, Lorg/telegram/ui/Components/EditTextEffects;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEffects;->recycleEmojis()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V
    .locals 1

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBreakStrategy(I)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 21

    move-object/from16 v10, p0

    const/4 v11, 0x0

    move v0, v11

    .line 729
    :goto_0
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    const/4 v2, 0x0

    .line 731
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    if-ne v0, v3, :cond_0

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);}\n"

    goto :goto_1

    .line 733
    :cond_0
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    if-ne v0, v3, :cond_1

    const-string/jumbo v2, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    .line 735
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

    .line 741
    invoke-direct {v10, v3, v2, v11}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    aput v2, v1, v0

    .line 742
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 743
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 744
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 745
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 746
    iget v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-ne v0, v1, :cond_4

    .line 747
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v1, v1, v0

    const-string v2, "gradientTopColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColorHandle:I

    .line 748
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

    .line 752
    invoke-static {v12, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 753
    aget v0, v0, v11

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    const v1, 0x8d65

    .line 754
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    .line 755
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 756
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2802

    const v6, 0x812f

    .line 757
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2803

    .line 758
    invoke-static {v1, v7, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 760
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

    .line 761
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    const-string/jumbo v8, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;void main() {gl_FragColor = texture2D(sTexture, vTextureCoord);}"

    .line 762
    invoke-static {v1, v8}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 764
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    .line 765
    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 766
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 767
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 768
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string v8, "inputTexCoord"

    invoke-static {v0, v12, v8}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 770
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v12, [I

    .line 772
    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const v13, 0x8b82

    invoke-static {v9, v13, v0, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 773
    aget v0, v0, v11

    if-nez v0, :cond_7

    .line 774
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 775
    iput v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    goto :goto_3

    .line 777
    :cond_7
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    .line 778
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    .line 779
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v1, "sourceImage"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    .line 784
    :cond_8
    :goto_3
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_9

    .line 785
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->create()Z

    .line 786
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

    .line 788
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

    .line 789
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

    .line 790
    array-length v9, v0

    invoke-static {v9, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v0, v11

    .line 792
    :goto_6
    :try_start_0
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v9, v9

    if-ge v0, v9, :cond_14

    if-nez v0, :cond_d

    .line 795
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v9, :cond_d

    .line 797
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 798
    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 799
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_7

    .line 801
    :cond_d
    iget-object v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move v1, v11

    move v15, v1

    .line 803
    :goto_7
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_13

    if-nez v0, :cond_12

    .line 805
    iget-object v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v11, :cond_12

    iget-boolean v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-nez v11, :cond_12

    .line 806
    iget v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 807
    invoke-virtual {v5, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 808
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v11, 0x5a

    if-eq v1, v11, :cond_f

    const/16 v11, 0x10e

    if-ne v1, v11, :cond_e

    goto :goto_8

    .line 813
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

    .line 811
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

    .line 816
    :goto_9
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 817
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

    .line 818
    invoke-virtual {v11, v4, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    .line 819
    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 820
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, v14

    int-to-float v4, v4

    invoke-virtual {v11, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 821
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7, v9, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v9, v5

    .line 825
    :cond_12
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    aget v1, v1, v0

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 826
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 827
    invoke-static {v8, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 828
    invoke-static {v8, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 829
    invoke-static {v8, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v1, 0x0

    .line 830
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

    .line 834
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 837
    :cond_14
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    const/4 v11, 0x4

    const/4 v13, 0x3

    const/4 v15, 0x7

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 838
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    .line 839
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/FloatBuffer;

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    .line 840
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, 0x0

    :goto_c
    const/16 v4, 0x8

    .line 842
    :try_start_1
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v5, v5

    if-ge v0, v5, :cond_16

    .line 843
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 844
    iget-object v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 846
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 847
    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 848
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    .line 849
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 850
    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v7, v9, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 851
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 852
    iget-object v6, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    aget v6, v6, v0

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 853
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2800

    .line 854
    invoke-static {v8, v6, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2802

    const v7, 0x812f

    .line 855
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2803

    .line 856
    invoke-static {v8, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v6, 0x0

    .line 857
    invoke-static {v8, v6, v1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    new-array v1, v4, [F

    const/4 v7, 0x0

    aput v7, v1, v6

    aput v7, v1, v12

    .line 859
    iget v6, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v9, v6

    aput v9, v1, v14

    aput v7, v1, v13

    aput v7, v1, v11

    const/4 v7, 0x5

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v13, v9

    aput v13, v1, v7

    const/4 v7, 0x6

    int-to-float v6, v6

    aput v6, v1, v7

    int-to-float v6, v9

    aput v6, v1, v15

    .line 865
    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v11, :cond_15

    mul-int/lit8 v6, v5, 0x2

    .line 867
    aget v7, v1, v6

    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v7, v9

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 868
    aget v7, v1, v6

    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v7

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_15
    const/high16 v9, 0x3f800000    # 1.0f

    .line 870
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 871
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    aget-object v5, v5, v0

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x3

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    .line 874
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_16
    new-array v0, v4, [F

    .line 877
    fill-array-data v0, :array_0

    const/16 v1, 0x20

    .line 883
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTextureBuffer:Ljava/nio/FloatBuffer;

    .line 884
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 886
    :cond_17
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 888
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x200

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    new-array v0, v12, [I

    .line 889
    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    const/4 v1, 0x0

    .line 890
    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 891
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v1

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 892
    invoke-static {v8, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 893
    invoke-static {v8, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 894
    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 895
    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 896
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v0, :cond_2e

    .line 897
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 898
    iget-byte v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-eqz v1, :cond_2d

    if-ne v1, v14, :cond_18

    goto/16 :goto_1a

    :cond_18
    if-ne v1, v12, :cond_2c

    .line 901
    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    .line 902
    iget-boolean v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    iput-boolean v1, v8, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->betterFraming:Z

    .line 903
    iput-boolean v2, v8, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    .line 904
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 905
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 907
    iget-object v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 908
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 910
    :cond_19
    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 911
    new-instance v7, Landroid/text/SpannableString;

    iget-object v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 913
    iget-object v1, v6, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    if-nez v1, :cond_1a

    goto :goto_f

    .line 916
    :cond_1a
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v1, v6, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 917
    iget-object v2, v6, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 918
    iget-byte v2, v6, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 919
    invoke-direct {v10, v1}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    .line 920
    new-instance v5, Lorg/telegram/messenger/video/TextureRenderer$1;

    const-wide/16 v3, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v11, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    move-object v15, v7

    move-object v7, v9

    move-object/from16 v20, v8

    move-object v14, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/video/TextureRenderer$1;-><init>(Lorg/telegram/messenger/video/TextureRenderer;JFLandroid/graphics/Paint$FontMetricsInt;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;)V

    move-object/from16 v1, v18

    .line 945
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v1, v2

    const/16 v3, 0x21

    invoke-virtual {v15, v11, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v9, v14

    move-object v7, v15

    move-object/from16 v8, v20

    const/4 v11, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x7

    goto :goto_f

    :cond_1b
    move-object v15, v7

    move-object/from16 v20, v8

    move-object v14, v9

    .line 947
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v15, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 949
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 950
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_1c

    .line 951
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v3, 0x0

    .line 952
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_1c

    .line 953
    aget-object v4, v1, v3

    const v5, 0x3f59999a    # 0.85f

    iput v5, v4, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 959
    :cond_1c
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v1, v12, :cond_1e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    const/16 v1, 0x13

    goto :goto_11

    :cond_1d
    const/16 v1, 0x15

    goto :goto_11

    :cond_1e
    const/16 v1, 0x11

    .line 972
    :goto_11
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 973
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_23

    .line 975
    iget v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v3, v12, :cond_22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    .line 978
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_20

    :cond_1f
    const/4 v3, 0x3

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v3, 0x2

    goto :goto_13

    .line 984
    :cond_21
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1f

    goto :goto_12

    :cond_22
    const/4 v3, 0x4

    .line 987
    :goto_13
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_23
    const/4 v3, 0x0

    .line 990
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/high16 v3, 0x10000000

    .line 991
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 992
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 993
    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v3, 0x17

    if-lt v1, v3, :cond_24

    .line 995
    invoke-virtual {v10, v2}, Lorg/telegram/messenger/video/TextureRenderer;->setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    .line 997
    :cond_24
    iget-byte v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-nez v1, :cond_26

    .line 998
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 999
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

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
    const/4 v3, 0x2

    :goto_16
    const/4 v4, 0x3

    goto :goto_19

    :cond_26
    if-ne v1, v12, :cond_28

    .line 1001
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_27

    const/high16 v1, -0x67000000

    goto :goto_17

    :cond_27
    const v1, -0x66000001

    :goto_17
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1002
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_15

    :cond_28
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2a

    .line 1004
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v4, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_29

    const/high16 v1, -0x1000000

    goto :goto_18

    :cond_29
    const/4 v1, -0x1

    :goto_18
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1005
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_16

    :cond_2a
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    const/4 v1, 0x0

    .line 1007
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1008
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1011
    :cond_2b
    :goto_19
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/EditText;->measure(II)V

    .line 1012
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v5, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v1, v5}, Landroid/widget/EditText;->layout(IIII)V

    .line 1013
    iget v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v5, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1014
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1015
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1b

    :cond_2c
    move v3, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_1b

    :cond_2d
    :goto_1a
    move v3, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v14, v9

    .line 899
    invoke-direct {v10, v14}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1b
    add-int/lit8 v13, v13, 0x1

    move v14, v3

    const/4 v11, 0x4

    const/4 v15, 0x7

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    .line 1019
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2e
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
