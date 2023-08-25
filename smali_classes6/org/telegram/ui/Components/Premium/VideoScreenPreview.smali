.class public Lorg/telegram/ui/Components/Premium/VideoScreenPreview;
.super Landroid/widget/FrameLayout;
.source "VideoScreenPreview.java"

# interfaces
.implements Lorg/telegram/ui/Components/Premium/PagerHeaderView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final speedScaleVideoTimestamps:[F


# instance fields
.field allowPlay:Z

.field aspectRatio:F

.field aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field attachFileName:Ljava/lang/String;

.field attached:Z

.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

.field currentAccount:I

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field file:Ljava/io/File;

.field firstFrameRendered:Z

.field fromTop:Z

.field helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field lastFrameTime:J

.field private matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

.field nextCheck:Ljava/lang/Runnable;

.field phoneFrame1:Landroid/graphics/Paint;

.field phoneFrame2:Landroid/graphics/Paint;

.field play:Z

.field progress:F

.field private roundRadius:F

.field roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

.field size:I

.field speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

.field starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private final svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field textureView:Landroid/view/TextureView;

.field type:I

.field videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field visible:Z


# direct methods
.method public static synthetic $r8$lambda$en0sL2Y4lA5mzSrfRtTa8ZR0gXU(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lambda$setVideo$0(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGz-C5fAyn4u7Z2u20xyE8EDKkI(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lambda$setVideo$1(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yRfXpUG0cvHw9KPBXkRmKXYa8Pk(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 110
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedScaleVideoTimestamps:[F

    return-void

    :array_0
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ca3d70a    # 0.02f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/SvgHelper$SvgDrawable;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    .line 55
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 117
    iput p3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    .line 118
    iput p4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    .line 119
    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 121
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, p3, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const p3, 0x7fffffff

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->setVideo()V

    const/16 p2, 0xb

    const/4 p3, 0x3

    if-ne p4, v1, :cond_0

    .line 127
    new-instance p5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    invoke-direct {p5}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    .line 128
    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->init()V

    goto/16 :goto_3

    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    const v3, 0x3f7ae148    # 0.98f

    const/4 v4, 0x6

    if-eq p4, v4, :cond_6

    const/16 v5, 0x9

    if-eq p4, v5, :cond_6

    if-eq p4, p3, :cond_6

    const/4 v5, 0x7

    if-eq p4, v5, :cond_6

    if-eq p4, p2, :cond_6

    const/4 v5, 0x4

    if-ne p4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne p4, v6, :cond_2

    .line 154
    new-instance p5, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const/16 v2, 0xc8

    invoke-direct {p5, v2}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;-><init>(I)V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    .line 155
    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->init()V

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0xd

    if-ne p4, v7, :cond_3

    .line 157
    new-instance p5, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    const/16 v2, 0x19

    invoke-direct {p5, v2}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;-><init>(I)V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    .line 158
    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->init()V

    goto/16 :goto_3

    :cond_3
    const/16 v7, 0x64

    .line 161
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v8

    if-ne v8, v6, :cond_4

    const/16 v7, 0x320

    goto :goto_0

    .line 163
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-ne v6, v1, :cond_5

    const/16 v7, 0x190

    .line 166
    :cond_5
    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    .line 167
    iput-object p5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 168
    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    iput p5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    const/16 p5, 0x8

    .line 169
    iput p5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    .line 170
    iput v4, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    .line 171
    iput v5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    .line 172
    iput v3, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v3, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v3, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 173
    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    .line 174
    iput v2, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    .line 175
    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 176
    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    .line 177
    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 178
    iput-boolean v0, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    .line 179
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    goto :goto_3

    .line 135
    :cond_6
    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/high16 v5, 0x40400000    # 3.0f

    .line 136
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    .line 137
    iput p4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v5, 0xe

    if-ne p4, p3, :cond_7

    .line 140
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v5, 0x12

    .line 141
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    .line 142
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    goto :goto_2

    .line 144
    :cond_7
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v5, 0x10

    .line 145
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    const/16 v5, 0xf

    .line 146
    iput v5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    .line 148
    :goto_2
    iput v3, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v3, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v3, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 149
    iput v2, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    .line 150
    iput-object p5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 151
    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    iput p5, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    .line 152
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    :goto_3
    if-eq p4, v1, :cond_8

    if-eq p4, p3, :cond_8

    if-ne p4, p2, :cond_9

    .line 183
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    .line 187
    :cond_9
    new-instance p2, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 213
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 214
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)F
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    return p0
.end method

.method private checkVideo()V
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    if-eqz v0, :cond_5

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    const v1, 0x3f2bc6a8    # 0.671f

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 64
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 71
    :cond_3
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 72
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v2, 0x12

    .line 73
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    .line 74
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 76
    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    iput v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F

    goto :goto_0

    .line 81
    :cond_4
    iput v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F

    .line 84
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eqz v0, :cond_5

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->runVideoPlayer()V

    :cond_5
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$setVideo$0(Ljava/io/File;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    .line 264
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    return-void
.end method

.method private synthetic lambda$setVideo$1(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 261
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p1

    .line 262
    new-instance v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runVideoPlayer()V
    .locals 6

    const-string v0, "UTF-8"

    .line 538
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    if-eqz v1, :cond_6

    .line 539
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_1

    return-void

    .line 542
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 543
    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v2, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 597
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&mime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 602
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    .line 603
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 604
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-array v0, v3, [B

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tg://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 616
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v2, "other"

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 618
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_5

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 622
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lastFrameTime:J

    const-wide/16 v3, 0x3c

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_6
    return-void
.end method

.method private setVideo()V
    .locals 10

    .line 221
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    .line 222
    iget v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    const/4 v8, 0x0

    move v3, v8

    .line 225
    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 226
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v2, :cond_4

    .line 232
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    move-object v4, v1

    move v1, v8

    .line 234
    :goto_2
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 235
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v4, "b"

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    .line 237
    new-instance v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    const/high16 v3, 0x40800000    # 4.0f

    .line 238
    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    const/high16 v3, 0x40600000    # 3.5f

    .line 239
    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/4 v3, 0x1

    .line 240
    iput-boolean v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    .line 241
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v2, p0, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getDrawableInterface(Landroid/view/View;Lorg/telegram/messenger/SvgHelper$SvgDrawable;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    .line 242
    new-instance v4, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$2;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    invoke-direct {v4, p0, v2, v5}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$2;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    :cond_3
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 258
    iget v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v9, v0, v2, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 259
    iput-object v9, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 260
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v9}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private stopVideoPlayer()V
    .locals 3

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lastFrameTime:J

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 634
    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    return-void
.end method

.method private updateAttachState()V
    .locals 2

    .line 526
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->play:Z

    if-eq v1, v0, :cond_2

    .line 528
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->play:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    .line 532
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 516
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 517
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 519
    aget-object p1, p3, p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    .line 520
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    if-eqz v0, :cond_7

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v0

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 365
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {p1, v0, v0, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 372
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    if-eqz v0, :cond_5

    const v0, 0x3e4ccccd    # 0.2f

    .line 375
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v5, :cond_4

    .line 376
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v5

    long-to-float v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v0, v5

    .line 377
    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 378
    sget-object v5, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedScaleVideoTimestamps:[F

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v6, v4, v6

    div-float v7, v0, v6

    float-to-int v7, v7

    add-int/lit8 v8, v7, 0x1

    int-to-float v9, v7

    mul-float/2addr v9, v6

    sub-float/2addr v0, v9

    div-float/2addr v0, v6

    .line 382
    array-length v6, v5

    if-ge v8, v6, :cond_3

    .line 383
    aget v6, v5, v7

    sub-float v7, v4, v0

    mul-float/2addr v6, v7

    aget v5, v5, v8

    mul-float/2addr v5, v0

    add-float v0, v6, v5

    goto :goto_0

    .line 385
    :cond_3
    aget v0, v5, v7

    .line 388
    :cond_4
    :goto_0
    iget v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    const v6, 0x3dcccccd    # 0.1f

    div-float/2addr v5, v6

    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v6

    .line 389
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v4, v6

    mul-float/2addr v4, v0

    iput v4, v5, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->speedScale:F

    .line 390
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 391
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz v0, :cond_6

    .line 392
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 394
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 397
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f2bc6a8    # 0.671f

    mul-float/2addr v1, v0

    .line 400
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    const v1, 0x3d896bba    # 0.0671f

    mul-float/2addr v1, v0

    .line 401
    iput v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    .line 402
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v3, :cond_8

    .line 403
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 405
    :cond_8
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    add-float/2addr v6, v7

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    :goto_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 408
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 409
    iget v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 410
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 411
    iget v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 413
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v5, :cond_9

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v1, v4, v2, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 416
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v2, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    .line 420
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v2, :cond_a

    .line 421
    invoke-virtual {v2, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 423
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    if-eqz v0, :cond_b

    .line 424
    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;->radius:F

    .line 426
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v2, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    goto :goto_4

    .line 429
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v0, v4, v3, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 431
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_d

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 435
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 437
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-nez v0, :cond_e

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 492
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    .line 495
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    .line 498
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 503
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    .line 505
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    .line 506
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->recycle()V

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    .line 511
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->stopVideoPlayer()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 302
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/16 p3, 0x10

    add-int/2addr p2, p3

    shl-int/2addr p1, p2

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const p4, 0x3f666666    # 0.9f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p2, p2

    const p4, 0x3f2bc6a8    # 0.671f

    mul-float/2addr p4, p2

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p5, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p5, p4

    .line 310
    iget-boolean p4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz p4, :cond_0

    .line 311
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p5

    invoke-virtual {p4, p5, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 313
    :cond_0
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    add-float/2addr v1, v2

    invoke-virtual {p4, p5, v0, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    :goto_0
    iget p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->size:I

    if-eq p2, p1, :cond_6

    .line 317
    iput p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->size:I

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->excludeRect:Landroid/graphics/RectF;

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->excludeRect:Landroid/graphics/RectF;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 323
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 324
    iget p4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    const/4 p5, 0x6

    if-eq p4, p5, :cond_3

    const/16 p5, 0x9

    if-eq p4, p5, :cond_3

    const/4 p5, 0x3

    if-eq p4, p5, :cond_3

    const/4 p5, 0x7

    if-eq p4, p5, :cond_3

    const/16 p5, 0xb

    if-eq p4, p5, :cond_3

    const/4 p5, 0x4

    if-ne p4, p5, :cond_2

    goto :goto_1

    .line 333
    :cond_2
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p4

    const p5, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p5

    float-to-int p4, p4

    .line 334
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p5, p5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    .line 335
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    int-to-float p4, p4

    sub-float/2addr v0, p4

    .line 336
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v1, p4

    .line 337
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, p4

    .line 338
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    add-float/2addr p1, p4

    .line 334
    invoke-virtual {p5, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 330
    :cond_3
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/16 p4, 0x1e

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p5, p4}, Landroid/graphics/RectF;->inset(FF)V

    .line 341
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    const/16 p4, 0xa

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p5, p4}, Landroid/graphics/RectF;->inset(FF)V

    .line 345
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const p4, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_5

    .line 346
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    const/16 p5, 0x64

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, v0, p5}, Landroid/graphics/RectF;->inset(FF)V

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p4

    invoke-virtual {p1, p3, p5}, Landroid/graphics/RectF;->offset(FF)V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->resetPositions()V

    .line 352
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz p1, :cond_6

    .line 353
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->resetPositions()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 277
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 278
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f2bc6a8    # 0.671f

    mul-float/2addr v3, v2

    int-to-float v0, v0

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x3d896bba    # 0.0671f

    mul-float/2addr v4, v2

    .line 283
    iput v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    .line 284
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 285
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 287
    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v4, :cond_1

    .line 288
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v4, 0x0

    sub-float/2addr v0, v3

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 290
    :cond_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v2, v1, v2

    sub-float/2addr v0, v3

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 292
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 297
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOffset(F)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    if-gez v1, :cond_3

    neg-float p1, p1

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, p1

    .line 449
    invoke-static {v6, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    add-float/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    mul-float/2addr v2, p1

    .line 450
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setRotationY(F)V

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 452
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 457
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const v1, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    goto :goto_5

    :cond_2
    move v3, v4

    goto :goto_5

    :cond_3
    neg-float p1, p1

    .line 461
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    mul-float/2addr v2, p1

    .line 463
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setRotationY(F)V

    .line 464
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_2

    .line 467
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_2
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    const v1, -0x42333333    # -0.1f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    .line 471
    :goto_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    .line 473
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    if-eq v0, p1, :cond_7

    .line 474
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    .line 475
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    .line 477
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eq v3, p1, :cond_9

    .line 478
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 480
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eqz p1, :cond_8

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->runVideoPlayer()V

    goto :goto_6

    .line 484
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->stopVideoPlayer()V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_9
    :goto_6
    return-void
.end method
