.class public Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedEmojiDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;,
        Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;
    }
.end annotation


# static fields
.field private static dominantColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fetchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static globalEmojiCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private alpha:F

.field private attached:Z

.field private cacheType:I

.field private canOverrideColorCached:Ljava/lang/Boolean;

.field private colorFilterToSet:Landroid/graphics/ColorFilter;

.field private currentAccount:I

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private documentId:J

.field private holders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;",
            ">;"
        }
    .end annotation
.end field

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isDefaultStatusEmojiCached:Ljava/lang/Boolean;

.field public rawDrawIndex:I

.field public sizedp:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6NXaaNOvjC9VOzhfTJGT9Z5gvks(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hn_z2KjfXq5cwFEqfscpmGd8tdg(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    .line 390
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 388
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 725
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 391
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 392
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 393
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 394
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 395
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 401
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 388
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 725
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 402
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 403
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 404
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 405
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 406
    iput-object p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    .line 407
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 413
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 388
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 725
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 414
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 415
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 416
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 417
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    const/4 p1, 0x0

    .line 418
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method public static findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 363
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 364
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCacheTypeForEnterView()I
    .locals 1

    .line 112
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;
    .locals 3

    .line 144
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    .line 147
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public static getDominantColor(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return v0

    .line 793
    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 794
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    .line 796
    :cond_2
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 798
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 799
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_0

    .line 802
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private initDocument(Z)V
    .locals 32

    move-object/from16 v0, p0

    .line 443
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    if-nez v1, :cond_1

    .line 447
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 461
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 462
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 464
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v4, 0x2

    const-string v5, "_"

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    .line 472
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 474
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setVideoThumbIsSame(Z)V

    .line 475
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-nez v1, :cond_7

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v1, v4, :cond_6

    if-eq v1, v6, :cond_6

    if-ne v1, v7, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    .line 476
    :goto_0
    iget v9, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_8

    const/4 v1, 0x1

    .line 479
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 480
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v11, v2, :cond_9

    .line 481
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_d_nostream"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 483
    :cond_9
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v12, 0xf

    const/16 v13, 0xe

    const/16 v14, 0x8

    if-eq v11, v12, :cond_b

    if-eq v11, v13, :cond_b

    if-eq v11, v14, :cond_b

    if-ne v11, v3, :cond_a

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v11

    if-ge v11, v4, :cond_b

    :cond_a
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v11, v2, :cond_b

    .line 484
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_pcache"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 486
    :cond_b
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eqz v11, :cond_c

    if-eq v11, v3, :cond_c

    if-eq v11, v13, :cond_c

    if-eq v11, v12, :cond_c

    .line 487
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_compress"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 489
    :cond_c
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v11, v14, :cond_d

    .line 490
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "firstframe"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 496
    :cond_d
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v12, 0x5a

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 497
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v15, "video/webm"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const v8, 0x3e4ccccd    # 0.2f

    const-string/jumbo v2, "windowBackgroundWhiteGrayIcon"

    const/16 v16, 0x0

    if-eqz v12, :cond_e

    .line 498
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 499
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "g"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 500
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v12, v2, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    :goto_1
    move-object/from16 v24, v2

    goto/16 :goto_5

    .line 501
    :cond_e
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v7, "application/x-tgsticker"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v12, 0x200

    if-eqz v7, :cond_13

    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_f
    const-string v6, ""

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "@"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v13

    if-nez v13, :cond_11

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v13, v4, :cond_11

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/ImageLoader;->hasLottieMemCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_3

    :cond_10
    move-object/from16 v2, v16

    goto :goto_4

    .line 504
    :cond_11
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4, v2, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 505
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 506
    invoke-virtual {v2, v12, v12}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 510
    :cond_12
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    goto :goto_1

    .line 513
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4, v2, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 514
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 515
    invoke-virtual {v2, v12, v12}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_14
    move-object/from16 v24, v2

    move-object/from16 v4, v16

    :goto_5
    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    move-object/from16 v16, v4

    .line 525
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 526
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    const/16 v28, 0x1

    const/16 v29, 0x200

    const/16 v30, 0x200

    const/16 v31, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move/from16 v27, v5

    invoke-direct/range {v17 .. v31}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 527
    :cond_16
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    .line 528
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v20, v16

    move-object/from16 v21, v9

    move-wide/from16 v25, v4

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_7

    .line 530
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_19

    .line 531
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 532
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-wide/from16 v25, v4

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_7

    .line 534
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_firstframe"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v16

    move-wide/from16 v25, v4

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_7

    .line 537
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v16

    move-object/from16 v19, v9

    move-wide/from16 v25, v4

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 542
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    .line 544
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 545
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 547
    :cond_1b
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1c

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x1a00

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 550
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 551
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1d

    goto :goto_8

    .line 556
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 558
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v2, 0x0

    goto :goto_9

    .line 552
    :cond_1e
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 554
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 560
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 562
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_20

    if-ne v1, v3, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v8, 0x0

    goto :goto_b

    .line 563
    :cond_20
    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 565
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 566
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    :cond_21
    :goto_c
    return-void
.end method

.method public static isDefaultStatusEmoji(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 741
    instance-of v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 744
    :cond_0
    check-cast p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z

    move-result p0

    return p0
.end method

.method public static isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 397
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 409
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method public static lightModeChanged()V
    .locals 6

    .line 1172
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1173
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1174
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1175
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 1176
    iget-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 1177
    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    goto :goto_0

    .line 1179
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 9

    .line 79
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 83
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 85
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 87
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 89
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-object v2, v8

    move v3, p1

    move v4, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    :cond_2
    return-object v0
.end method

.method public static make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 4

    .line 96
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 100
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 102
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 104
    :cond_1
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 106
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-direct {v2, p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method private updateAttachState()V
    .locals 2

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 697
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eq v0, v1, :cond_5

    .line 698
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    .line 702
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    .line 571
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 574
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 572
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 422
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const v1, 0x3f933333    # 1.15f

    if-nez v0, :cond_0

    .line 423
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 427
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    :cond_2
    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x22

    .line 431
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    :cond_4
    :goto_0
    const/16 v0, 0x64

    .line 429
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    .line 425
    :cond_5
    :goto_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintEmoji:[Landroid/text/TextPaint;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    :goto_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public canOverrideColor()Z
    .locals 2

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 719
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 720
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmoji()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 646
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 647
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V
    .locals 1

    .line 651
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p3, :cond_0

    return-void

    .line 654
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 655
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    return-void
.end method

.method public drawRaw(Landroid/graphics/Canvas;ZI)V
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 624
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 626
    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    div-float/2addr p2, v0

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 627
    iget v0, p3, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    rem-int/2addr v0, p2

    iput v0, p3, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 629
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 630
    iget p2, p3, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->drawFrame(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 631
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 633
    div-int/lit8 p3, p3, 0x1e

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawFrame(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 635
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 636
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 637
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .line 753
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getDocumentId()J
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    :goto_0
    return-wide v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method invalidate()V
    .locals 3

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 580
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 581
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 588
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    if-eqz v0, :cond_2

    .line 591
    invoke-interface {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public isDefaultStatusEmoji()Z
    .locals 6

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 731
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    .line 732
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    if-nez v2, :cond_1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    const-wide v4, 0xabd9d560000002cL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-wide v4, 0xa87df0000000fL

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 689
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 758
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 769
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    :cond_2
    :goto_1
    return-void
.end method

.method public setTime(J)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 117
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 120
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentTime(J)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatedEmojiDrawable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(J)V
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 126
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    :cond_2
    return-void
.end method
