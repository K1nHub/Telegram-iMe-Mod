.class public Lorg/telegram/messenger/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final FRAGMENT_EXTERNAL_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
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

.field path:Landroid/graphics/Path;

.field private renderTextureBuffer:Ljava/nio/FloatBuffer;

.field private simpleInputTexCoordHandle:I

.field private simplePositionHandle:I

.field private simpleShaderProgram:I

.field private simpleSourceImageHandle:I

.field private stickerBitmap:Landroid/graphics/Bitmap;

.field private stickerCanvas:Landroid/graphics/Canvas;

.field private stickerTexture:[I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private transformedHeight:I

.field private transformedWidth:I

.field private verticesBuffer:Ljava/nio/FloatBuffer;

.field private videoFps:F

.field xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    .locals 22
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
            "IIIIIFZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p11

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0x8

    new-array v6, v5, [F

    .line 79
    fill-array-data v6, :array_0

    iput-object v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/16 v6, 0x10

    new-array v7, v6, [F

    .line 124
    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    new-array v7, v6, [F

    .line 125
    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    new-array v6, v6, [F

    .line 126
    iput-object v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    const/4 v6, 0x1

    .line 151
    iput-boolean v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    move/from16 v7, p12

    .line 156
    iput-boolean v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    new-array v7, v5, [F

    .line 158
    fill-array-data v7, :array_1

    .line 165
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v8, :cond_0

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start textureRenderer w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " r = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fps = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropState px = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " py = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " cScale = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " cropRotate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " pw = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " ph = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " tw = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " th = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " tr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mirror = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x20

    .line 175
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 176
    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    iget-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    array-length v7, v7

    const/4 v10, 0x4

    mul-int/2addr v7, v10

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 179
    iget-object v11, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v7, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    iget-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v7, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 182
    iget-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    invoke-static {v7, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_1

    .line 185
    new-instance v7, Lorg/telegram/ui/Components/FilterShaders;

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/FilterShaders;-><init>(Z)V

    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    .line 186
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/FilterShaders;->setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    .line 188
    :cond_1
    iput v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 189
    iput v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    move/from16 v7, p8

    .line 190
    iput v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    move/from16 v7, p9

    .line 191
    iput v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move-object/from16 v7, p2

    .line 192
    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    move-object/from16 v7, p3

    .line 193
    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move-object/from16 v7, p4

    .line 194
    iput-object v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    cmpl-float v11, v4, v7

    if-nez v11, :cond_2

    const/high16 v4, 0x41f00000    # 30.0f

    .line 195
    :cond_2
    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    .line 198
    iget-object v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/4 v11, 0x2

    if-eqz v4, :cond_3

    move v4, v11

    goto :goto_0

    :cond_3
    move v4, v6

    .line 203
    :goto_0
    new-array v12, v4, [I

    iput-object v12, v0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    .line 204
    new-array v12, v4, [I

    iput-object v12, v0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    .line 205
    new-array v12, v4, [I

    iput-object v12, v0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    .line 206
    new-array v12, v4, [I

    iput-object v12, v0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    .line 207
    new-array v4, v4, [I

    iput-object v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    .line 209
    iget-object v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v4, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v4, 0x10e

    const/16 v12, 0x5a

    if-eqz v1, :cond_5

    new-array v13, v5, [F

    aput v7, v13, v9

    aput v7, v13, v6

    int-to-float v6, v2

    aput v6, v13, v11

    const/4 v14, 0x3

    aput v7, v13, v14

    aput v7, v13, v10

    const/4 v14, 0x5

    int-to-float v15, v3

    aput v15, v13, v14

    const/4 v14, 0x6

    aput v6, v13, v14

    const/4 v14, 0x7

    aput v15, v13, v14

    .line 218
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 225
    iget v7, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v7, v7

    iget v4, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v7, v4

    float-to-int v4, v7

    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    .line 226
    iget v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v4, v4

    iget v7, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    .line 228
    iget v4, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    neg-float v4, v4

    float-to-double v8, v4

    const-wide v16, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v8, v8, v16

    double-to-float v4, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_4

    mul-int/lit8 v8, v7, 0x2

    .line 230
    aget v9, v13, v8

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 231
    aget v17, v13, v10

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    sub-float v12, v17, v12

    move/from16 p4, v6

    float-to-double v5, v9

    move/from16 p9, v12

    float-to-double v11, v4

    .line 232
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v5

    move/from16 v9, p9

    float-to-double v2, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v2

    sub-double v18, v18, v20

    iget v9, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float v9, v9, p4

    move/from16 p9, v10

    float-to-double v9, v9

    add-double v9, v18, v9

    double-to-float v9, v9

    iget v10, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v9, v10

    .line 233
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v5, v5, v18

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    add-double/2addr v5, v2

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v2, v15

    float-to-double v2, v2

    sub-double/2addr v5, v2

    double-to-float v2, v5

    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v2, v3

    .line 234
    iget v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v3, v3

    div-float/2addr v9, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v9, v3

    aput v9, v13, v8

    .line 235
    iget v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v2, v3

    aput v2, v13, p9

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p4

    move/from16 v2, p6

    move/from16 v3, p7

    const/16 v5, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0x5a

    goto :goto_1

    :cond_4
    const/16 v2, 0x20

    .line 237
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 238
    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_5
    move v4, v5

    move v2, v8

    move v3, v9

    new-array v5, v4, [F

    .line 240
    fill-array-data v5, :array_2

    .line 246
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 247
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v14, 0x0

    .line 250
    :goto_2
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 v3, 0xb4

    if-eqz v2, :cond_9

    const/16 v2, 0x5a

    if-ne v14, v2, :cond_6

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 252
    fill-array-data v2, :array_3

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    if-ne v14, v3, :cond_7

    new-array v2, v2, [F

    .line 259
    fill-array-data v2, :array_4

    goto :goto_3

    :cond_7
    const/16 v3, 0x10e

    if-ne v14, v3, :cond_8

    new-array v2, v2, [F

    .line 266
    fill-array-data v2, :array_5

    goto :goto_3

    :cond_8
    new-array v2, v2, [F

    .line 273
    fill-array-data v2, :array_6

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    const/16 v4, 0x5a

    if-ne v14, v4, :cond_a

    new-array v2, v2, [F

    .line 282
    fill-array-data v2, :array_7

    goto :goto_3

    :cond_a
    if-ne v14, v3, :cond_b

    new-array v2, v2, [F

    .line 289
    fill-array-data v2, :array_8

    goto :goto_3

    :cond_b
    const/16 v3, 0x10e

    if-ne v14, v3, :cond_c

    new-array v2, v2, [F

    .line 296
    fill-array-data v2, :array_9

    goto :goto_3

    :cond_c
    new-array v2, v2, [F

    .line 303
    fill-array-data v2, :array_a

    :goto_3
    if-eqz v1, :cond_e

    .line 311
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_e

    mul-int/lit8 v1, v3, 0x2

    .line 313
    aget v4, v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    const/4 v4, 0x0

    .line 314
    aput v4, v2, v1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 316
    aput v5, v2, v1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_4

    .line 320
    :cond_e
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

    .line 321
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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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

    :array_a
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

.method static synthetic access$000(Lorg/telegram/messenger/video/TextureRenderer;)F
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    return p0
.end method

.method private applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 473
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 479
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 480
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    .line 482
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 483
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 484
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 487
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    mul-float/2addr v0, v2

    .line 488
    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 489
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v2, v1, v1, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v2, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 491
    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 492
    iget-object p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/messenger/video/TextureRenderer;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 820
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 824
    invoke-static {v1, p2}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 828
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 832
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 833
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 834
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v2, 0x8b82

    .line 836
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 837
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 838
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
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

    .line 496
    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    return-void
.end method

.method private drawTexture(ZIFFFFFZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 500
    iget-boolean v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0xbe2

    .line 501
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    .line 502
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 503
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

    .line 506
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v2, v12

    .line 507
    aput v11, v2, v3

    .line 509
    aput v11, v2, v9

    .line 510
    aput v11, v2, v5

    .line 512
    aput v13, v2, v8

    .line 513
    aput v13, v2, v7

    .line 515
    aput v11, v2, v6

    .line 516
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

    .line 523
    iget-object v15, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aput v2, v15, v12

    .line 524
    aput v13, v15, v3

    add-float/2addr v11, v2

    .line 526
    aput v11, v15, v9

    .line 527
    aput v13, v15, v5

    .line 529
    aput v2, v15, v8

    sub-float/2addr v13, v14

    .line 530
    aput v13, v15, v7

    .line 532
    aput v11, v15, v6

    .line 533
    aput v13, v15, v4

    .line 535
    :goto_0
    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    aget v4, v2, v12

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    if-eqz p8, :cond_2

    .line 537
    aget v5, v2, v9

    .line 538
    aget v11, v2, v12

    aput v11, v2, v9

    .line 539
    aput v5, v2, v12

    .line 541
    aget v5, v2, v6

    .line 542
    aget v9, v2, v8

    aput v9, v2, v6

    .line 543
    aput v5, v2, v8

    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    .line 546
    iget v5, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 547
    aget v6, v2, v7

    aget v2, v2, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v10

    move v2, v12

    :goto_1
    if-ge v2, v8, :cond_3

    .line 549
    iget-object v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    mul-int/lit8 v9, v2, 0x2

    aget v10, v3, v9

    sub-float/2addr v10, v4

    add-int/lit8 v11, v9, 0x1

    .line 550
    aget v13, v3, v11

    sub-float/2addr v13, v6

    div-float/2addr v13, v5

    float-to-double v14, v10

    float-to-double v7, v1

    .line 551
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

    .line 552
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

    .line 555
    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    iget v3, v0, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v8, v0, Lorg/telegram/messenger/video/TextureRenderer;->bitmapVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-eqz p1, :cond_4

    const/16 v1, 0xde1

    move/from16 v2, p2

    .line 559
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 561
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v2, p1}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    .line 864
    iget-object p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 865
    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    aput p2, p1, v1

    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 19

    move-object/from16 v9, p0

    .line 329
    iget-boolean v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->isPhoto:Z

    const v1, 0x84c0

    const/16 v10, 0xde1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 330
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 331
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 333
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 334
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 335
    iget v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, v9, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 336
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto/16 :goto_2

    .line 338
    :cond_0
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 339
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    if-eqz v0, :cond_2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v12

    .line 341
    :goto_0
    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 342
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stMatrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 345
    iput-boolean v12, v9, Lorg/telegram/messenger/video/TextureRenderer;->firstFrame:Z

    .line 348
    :cond_2
    iget-boolean v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xbe2

    .line 349
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 350
    iput-boolean v12, v9, Lorg/telegram/messenger/video/TextureRenderer;->blendEnabled:Z

    .line 357
    :cond_3
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_6

    .line 358
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 360
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    invoke-static {v12, v12, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 361
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 362
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 363
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 364
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 365
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v0

    const v2, 0x8d40

    .line 367
    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 368
    iget v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    if-ne v2, v3, :cond_4

    iget v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    iget v4, v9, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    if-eq v3, v4, :cond_5

    .line 369
    :cond_4
    iget v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    invoke-static {v12, v12, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 372
    :cond_5
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    xor-int/2addr v0, v11

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v0

    .line 375
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrixIdentity:[F

    move-object v3, v2

    move v2, v10

    move v4, v11

    goto :goto_1

    .line 377
    :cond_6
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    const v2, 0x8d65

    .line 380
    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    move v4, v12

    .line 383
    :goto_1
    iget-object v5, v9, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v5, v5, v4

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 384
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 385
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 387
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v13, v0, v4

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x8

    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->verticesBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 388
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    aget v0, v0, v4

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 389
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v13, v0, v4

    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->renderTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 390
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    aget v0, v0, v4

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 392
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    aget v0, v0, v4

    invoke-static {v0, v11, v12, v3, v12}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 393
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    aget v0, v0, v4

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v11, v12, v2, v12}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 394
    invoke-static {v0, v12, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 396
    :goto_2
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-nez v0, :cond_7

    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-eqz v0, :cond_8

    .line 397
    :cond_7
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 398
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 400
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 401
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 402
    iget v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, v9, Lorg/telegram/messenger/video/TextureRenderer;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 403
    iget v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 405
    :cond_8
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    if-eqz v0, :cond_9

    move v0, v12

    .line 406
    :goto_3
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 407
    aget v1, v1, v0

    invoke-direct {v9, v11, v1}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 410
    :cond_9
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    if-eqz v0, :cond_16

    .line 411
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v12

    :goto_4
    if-ge v14, v13, :cond_16

    .line 412
    iget-object v0, v9, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 413
    iget-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v15, 0x0

    if-eqz v3, :cond_c

    .line 414
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v3, v3

    iget-object v4, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0x200

    const/16 v6, 0x200

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 415
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v1, v1, v12

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 417
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v12, v1, v12}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 418
    iget v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget v2, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 419
    iget-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v2, v2, v12

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    .line 420
    iput v15, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    :cond_a
    const/4 v1, 0x0

    .line 422
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v2, v12

    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    move v8, v11

    goto :goto_5

    :cond_b
    move v8, v12

    :goto_5
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto/16 :goto_a

    .line 423
    :cond_c
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_11

    .line 424
    iget v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, v1

    .line 425
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v1, v1

    :goto_6
    if-eq v2, v1, :cond_d

    .line 428
    iget-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 431
    :cond_d
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 433
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_f

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    .line 434
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    .line 435
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_e

    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_f

    .line 436
    :cond_e
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    iget-object v3, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 439
    :cond_f
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_15

    .line 440
    invoke-virtual {v2, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 441
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v15, v15, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 442
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;)V

    .line 443
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v1, v1, v12

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 444
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v12, v1, v12}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 445
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v2, v12

    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    move v8, v11

    goto :goto_7

    :cond_10
    move v8, v12

    :goto_7
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto/16 :goto_a

    .line 448
    :cond_11
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_13

    .line 449
    invoke-virtual {v1, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 450
    iget v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, v1

    .line 451
    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v1, v1

    .line 453
    iget-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Components/EditTextEffects;

    sub-int/2addr v1, v2

    .line 454
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextEffects;->incrementFrames(I)V

    .line 455
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;)V

    .line 457
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v1, v1, v12

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 458
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v12, v1, v12}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 459
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v2, v12

    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    move v8, v11

    goto :goto_8

    :cond_12
    move v8, v12

    :goto_8
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    goto :goto_a

    .line 461
    :cond_13
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_15

    .line 462
    iget-object v1, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v1, v1, v12

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 463
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v12, v1, v12}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/4 v1, 0x0

    .line 464
    iget-object v2, v9, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v2, v2, v12

    iget v3, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v5, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-byte v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    move v8, v11

    goto :goto_9

    :cond_14
    move v8, v12

    :goto_9
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/TextureRenderer;->drawTexture(ZIFFFFFZ)V

    :cond_15
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 469
    :cond_16
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 325
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public release()V
    .locals 7

    .line 845
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 846
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 847
    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 848
    iget-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 849
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 851
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1

    .line 852
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 854
    :cond_1
    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/EditTextEffects;

    if-eqz v3, :cond_2

    .line 855
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

    .line 566
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBreakStrategy(I)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 34

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    .line 571
    :goto_0
    iget-object v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    array-length v4, v3

    if-ge v0, v4, :cond_1

    if-nez v0, :cond_0

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_1

    :cond_0
    const-string v4, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    const-string/jumbo v5, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 572
    invoke-direct {v1, v5, v4}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 573
    iget-object v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:[I

    iget-object v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v4, v4, v0

    const-string v5, "aPosition"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 574
    iget-object v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:[I

    iget-object v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v4, v4, v0

    const-string v5, "aTextureCoord"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 575
    iget-object v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:[I

    iget-object v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v4, v4, v0

    const-string/jumbo v5, "uMVPMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 576
    iget-object v3, v1, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:[I

    iget-object v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:[I

    aget v4, v4, v0

    const-string/jumbo v5, "uSTMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 579
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 580
    aget v0, v0, v2

    iput v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    const v4, 0x8d65

    .line 581
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2801

    const/16 v6, 0x2601

    .line 582
    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2800

    .line 583
    invoke-static {v4, v7, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 584
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v10, 0x2803

    .line 585
    invoke-static {v4, v10, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 587
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    :cond_2
    const v0, 0x8b31

    const-string v4, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    .line 588
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v4, 0x8b30

    const-string/jumbo v11, "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}"

    .line 589
    invoke-static {v4, v11}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 591
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v11

    iput v11, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    .line 592
    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 593
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 594
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string v4, "position"

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 595
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string v11, "inputTexCoord"

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 597
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v3, [I

    .line 599
    iget v12, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const v13, 0x8b82

    invoke-static {v12, v13, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 600
    aget v0, v0, v2

    if-nez v0, :cond_3

    .line 601
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 602
    iput v2, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    goto :goto_2

    .line 604
    :cond_3
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simplePositionHandle:I

    .line 605
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleInputTexCoordHandle:I

    .line 606
    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleShaderProgram:I

    const-string/jumbo v4, "sourceImage"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->simpleSourceImageHandle:I

    .line 611
    :cond_4
    :goto_2
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    if-eqz v0, :cond_5

    .line 612
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->create()Z

    .line 613
    iget-object v11, v1, Lorg/telegram/messenger/video/TextureRenderer;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    iget v15, v1, Lorg/telegram/messenger/video/TextureRenderer;->originalWidth:I

    iget v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->originalHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Components/FilterShaders;->setRenderData(Landroid/graphics/Bitmap;IIII)V

    .line 615
    :cond_5
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    const/high16 v4, -0x1000000

    const/4 v12, 0x2

    const/16 v13, 0xde1

    if-nez v0, :cond_6

    iget-object v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v14, :cond_10

    :cond_6
    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v2

    .line 616
    :goto_3
    iget-object v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    if-eqz v14, :cond_8

    move v14, v3

    goto :goto_4

    :cond_8
    move v14, v2

    :goto_4
    add-int/2addr v0, v14

    new-array v0, v0, [I

    iput-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    .line 617
    array-length v14, v0

    invoke-static {v14, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v0, v2

    .line 619
    :goto_5
    :try_start_0
    iget-object v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    array-length v14, v14

    if-ge v0, v14, :cond_10

    if-nez v0, :cond_9

    .line 622
    iget-object v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v14, :cond_9

    .line 624
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 625
    iget-object v11, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 626
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_6

    .line 628
    :cond_9
    iget-object v14, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintPath:Ljava/lang/String;

    move v11, v2

    move v15, v11

    .line 630
    :goto_6
    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_f

    if-nez v0, :cond_e

    .line 632
    iget-object v2, v1, Lorg/telegram/messenger/video/TextureRenderer;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 633
    iget v2, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    iget v10, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v10, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 634
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 635
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v10, 0x5a

    if-eq v11, v10, :cond_b

    const/16 v10, 0x10e

    if-ne v11, v10, :cond_a

    goto :goto_7

    .line 640
    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v9, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v9, v9

    div-float/2addr v4, v9

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_8

    .line 638
    :cond_b
    :goto_7
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v9, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedWidth:I

    int-to-float v9, v9

    div-float/2addr v4, v9

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Lorg/telegram/messenger/video/TextureRenderer;->transformedHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 643
    :goto_8
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 644
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/2addr v7, v12

    int-to-float v7, v7

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-ne v15, v3, :cond_c

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_9

    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_9
    div-float/2addr v7, v4

    if-ne v15, v12, :cond_d

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_a

    :cond_d
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_a
    div-float/2addr v10, v4

    .line 645
    invoke-virtual {v9, v7, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v4, v11

    .line 646
    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 647
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v12

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v12

    int-to-float v7, v7

    invoke-virtual {v9, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 648
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v14, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v14, v2

    .line 652
    :cond_e
    iget-object v2, v1, Lorg/telegram/messenger/video/TextureRenderer;->paintTexture:[I

    aget v2, v2, v0

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 653
    invoke-static {v13, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 654
    invoke-static {v13, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v4, 0x812f

    .line 655
    invoke-static {v13, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 656
    invoke-static {v13, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v2, 0x0

    .line 657
    invoke-static {v13, v2, v14, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/high16 v4, -0x1000000

    const/16 v7, 0x2800

    const/16 v8, 0x2802

    const v9, 0x812f

    const/16 v10, 0x2803

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 661
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 664
    :cond_10
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 666
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x200

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->stickerBitmap:Landroid/graphics/Bitmap;

    new-array v0, v3, [I

    .line 667
    iput-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    const/4 v2, 0x0

    .line 668
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 669
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->stickerTexture:[I

    aget v0, v0, v2

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 670
    invoke-static {v13, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 671
    invoke-static {v13, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v4, 0x812f

    .line 672
    invoke-static {v13, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 673
    invoke-static {v13, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 674
    iget-object v0, v1, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_25

    .line 675
    iget-object v4, v1, Lorg/telegram/messenger/video/TextureRenderer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 676
    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v6, 0x41f00000    # 30.0f

    const/16 v7, 0x13

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-nez v5, :cond_15

    .line 677
    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_11

    new-array v5, v8, [I

    .line 678
    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 679
    iget-object v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x200

    const/16 v21, 0x200

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v6

    move-object/from16 v22, v5

    invoke-static/range {v18 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    .line 680
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    goto/16 :goto_14

    :cond_11
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    .line 682
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v7, Ljava/io/File;

    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    sget v29, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v30, 0x1

    const/16 v31, 0x200

    const/16 v32, 0x200

    const/16 v33, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v18 .. v33}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 683
    iget v5, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    div-float/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    .line 684
    iput v9, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    goto/16 :goto_14

    .line 686
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_13

    .line 687
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_c

    .line 689
    :cond_13
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v6, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    .line 692
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 693
    iput-boolean v3, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v8, 0x0

    .line 694
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-static {v8, v5, v9, v7, v3}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 695
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 696
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v7, v5, v8, v9, v3}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 697
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 699
    :goto_c
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_23

    .line 700
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_14

    .line 702
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v5, v6, v5

    .line 703
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    sub-float/2addr v6, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v7, v6

    iput v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 704
    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    goto/16 :goto_14

    :cond_14
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-gez v7, :cond_23

    .line 706
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v5, v6

    .line 707
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    sub-float/2addr v6, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v7, v6

    iput v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 708
    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    goto/16 :goto_14

    :cond_15
    if-ne v5, v3, :cond_23

    .line 713
    new-instance v5, Lorg/telegram/messenger/video/TextureRenderer$1;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {v5, v1, v10, v11}, Lorg/telegram/messenger/video/TextureRenderer$1;-><init>(Lorg/telegram/messenger/video/TextureRenderer;Landroid/content/Context;Z)V

    .line 720
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/4 v10, 0x7

    .line 721
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v5, v11, v13, v14, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 723
    iget-object v10, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 724
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 726
    :cond_16
    iget v10, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 727
    new-instance v10, Landroid/text/SpannableString;

    iget-object v11, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v11, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 732
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v14, :cond_17

    .line 733
    new-instance v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-direct {v14, v15, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_e

    .line 735
    :cond_17
    new-instance v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-direct {v14, v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_e
    const/16 v6, 0xc

    .line 737
    iput v6, v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 738
    iget-object v6, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v6, v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    .line 739
    iget v6, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v6

    const/16 v8, 0x21

    invoke-virtual {v10, v14, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v13, v3

    const/high16 v6, 0x41f00000    # 30.0f

    const/16 v7, 0x13

    const/4 v8, 0x3

    goto :goto_d

    .line 741
    :cond_18
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v10, v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 745
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v6, v3, :cond_1a

    if-eq v6, v12, :cond_19

    const/16 v7, 0x13

    goto :goto_f

    :cond_19
    const/16 v7, 0x15

    goto :goto_f

    :cond_1a
    const/16 v7, 0x11

    .line 758
    :goto_f
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 759
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_1f

    .line 761
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    if-eq v7, v3, :cond_1e

    if-eq v7, v12, :cond_1d

    .line 764
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1c

    :cond_1b
    const/4 v8, 0x3

    goto :goto_11

    :cond_1c
    :goto_10
    move v8, v12

    goto :goto_11

    .line 770
    :cond_1d
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1b

    goto :goto_10

    :cond_1e
    const/4 v8, 0x4

    .line 773
    :goto_11
    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_1f
    const/4 v7, 0x0

    .line 776
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/high16 v7, 0x10000000

    .line 777
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 778
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 779
    invoke-virtual {v5}, Landroid/widget/EditText;->getInputType()I

    move-result v7

    or-int/lit16 v7, v7, 0x4000

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v7, 0x17

    if-lt v6, v7, :cond_20

    .line 781
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/video/TextureRenderer;->setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    .line 783
    :cond_20
    iget-byte v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_21

    const/4 v6, -0x1

    .line 784
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 785
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    const/4 v6, 0x0

    .line 786
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 787
    invoke-virtual {v5, v9, v9, v9, v6}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    const/high16 v6, -0x1000000

    :goto_12
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_21
    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_22

    const/high16 v6, -0x1000000

    .line 789
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v7, 0x0

    .line 790
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    .line 791
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    .line 792
    invoke-virtual {v5, v9, v9, v9, v7}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    goto :goto_12

    :cond_22
    const/high16 v6, -0x1000000

    .line 794
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v7, 0x0

    .line 795
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    .line 796
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x66000000

    const/high16 v10, 0x3f800000    # 1.0f

    .line 797
    invoke-virtual {v5, v7, v9, v10, v8}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 800
    :goto_13
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/EditText;->measure(II)V

    .line 801
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v11, v7, v8}, Landroid/widget/EditText;->layout(IIII)V

    .line 802
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 803
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 804
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    if-eqz v13, :cond_24

    .line 806
    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    .line 807
    iput-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    .line 808
    iget v5, v1, Lorg/telegram/messenger/video/TextureRenderer;->videoFps:F

    const/high16 v7, 0x41f00000    # 30.0f

    div-float/2addr v5, v7

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    .line 809
    iput v9, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_15

    :cond_23
    :goto_14
    const/high16 v6, -0x1000000

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    :cond_24
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    .line 814
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_25
    return-void
.end method
