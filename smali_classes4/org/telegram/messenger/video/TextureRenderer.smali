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

.field private blur:Lorg/telegram/ui/Components/BlurringShader;

.field private blurBlurImageHandle:I

.field private blurInputTexCoordHandle:I

.field private blurMaskImageHandle:I

.field private blurPath:Ljava/lang/String;

.field private blurPositionHandle:I

.field private blurShaderProgram:I

.field private blurTexture:[I

.field private blurVerticesBuffer:Ljava/nio/FloatBuffer;

.field private final cropState:Lorg/telegram/messenger/MediaController$CropState;

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

.field private imageHeight:I

.field private imageOrientation:I

.field private imagePath:Ljava/lang/String;

.field private imageWidth:I

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
.method public constructor <init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
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

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p12

    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 102
    fill-array-data v8, :array_0

    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/4 v8, -0x1

    .line 175
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    .line 176
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    .line 177
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    const/16 v8, 0x10

    new-array v9, v8, [F

    .line 179
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    new-array v9, v8, [F

    .line 180
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    new-array v8, v8, [F

    .line 181
    iput-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    const/4 v8, 0x1

    .line 215
    iput-boolean v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    move/from16 v9, p13

    .line 242
    iput-boolean v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    move-object/from16 v9, p17

    .line 243
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    new-array v9, v7, [F

    .line 245
    fill-array-data v9, :array_1

    .line 252
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_0

    .line 253
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

    move/from16 v11, p11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " fps = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 255
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

    .line 262
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 263
    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
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

    .line 266
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 269
    iget-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    invoke-static {v9, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_1

    .line 272
    new-instance v9, Lorg/telegram/ui/Components/FilterShaders;

    move-object/from16 v13, p16

    invoke-direct {v9, v8, v13}, Lorg/telegram/ui/Components/FilterShaders;-><init>(ZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    .line 273
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/FilterShaders;->setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    .line 275
    :cond_1
    iput v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 276
    iput v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 277
    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    .line 278
    iput v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move-object/from16 v9, p2

    .line 279
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    move-object/from16 v9, p3

    .line 280
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move-object/from16 v9, p4

    .line 281
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->blurPath:Ljava/lang/String;

    move-object/from16 v9, p5

    .line 282
    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    cmpl-float v13, v6, v9

    if-nez v13, :cond_2

    const/high16 v6, 0x41f00000    # 30.0f

    .line 283
    :cond_2
    iput v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    .line 284
    iput-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 287
    iput v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const/4 v6, 0x2

    if-eqz p15, :cond_3

    if-eqz p14, :cond_3

    .line 289
    iput v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    move v13, v6

    goto :goto_0

    :cond_3
    move v13, v8

    .line 291
    :goto_0
    iget-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v14, :cond_4

    add-int/lit8 v14, v13, 0x1

    .line 292
    iput v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    move v13, v14

    .line 294
    :cond_4
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    .line 295
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    .line 296
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    .line 297
    new-array v14, v13, [I

    iput-object v14, v0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    .line 298
    new-array v13, v13, [I

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    .line 300
    iget-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v13, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v15, 0x5

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz p15, :cond_9

    if-eqz p14, :cond_9

    new-array v14, v7, [F

    .line 303
    fill-array-data v14, :array_2

    .line 309
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 310
    invoke-virtual {v10, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v10, v7, [F

    aput v9, v10, v11

    .line 312
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

    .line 317
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    .line 318
    invoke-virtual {v13, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    .line 320
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    :cond_9
    if-eqz v1, :cond_d

    .line 323
    iget-object v10, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v10, :cond_b

    .line 324
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

    .line 331
    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v4, v11

    :goto_5
    if-ge v4, v12, :cond_a

    mul-int/lit8 v5, v4, 0x2

    .line 333
    aget v6, v14, v5

    int-to-float v10, v2

    div-float/2addr v6, v10

    mul-float/2addr v6, v13

    sub-float v6, v6, v17

    aput v6, v14, v5

    add-int/2addr v5, v8

    .line 334
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

    .line 336
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 337
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

    .line 345
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 347
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 348
    iget v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v9

    iget v15, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 350
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

    .line 352
    aget v19, v4, v18

    div-int/lit8 v15, v2, 0x2

    int-to-float v15, v15

    sub-float v15, v19, v15

    add-int/lit8 v19, v18, 0x1

    .line 353
    aget v20, v4, v19

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    sub-float v12, v20, v12

    float-to-double v6, v15

    move v15, v14

    float-to-double v13, v8

    .line 354
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

    .line 355
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

    .line 356
    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    aput v2, v4, v18

    .line 357
    iget v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v3, v6

    aput v3, v4, v19

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p7

    move/from16 v3, p8

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

    .line 359
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 360
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

    .line 363
    fill-array-data v5, :array_3

    .line 369
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 370
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_7
    const/4 v14, 0x0

    .line 373
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_11

    if-ne v14, v5, :cond_e

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 375
    fill-array-data v2, :array_4

    goto :goto_9

    :cond_e
    const/16 v2, 0x8

    if-ne v14, v4, :cond_f

    new-array v2, v2, [F

    .line 382
    fill-array-data v2, :array_5

    goto :goto_9

    :cond_f
    if-ne v14, v3, :cond_10

    new-array v2, v2, [F

    .line 389
    fill-array-data v2, :array_6

    goto :goto_9

    :cond_10
    new-array v2, v2, [F

    .line 396
    fill-array-data v2, :array_7

    goto :goto_9

    :cond_11
    const/16 v2, 0x8

    if-ne v14, v5, :cond_12

    new-array v2, v2, [F

    .line 405
    fill-array-data v2, :array_8

    goto :goto_9

    :cond_12
    if-ne v14, v4, :cond_13

    new-array v2, v2, [F

    .line 412
    fill-array-data v2, :array_9

    goto :goto_9

    :cond_13
    if-ne v14, v3, :cond_14

    new-array v2, v2, [F

    .line 419
    fill-array-data v2, :array_a

    goto :goto_9

    :cond_14
    new-array v2, v2, [F

    .line 426
    fill-array-data v2, :array_b

    .line 434
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v3, :cond_15

    iget-boolean v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 435
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    .line 436
    aget v3, v2, v16

    sub-float v3, v17, v3

    aput v3, v2, v16

    const/4 v3, 0x5

    .line 437
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    .line 438
    aget v4, v2, v3

    sub-float v4, v17, v4

    aput v4, v2, v3

    :cond_15
    if-eqz v1, :cond_17

    .line 440
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_17

    mul-int/lit8 v1, v3, 0x2

    .line 442
    aget v4, v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    const/4 v4, 0x0

    .line 443
    aput v4, v2, v1

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    .line 445
    aput v17, v2, v1

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_a

    .line 449
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

    .line 450
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

    .line 84
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/TextureRenderer;)I
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/TextureRenderer;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    return-void
.end method

.method private applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V
    .locals 7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 680
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 683
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 684
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 686
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 687
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 688
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    .line 690
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 691
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    .line 692
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 695
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

    .line 696
    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 697
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 698
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 700
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 703
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 704
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    .line 705
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 707
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->textColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 708
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

    .line 1303
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v4

    .line 1307
    :cond_0
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v4

    .line 1311
    :cond_1
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_2

    return v4

    .line 1315
    :cond_2
    invoke-static {p3, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1316
    invoke-static {p3, p2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 1317
    invoke-static {p3}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1319
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 1320
    aget p1, p1, v4

    if-eq p1, v3, :cond_3

    .line 1321
    invoke-static {p3}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v4, p3

    :goto_0
    return v4

    .line 1326
    :cond_4
    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 1330
    :cond_5
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6

    return v4

    .line 1334
    :cond_6
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p3

    if-nez p3, :cond_7

    return v4

    .line 1338
    :cond_7
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1339
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1340
    invoke-static {p3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array p1, v3, [I

    .line 1342
    invoke-static {p3, v0, p1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1343
    aget p1, p1, v4

    if-eq p1, v3, :cond_8

    .line 1344
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

    .line 619
    iget-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xde1

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    .line 620
    iget-object v3, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget v4, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v4, :cond_4

    iget v5, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v5, :cond_0

    goto :goto_2

    .line 623
    :cond_0
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 624
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

    .line 625
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 626
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 627
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v1

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 628
    iget-object v1, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v1, v1, v14

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 629
    iput v8, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    :cond_2
    const/4 v1, 0x0

    .line 631
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

    .line 632
    :cond_5
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 633
    iget v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v1, v0

    .line 634
    iget v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v0, v2

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v0, v0

    :goto_3
    if-eq v1, v0, :cond_6

    .line 637
    iget-object v2, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 640
    :cond_6
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 642
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_8

    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 643
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    .line 644
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

    .line 645
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

    .line 648
    :cond_8
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 649
    invoke-virtual {v1, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 650
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 651
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

    .line 652
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 653
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 654
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

    .line 658
    :cond_b
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 659
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 660
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v14, v0, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 661
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

    .line 663
    :cond_d
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 664
    :goto_7
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_10

    .line 665
    iget-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    if-nez v0, :cond_e

    goto :goto_8

    .line 669
    :cond_e
    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    if-nez v0, :cond_f

    goto :goto_8

    .line 673
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

    .line 458
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-gez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v0, v1, v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 463
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 464
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 465
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v2, v0, v1

    iget-object v7, p0, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 466
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 468
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 469
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 471
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

    .line 472
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

    .line 473
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

    .line 713
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

    .line 717
    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    return-void
.end method

.method private drawTexture(ZIFFFFFZZI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 721
    iget-boolean v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0xbe2

    .line 722
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    .line 723
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 724
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

    .line 727
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v2, v12

    .line 728
    aput v11, v2, v3

    .line 730
    aput v11, v2, v9

    .line 731
    aput v11, v2, v5

    .line 733
    aput v13, v2, v8

    .line 734
    aput v13, v2, v7

    .line 736
    aput v11, v2, v6

    .line 737
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

    .line 744
    iget-object v15, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aput v2, v15, v12

    .line 745
    aput v13, v15, v3

    add-float/2addr v11, v2

    .line 747
    aput v11, v15, v9

    .line 748
    aput v13, v15, v5

    .line 750
    aput v2, v15, v8

    sub-float/2addr v13, v14

    .line 751
    aput v13, v15, v7

    .line 753
    aput v11, v15, v6

    .line 754
    aput v13, v15, v4

    .line 756
    :goto_0
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aget v4, v2, v12

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    if-eqz p8, :cond_2

    .line 758
    aget v5, v2, v9

    .line 759
    aget v11, v2, v12

    aput v11, v2, v9

    .line 760
    aput v5, v2, v12

    .line 762
    aget v5, v2, v6

    .line 763
    aget v9, v2, v8

    aput v9, v2, v6

    .line 764
    aput v5, v2, v8

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    .line 767
    iget v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 768
    aget v6, v2, v7

    aget v2, v2, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v10

    move v2, v12

    :goto_1
    if-ge v2, v8, :cond_3

    .line 770
    iget-object v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    mul-int/lit8 v9, v2, 0x2

    aget v10, v3, v9

    sub-float/2addr v10, v4

    add-int/lit8 v11, v9, 0x1

    .line 771
    aget v13, v3, v11

    sub-float/2addr v13, v6

    div-float/2addr v13, v5

    float-to-double v14, v10

    float-to-double v7, v1

    .line 772
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

    .line 773
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

    .line 776
    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 777
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

    .line 778
    iget v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 779
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

    .line 781
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 783
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1223
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1224
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

    .line 1226
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 1227
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1229
    :cond_0
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-le v0, v5, :cond_1

    .line 1230
    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 1231
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 1233
    :cond_1
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 1234
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v0, :cond_3

    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1237
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    new-array v9, v0, [I

    .line 1238
    iput-object v9, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 1239
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

    .line 1240
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

    .line 1242
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

    .line 1243
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFps()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v0, v3

    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    const/4 v0, 0x0

    .line 1244
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 1245
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 1247
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v5, 0x2

    if-lt v0, v3, :cond_7

    .line 1248
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1249
    iget-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v3, v5, :cond_6

    .line 1250
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1252
    :cond_6
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1255
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 1258
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1259
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1260
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v0, v7, v6, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1261
    iget-byte v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-ne v7, v5, :cond_8

    .line 1262
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1264
    :cond_8
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v6, v0, v7, v8, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1266
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1268
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1271
    :goto_1
    iget-byte v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_a

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    .line 1272
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

    .line 1273
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1274
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

    .line 1275
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    rem-int/2addr v0, v5

    if-ne v0, v4, :cond_9

    .line 1276
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v5, v4, v3

    add-float/2addr v0, v5

    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v7, v6, v3

    add-float/2addr v5, v7

    .line 1278
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

    .line 1279
    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1280
    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v6, v3

    sub-float/2addr v0, v6

    .line 1282
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float/2addr v4, v3

    sub-float/2addr v5, v4

    .line 1283
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1285
    :cond_9
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1286
    :cond_a
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1287
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

    .line 1289
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v0, v4, v0

    .line 1290
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1291
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    goto :goto_2

    :cond_b
    cmpg-float v4, v0, v4

    if-gez v4, :cond_c

    .line 1293
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v0, v4

    .line 1294
    iget v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1295
    iput v0, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1373
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

    .line 1374
    :goto_0
    invoke-direct {p0, v0, p1, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1376
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1377
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget v3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    aput p1, v0, v3

    const-string/jumbo v0, "texSize"

    .line 1379
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    .line 1382
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

    .line 1383
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_3

    .line 1385
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aget p2, p2, p3

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1386
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    iget p3, p0, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    aput p1, p2, p3

    :cond_3
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 20

    move-object/from16 v11, p0

    .line 478
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    const/4 v1, 0x4

    const/4 v2, 0x5

    const v3, 0x8d40

    const/16 v4, 0xbe2

    const/16 v5, 0xde1

    const v6, 0x84c0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 479
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    move v7, v13

    goto/16 :goto_2

    .line 481
    :cond_0
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 482
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    if-eqz v0, :cond_2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v13

    .line 484
    :goto_0
    iget-object v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    array-length v9, v8

    if-ge v7, v9, :cond_1

    .line 485
    aget v8, v8, v7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 487
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stMatrix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 488
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    .line 491
    :cond_2
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    if-eqz v0, :cond_3

    .line 492
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 493
    iput-boolean v13, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    .line 500
    :cond_3
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_6

    .line 501
    iget-object v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 503
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    invoke-static {v13, v13, v0, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 504
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 505
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 506
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 507
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 508
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v0

    .line 510
    invoke-static {v3, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 511
    iget v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    if-ne v7, v8, :cond_4

    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    iget v9, v11, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    if-eq v8, v9, :cond_5

    .line 512
    :cond_4
    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v13, v13, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 515
    :cond_5
    iget-object v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    xor-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v7

    .line 516
    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    .line 518
    iget-object v9, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    move-object v10, v9

    move v9, v8

    move v8, v7

    move v7, v0

    move v0, v5

    goto :goto_1

    .line 520
    :cond_6
    iget v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 521
    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    const v0, 0x8d65

    .line 523
    iget-object v9, v11, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move-object v10, v9

    move v9, v8

    move v8, v7

    move v7, v13

    .line 526
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/TextureRenderer;->drawGradient()V

    .line 528
    iget-object v14, v11, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v14, v14, v9

    invoke-static {v14}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 529
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 530
    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 532
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v14, v0, v9

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 533
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v0, v0, v9

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 534
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v14, v0, v9

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 535
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v0, v0, v9

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 537
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->texSizeHandle:I

    if-eqz v0, :cond_7

    .line 538
    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v8, v8

    iget v14, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v14, v14

    invoke-static {v0, v8, v14}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 541
    :cond_7
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    aget v0, v0, v9

    invoke-static {v0, v12, v13, v10, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 542
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    aget v0, v0, v9

    iget-object v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v12, v13, v8, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 543
    invoke-static {v2, v13, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 545
    :goto_2
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    if-eqz v0, :cond_b

    .line 546
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    if-nez v0, :cond_8

    .line 547
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    .line 548
    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 549
    iput-boolean v12, v11, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    .line 552
    :cond_8
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v0, :cond_9

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_9

    .line 553
    aget v0, v0, v13

    .line 554
    iget v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->imageWidth:I

    .line 555
    iget v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->imageHeight:I

    goto :goto_3

    .line 556
    :cond_9
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_a

    xor-int/2addr v7, v12

    .line 557
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v0

    .line 558
    iget-object v7, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferWidth()I

    move-result v7

    .line 559
    iget-object v8, v11, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferHeight()I

    move-result v8

    goto :goto_3

    :cond_a
    move v0, v4

    move v7, v12

    move v8, v7

    :goto_3
    if-eq v0, v4, :cond_b

    .line 562
    iget-object v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v0, v7, v8}, Lorg/telegram/ui/Components/BlurringShader;->draw([FIII)V

    .line 564
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v4, v11, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v13, v13, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 566
    invoke-static {v3, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 568
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 570
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 571
    iget v14, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurInputTexCoordHandle:I

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x8

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->gradientTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 572
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 573
    iget v14, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurPositionHandle:I

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurVerticesBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 575
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurBlurImageHandle:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 576
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 577
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader;->getTexture()I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 579
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurMaskImageHandle:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    .line 580
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 581
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->blurTexture:[I

    aget v0, v0, v13

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 583
    invoke-static {v2, v13, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 586
    :cond_b
    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-nez v0, :cond_c

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-nez v0, :cond_c

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-nez v0, :cond_c

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_d

    .line 587
    :cond_c
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 588
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 590
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 591
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 592
    iget v1, v11, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, v11, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 593
    iget v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 595
    :cond_d
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_f

    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_f

    move v14, v13

    :goto_4
    if-ge v14, v12, :cond_f

    const/4 v1, 0x1

    .line 597
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

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

    goto :goto_5

    :cond_e
    move v9, v13

    :goto_5
    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 600
    :cond_f
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    if-eqz v0, :cond_10

    move v14, v13

    .line 601
    :goto_6
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v1, v0

    if-ge v14, v1, :cond_10

    const/4 v1, 0x1

    .line 602
    aget v2, v0, v14

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v10, v14

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 605
    :cond_10
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_13

    .line 606
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_11

    move v0, v12

    goto :goto_7

    :cond_11
    move v0, v13

    :goto_7
    move v14, v0

    :goto_8
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v1, v0

    if-ge v14, v1, :cond_13

    const/4 v1, 0x1

    .line 607
    aget v2, v0, v14

    const v3, -0x39e3c000    # -10000.0f

    const v4, -0x39e3c000    # -10000.0f

    const v5, -0x39e3c000    # -10000.0f

    const v6, -0x39e3c000    # -10000.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    if-eqz v0, :cond_12

    if-nez v14, :cond_12

    move v9, v12

    goto :goto_9

    :cond_12
    move v9, v13

    :goto_9
    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 610
    :cond_13
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-eqz v0, :cond_14

    .line 611
    iget-object v0, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    if-ge v13, v0, :cond_14

    .line 612
    iget-object v1, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v11, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-direct {v11, v1, v2}, Lorg/telegram/messenger/video/TextureRenderer;->drawEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 615
    :cond_14
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 454
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public release()V
    .locals 7

    .line 1352
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 1353
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1354
    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1355
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1356
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1358
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1

    .line 1359
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1361
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Components/EditTextEffects;

    if-eqz v4, :cond_2

    .line 1362
    check-cast v3, Lorg/telegram/ui/Components/EditTextEffects;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEffects;->recycleEmojis()V

    .line 1364
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1365
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    .line 1366
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

    .line 788
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBreakStrategy(I)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 25

    move-object/from16 v10, p0

    const/4 v11, 0x0

    move v0, v11

    .line 793
    :goto_0
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_5

    .line 795
    iget v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_EXTERNAL_SHADER:I

    if-ne v0, v2, :cond_0

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);}\n"

    goto :goto_1

    .line 797
    :cond_0
    iget v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_FILTER_SHADER:I

    if-ne v0, v2, :cond_1

    const-string/jumbo v3, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    .line 799
    :cond_1
    iget v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-ne v0, v2, :cond_2

    const-string/jumbo v3, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform vec4 gradientTopColor;\nuniform vec4 gradientBottomColor;\nfloat interleavedGradientNoise(vec2 n) {\n    return fract(52.9829189 * fract(.06711056 * n.x + .00583715 * n.y));\n}\nvoid main() {\n  gl_FragColor = mix(gradientTopColor, gradientBottomColor, vTextureCoord.y + (.2 * interleavedGradientNoise(gl_FragCoord.xy) - .1));\n}\n"

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 805
    invoke-direct {v10, v2, v3, v11}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    aput v2, v1, v0

    .line 806
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 807
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 808
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 809
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget-object v2, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 810
    iget v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->NUM_GRADIENT_SHADER:I

    if-ne v0, v1, :cond_4

    .line 811
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v1, v1, v0

    const-string v2, "gradientTopColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColorHandle:I

    .line 812
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

    .line 816
    invoke-static {v12, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 817
    aget v0, v0, v11

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    const v1, 0x8d65

    .line 818
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v4, 0x2601

    .line 819
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    .line 820
    invoke-static {v1, v5, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2802

    const v7, 0x812f

    .line 821
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2803

    .line 822
    invoke-static {v1, v8, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 824
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurPath:Ljava/lang/String;

    const-string v9, "inputTexCoord"

    const-string/jumbo v14, "position"

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v1, 0xde1

    if-eqz v0, :cond_a

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_a

    .line 825
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BlurringShader;-><init>()V

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    .line 826
    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v13, v13

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v8, v8

    div-float/2addr v13, v8

    invoke-virtual {v0, v13, v12, v11}, Lorg/telegram/ui/Components/BlurringShader;->setup(FZI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 827
    iput-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    goto :goto_3

    .line 829
    :cond_6
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientTopColor:I

    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->gradientBottomColor:I

    invoke-virtual {v0, v8, v13}, Lorg/telegram/ui/Components/BlurringShader;->updateGradient(II)V

    .line 830
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 831
    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    int-to-float v8, v8

    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    int-to-float v13, v13

    invoke-virtual {v0, v8, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 832
    iget-object v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 833
    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v8, v8

    div-float v8, v15, v8

    iget v13, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v13, v13

    div-float v13, v15, v13

    invoke-virtual {v0, v8, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 834
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 835
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 836
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/BlurringShader;->updateTransform(Landroid/graphics/Matrix;)V

    .line 839
    :goto_3
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    new-array v8, v12, [I

    .line 842
    iput-object v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurTexture:[I

    .line 843
    invoke-static {v12, v8, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 844
    iget-object v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurTexture:[I

    aget v8, v8, v11

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 845
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 846
    invoke-static {v1, v5, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 847
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2803

    .line 848
    invoke-static {v1, v8, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 849
    invoke-static {v1, v11, v0, v11}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 851
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 853
    :cond_7
    iput-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    .line 856
    :goto_4
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    if-eqz v0, :cond_a

    const v0, 0x8b31

    const-string v8, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;}"

    .line 864
    invoke-static {v0, v8}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v8, 0x8b30

    const-string/jumbo v13, "varying highp vec2 vTextureCoord;uniform sampler2D blurImage;uniform sampler2D maskImage;void main() {gl_FragColor = texture2D(blurImage, vTextureCoord) * texture2D(maskImage, vTextureCoord).a;}"

    .line 865
    invoke-static {v8, v13}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v8

    if-eqz v0, :cond_9

    if-eqz v8, :cond_9

    .line 868
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    .line 869
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 870
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 871
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0, v11, v14}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 872
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0, v12, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 874
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v12, [I

    .line 876
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    const v8, 0x8b82

    invoke-static {v3, v8, v0, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 877
    aget v0, v0, v11

    if-nez v0, :cond_8

    .line 878
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 879
    iput v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    goto :goto_5

    .line 881
    :cond_8
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurPositionHandle:I

    .line 882
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurInputTexCoordHandle:I

    .line 883
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    const-string v3, "blurImage"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurBlurImageHandle:I

    .line 884
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurShaderProgram:I

    const-string/jumbo v3, "maskImage"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurMaskImageHandle:I

    const/16 v3, 0x8

    new-array v0, v3, [F

    .line 886
    fill-array-data v0, :array_0

    const/16 v3, 0x20

    .line 892
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blurVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 893
    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 896
    :cond_9
    iput-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->blur:Lorg/telegram/ui/Components/BlurringShader;

    .line 900
    :cond_a
    :goto_5
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-nez v0, :cond_b

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    :cond_b
    const v0, 0x8b31

    const-string v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 vTextureCoord;void main() {gl_Position = position;vTextureCoord = inputTexCoord;}"

    .line 901
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v3, 0x8b30

    const-string/jumbo v8, "varying highp vec2 vTextureCoord;uniform sampler2D sTexture;void main() {gl_FragColor = texture2D(sTexture, vTextureCoord);}"

    .line 902
    invoke-static {v3, v8}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    .line 904
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    .line 905
    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 906
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 907
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v11, v14}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 908
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v12, v9}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 910
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v12, [I

    .line 912
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const v8, 0x8b82

    invoke-static {v3, v8, v0, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 913
    aget v0, v0, v11

    if-nez v0, :cond_c

    .line 914
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 915
    iput v11, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    goto :goto_6

    .line 917
    :cond_c
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    .line 918
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    .line 919
    iget v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v3, "sTexture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    .line 924
    :cond_d
    :goto_6
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_e

    .line 925
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->create()Z

    .line 926
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move-object/from16 v18, v0

    move/from16 v21, v3

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-virtual/range {v18 .. v23}, Lorg/telegram/ui/Components/FilterShaders;->setRenderData(Landroid/graphics/Bitmap;IIII)V

    .line 928
    :cond_e
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    const/4 v13, 0x2

    if-nez v0, :cond_f

    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v3, :cond_1a

    :cond_f
    if-eqz v0, :cond_10

    move v0, v12

    goto :goto_7

    :cond_10
    move v0, v11

    .line 929
    :goto_7
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v3, v12

    goto :goto_8

    :cond_11
    move v3, v11

    :goto_8
    add-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    .line 930
    array-length v3, v0

    invoke-static {v3, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v0, v11

    .line 932
    :goto_9
    :try_start_0
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1a

    if-nez v0, :cond_12

    .line 935
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 937
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 938
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 939
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_a

    .line 941
    :cond_12
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move v8, v11

    move v9, v8

    .line 943
    :goto_a
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_19

    if-nez v0, :cond_17

    .line 945
    iget-object v14, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v14, :cond_17

    iget-boolean v14, v10, Lorg/telegram/messenger/video/TextureRenderer;->useMatrixForImagePath:Z

    if-nez v14, :cond_17

    .line 946
    iget v14, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v15, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/high16 v14, -0x1000000

    .line 947
    invoke-virtual {v11, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 948
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v15, 0x5a

    if-eq v9, v15, :cond_14

    const/16 v15, 0x10e

    if-ne v9, v15, :cond_13

    goto :goto_b

    .line 953
    :cond_13
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    iget v6, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v6, v6

    div-float/2addr v15, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_c

    .line 951
    :cond_14
    :goto_b
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v15, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v15, v15

    div-float/2addr v7, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 956
    :goto_c
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 957
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    neg-int v15, v15

    div-int/2addr v15, v13

    int-to-float v15, v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v7, v15, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-ne v8, v12, :cond_15

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_d

    :cond_15
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_d
    div-float/2addr v5, v6

    if-ne v8, v13, :cond_16

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_e

    :cond_16
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_e
    div-float/2addr v8, v6

    .line 958
    invoke-virtual {v7, v5, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v5, v9

    .line 959
    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 960
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 961
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v14, v3, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v3, v11

    :cond_17
    if-nez v0, :cond_18

    .line 965
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 966
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->imageWidth:I

    .line 967
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->imageHeight:I

    .line 970
    :cond_18
    iget-object v5, v10, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    aget v5, v5, v0

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 971
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    .line 972
    invoke-static {v1, v5, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2802

    const v6, 0x812f

    .line 973
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    .line 974
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v5, 0x0

    .line 975
    invoke-static {v1, v5, v3, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x2800

    const/16 v6, 0x2802

    const v7, 0x812f

    const/4 v11, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    .line 979
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 982
    :cond_1a
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    const/4 v11, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/high16 v23, 0x40000000    # 2.0f

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 983
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    .line 984
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/FloatBuffer;

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    .line 985
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v3, v0

    const/4 v5, 0x0

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, 0x0

    .line 987
    :goto_f
    :try_start_1
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1c

    .line 988
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 989
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 991
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 992
    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 993
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    .line 994
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 995
    iget v7, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v7

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 996
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 997
    iget-object v6, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTexture:[I

    aget v6, v6, v0

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 998
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2800

    .line 999
    invoke-static {v1, v6, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2802

    const v7, 0x812f

    .line 1000
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2803

    .line 1001
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v6, 0x0

    .line 1002
    invoke-static {v1, v6, v5, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v5, 0x8

    new-array v7, v5, [F

    aput v14, v7, v6

    aput v14, v7, v12

    .line 1004
    iget v5, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v6, v5

    aput v6, v7, v13

    aput v14, v7, v15

    const/4 v6, 0x4

    aput v14, v7, v6

    const/4 v6, 0x5

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v9, v8

    aput v9, v7, v6

    const/4 v6, 0x6

    int-to-float v5, v5

    aput v5, v7, v6

    int-to-float v5, v8

    aput v5, v7, v11

    .line 1010
    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    :goto_10
    const/4 v5, 0x4

    if-ge v3, v5, :cond_1b

    mul-int/lit8 v5, v3, 0x2

    .line 1012
    aget v6, v7, v5

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    mul-float v6, v6, v23

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 1013
    aget v6, v7, v5

    iget v8, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    mul-float v6, v6, v23

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1b
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1015
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v3, v0

    .line 1016
    iget-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsVerticesBuffer:[Ljava/nio/FloatBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    .line 1019
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1c
    const/16 v3, 0x8

    new-array v0, v3, [F

    .line 1022
    fill-array-data v0, :array_1

    const/16 v3, 0x20

    .line 1028
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->partsTextureBuffer:Ljava/nio/FloatBuffer;

    .line 1029
    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1031
    :cond_1d
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    const/16 v0, 0x200

    const/16 v3, 0x200

    .line 1033
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    new-array v0, v12, [I

    .line 1034
    iput-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    const/4 v3, 0x0

    .line 1035
    invoke-static {v12, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1036
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1037
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 1038
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 1039
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 1040
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1041
    iget-object v0, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v0, :cond_37

    .line 1042
    iget-object v1, v10, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1043
    iget-byte v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-eqz v1, :cond_35

    if-ne v1, v13, :cond_1e

    goto/16 :goto_1b

    :cond_1e
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v12, :cond_32

    .line 1046
    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    .line 1047
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1048
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    .line 1049
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 1050
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1052
    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1053
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1055
    :cond_1f
    iget v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1056
    new-instance v5, Landroid/text/SpannableString;

    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 1058
    iget-object v1, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    if-nez v1, :cond_20

    goto :goto_12

    .line 1061
    :cond_20
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v1, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1062
    iget-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1063
    iget-byte v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1064
    new-instance v4, Lorg/telegram/messenger/video/TextureRenderer$1;

    const-wide/16 v17, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v21

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v22, v3

    move-object v11, v4

    move-wide/from16 v3, v17

    move-object v14, v5

    move/from16 v5, v20

    move-object/from16 v18, v6

    move-object/from16 v6, v21

    move-object v7, v8

    move-object v15, v8

    move-object/from16 v8, v18

    move/from16 v21, v9

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/video/TextureRenderer$1;-><init>(Lorg/telegram/messenger/video/TextureRenderer;JFLandroid/graphics/Paint$FontMetricsInt;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;)V

    move-object/from16 v1, v22

    .line 1092
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v1, v2

    const/16 v3, 0x21

    invoke-virtual {v14, v11, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v14

    move-object v8, v15

    move-object/from16 v6, v18

    move/from16 v9, v21

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v11, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x3

    goto :goto_12

    :cond_21
    move-object v14, v5

    move-object/from16 v18, v6

    move-object v15, v8

    move/from16 v21, v9

    .line 1094
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v14, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1096
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1097
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_22

    .line 1098
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v3, 0x0

    .line 1099
    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_22

    .line 1100
    aget-object v4, v1, v3

    const v5, 0x3f59999a    # 0.85f

    iput v5, v4, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1106
    :cond_22
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v1, v12, :cond_24

    if-eq v1, v13, :cond_23

    const/16 v1, 0x13

    goto :goto_14

    :cond_23
    const/16 v1, 0x15

    goto :goto_14

    :cond_24
    const/16 v1, 0x11

    .line 1119
    :goto_14
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 1120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_29

    .line 1122
    iget v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v3, v12, :cond_28

    if-eq v3, v13, :cond_27

    .line 1125
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_26

    :cond_25
    const/4 v3, 0x3

    goto :goto_16

    :cond_26
    :goto_15
    move v3, v13

    goto :goto_16

    .line 1131
    :cond_27
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_25

    goto :goto_15

    :cond_28
    const/4 v3, 0x4

    .line 1134
    :goto_16
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_29
    const/4 v3, 0x0

    .line 1137
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/high16 v3, 0x10000000

    .line 1138
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1139
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1140
    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2a

    .line 1142
    invoke-virtual {v10, v2}, Lorg/telegram/messenger/video/TextureRenderer;->setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    .line 1144
    :cond_2a
    iget-byte v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-nez v1, :cond_2c

    .line 1145
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1146
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v3, 0x3f389375    # 0.721f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2b

    const/high16 v1, -0x1000000

    goto :goto_17

    :cond_2b
    const/4 v1, -0x1

    :goto_17
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1a

    :cond_2c
    if-ne v1, v12, :cond_2e

    .line 1148
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2d

    const/high16 v1, -0x67000000

    goto :goto_18

    :cond_2d
    const v1, -0x66000001

    :goto_18
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1149
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1a

    :cond_2e
    if-ne v1, v13, :cond_30

    .line 1151
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2f

    const/high16 v1, -0x1000000

    goto :goto_19

    :cond_2f
    const/4 v1, -0x1

    :goto_19
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1152
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1a

    :cond_30
    const/4 v3, 0x3

    if-ne v1, v3, :cond_31

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 1155
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1158
    :cond_31
    :goto_1a
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/EditText;->measure(II)V

    .line 1159
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/widget/EditText;->layout(IIII)V

    .line 1160
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1161
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1162
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1c

    :cond_32
    move v3, v7

    move-object v15, v8

    move/from16 v21, v9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    .line 1164
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    invoke-direct {v1, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;F)V

    .line 1165
    iget-object v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    .line 1166
    iget-byte v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    .line 1167
    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    .line 1168
    iget-object v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v12, :cond_33

    .line 1169
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji()V

    .line 1171
    :cond_33
    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1172
    iget v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1173
    iget v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v4, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1174
    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/16 v6, 0x8

    add-int/2addr v4, v6

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    add-int/2addr v5, v6

    .line 1175
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 1176
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v5, 0x8

    int-to-float v6, v5

    .line 1177
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1178
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1179
    invoke-virtual {v1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/16 v4, 0x10

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 1180
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    div-float v3, v4, v3

    iput v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalWidth:F

    .line 1181
    iget v3, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    iput v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    .line 1182
    iget-object v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v12, :cond_36

    .line 1183
    iget-object v3, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 1184
    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v6}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v6, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1185
    iget-object v7, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1186
    iget-byte v7, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v7, v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1188
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1189
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiBounds(Landroid/graphics/RectF;)V

    .line 1191
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget v8, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    .line 1192
    iget v7, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget v9, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1194
    iget v8, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    const/4 v11, 0x0

    cmpl-float v14, v8, v11

    if-eqz v14, :cond_34

    .line 1195
    iget v14, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v2, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v2, v2, v23

    add-float/2addr v14, v2

    .line 1196
    iget v2, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    div-float v9, v9, v23

    add-float/2addr v2, v9

    .line 1197
    iget v9, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    iget v4, v10, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v4, v4

    div-float/2addr v9, v4

    sub-float/2addr v1, v14

    sub-float/2addr v7, v2

    div-float/2addr v7, v9

    float-to-double v11, v1

    neg-float v1, v8

    float-to-double v4, v1

    .line 1200
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    move/from16 v16, v9

    float-to-double v8, v7

    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    move/from16 v24, v14

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v8

    sub-double/2addr v4, v13

    double-to-float v1, v4

    add-float v1, v1, v24

    .line 1201
    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    iget v4, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v8, v4

    add-double/2addr v11, v8

    double-to-float v4, v11

    mul-float v4, v4, v16

    add-float v7, v4, v2

    .line 1204
    :cond_34
    iget-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v4, v5

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1205
    iget-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr v4, v5

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1206
    iget-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1207
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v3, v3, v23

    sub-float/2addr v1, v3

    .line 1208
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float v4, v4, v23

    sub-float/2addr v7, v4

    .line 1209
    iput v7, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1210
    iget v1, v15, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1212
    invoke-direct {v10, v2}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    goto :goto_1c

    :cond_35
    :goto_1b
    move-object v15, v8

    move/from16 v21, v9

    .line 1044
    invoke-direct {v10, v15}, Lorg/telegram/messenger/video/TextureRenderer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_36
    :goto_1c
    add-int/lit8 v9, v21, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x3

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    .line 1217
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_37
    return-void

    nop

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
.end method
