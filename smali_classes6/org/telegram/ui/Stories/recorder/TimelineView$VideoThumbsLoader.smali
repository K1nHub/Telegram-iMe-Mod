.class Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;
.super Ljava/lang/Object;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoThumbsLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;
    }
.end annotation


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final count:I

.field private destroyed:Z

.field private duration:J

.field private final frameHeight:I

.field private final frameIterator:J

.field private final frameWidth:I

.field private final frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private metadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private nextFrame:J

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;


# direct methods
.method public static synthetic $r8$lambda$NGRnmr-8mpObfdO3IK5gaJlJXRQ(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->lambda$retrieveFrame$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bN6eXgmfeiJhYuzEan-lE5dKz1c(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->retrieveFrame()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/String;II)V
    .locals 8

    .line 1304
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1375
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    .line 1388
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->bitmapPaint:Landroid/graphics/Paint;

    .line 1305
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const-wide/32 v1, 0x1d4c0

    .line 1310
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1312
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1314
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->duration:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1316
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1318
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    move p2, p1

    .line 1320
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1322
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1324
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1326
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_4

    goto :goto_4

    :catch_0
    move-exception v0

    move v7, p2

    move p2, p1

    move p1, v7

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v0, p2

    move-wide v3, v1

    :goto_2
    move p2, p1

    :goto_3
    const/4 v5, 0x0

    .line 1334
    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 1335
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    move v7, p2

    move p2, p1

    move p1, v7

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    int-to-float p2, p2

    int-to-float p1, p1

    div-float v0, p2, p1

    :cond_5
    const p1, 0x3faaaaab

    const/high16 p2, 0x3f100000    # 0.5625f

    .line 1341
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    const/4 p2, 0x1

    .line 1342
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p1

    float-to-double v5, p4

    .line 1343
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    .line 1344
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float p2, v0

    const p4, 0x47ea6000    # 120000.0f

    div-float/2addr p2, p4

    int-to-float p3, p3

    mul-float/2addr p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 1345
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    long-to-float p2, v3

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 1346
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    neg-long p1, p1

    .line 1347
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    .line 1348
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I
    .locals 0

    .line 1290
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;
    .locals 0

    .line 1290
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$retrieveFrame$0(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->receiveFrame(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private receiveFrame(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1422
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1425
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1426
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private retrieveFrame()V
    .locals 12

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1397
    :try_start_0
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1399
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1400
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1401
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1402
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1403
    new-instance v5, Landroid/graphics/Rect;

    .line 1404
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 1405
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    float-to-int v8, v8

    .line 1406
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    div-float/2addr v9, v7

    float-to-int v9, v9

    .line 1407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    float-to-int v3, v10

    invoke-direct {v5, v6, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1409
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1410
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1414
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1418
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroyed:Z

    .line 1432
    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    .line 1434
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1435
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1438
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_2

    .line 1441
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1443
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 1444
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1356
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->duration:J

    return-wide v0
.end method

.method public getFrameWidth()I
    .locals 1

    .line 1352
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    return v0
.end method

.method public load()V
    .locals 4

    .line 1379
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1382
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    .line 1383
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    .line 1384
    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1385
    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
