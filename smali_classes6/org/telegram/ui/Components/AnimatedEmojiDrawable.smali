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
.field private static LOG_MEMORY_LEAK:Z = false

.field public static attachedCount:I

.field public static attachedDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation
.end field

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

.field private static globalEmojiCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static liteModeKeyboard:Z

.field private static liteModeReactions:Z


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

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    .line 426
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 769
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 427
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 428
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 429
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 430
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 431
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 437
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 769
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 438
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 439
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 440
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 441
    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    .line 442
    iput-object p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    .line 443
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V

    return-void
.end method

.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 449
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/4 v0, 0x0

    .line 757
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    .line 769
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    .line 450
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    .line 451
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    .line 452
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 453
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateSize()V

    .line 454
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    const/4 p1, 0x0

    .line 455
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 55
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method public static findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 399
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 400
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->access$100(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->access$100(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;

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

    .line 119
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

    .line 152
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    .line 155
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->fetchers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    if-nez v0, :cond_1

    .line 157
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
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    return v0

    .line 839
    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 840
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    .line 842
    :cond_2
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 844
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 845
    sget-object v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->dominantColors:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_0

    .line 848
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private initDocument(Z)V
    .locals 33

    move-object/from16 v0, p0

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0xc

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 492
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 505
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 506
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v1, v2, :cond_1

    .line 507
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 511
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 514
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v4, 0x2

    const-string v5, "_"

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    move v1, v4

    .line 519
    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 521
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setVideoThumbIsSame(Z)V

    .line 522
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-nez v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v1, v7, :cond_7

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v1, v4, :cond_6

    sget-boolean v9, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    if-eqz v9, :cond_7

    :cond_6
    if-ne v1, v6, :cond_8

    sget-boolean v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeReactions:Z

    if-nez v1, :cond_8

    :cond_7
    move v1, v3

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 523
    :goto_0
    iget v9, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_9

    move v1, v3

    .line 526
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 527
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v11, v2, :cond_a

    .line 528
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_d_nostream"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 530
    :cond_a
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v12, 0xf

    const/16 v13, 0xe

    const/16 v14, 0x8

    if-eq v11, v12, :cond_c

    if-eq v11, v13, :cond_c

    if-eq v11, v14, :cond_c

    if-ne v11, v3, :cond_b

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v11

    if-ge v11, v4, :cond_c

    :cond_b
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v11, v2, :cond_c

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_pcache"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 533
    :cond_c
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eqz v11, :cond_d

    if-eq v11, v3, :cond_d

    if-eq v11, v13, :cond_d

    if-eq v11, v12, :cond_d

    .line 534
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_compress"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 536
    :cond_d
    iget v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v11, v14, :cond_e

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "firstframe"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 543
    :cond_e
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v12, 0x5a

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 544
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v15, "video/webm"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v16, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    if-eqz v12, :cond_f

    .line 545
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "g"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 547
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v4, v12, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    goto/16 :goto_2

    .line 548
    :cond_f
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "application/x-tgsticker"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v12, 0x200

    if-eqz v2, :cond_14

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_10
    const-string v6, ""

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->documentId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-nez v6, :cond_11

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v6, v4, :cond_11

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ImageLoader;->hasLottieMemCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 551
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2, v4, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 552
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 553
    invoke-virtual {v2, v12, v12}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_12
    move-object/from16 v16, v2

    .line 557
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    move-object/from16 v4, v16

    move-object/from16 v16, v2

    goto :goto_2

    .line 560
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2, v4, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 561
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 562
    invoke-virtual {v4, v12, v12}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 569
    :cond_15
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->absolutePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 570
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

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->currentAccount:I

    const/16 v29, 0x1

    const/16 v30, 0x200

    const/16 v31, 0x200

    const/16 v32, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move/from16 v28, v5

    invoke-direct/range {v17 .. v32}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 571
    :cond_16
    iget v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-ne v2, v14, :cond_17

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v20, v16

    move-object/from16 v21, v9

    move-object/from16 v24, v4

    move-wide/from16 v25, v5

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_17
    if-nez v1, :cond_19

    .line 574
    sget-boolean v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    if-nez v1, :cond_18

    if-eq v2, v13, :cond_18

    goto :goto_3

    .line 583
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v16

    move-object/from16 v19, v9

    move-object/from16 v24, v4

    move-wide/from16 v25, v5

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_4

    .line 575
    :cond_19
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 576
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    const/16 v29, 0x1

    move-object/from16 v17, v1

    move-object/from16 v24, v4

    move-wide/from16 v25, v5

    move-object/from16 v28, v2

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    .line 577
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 578
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_firstframe"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v25, 0x0

    const/16 v27, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v16

    move-object/from16 v22, v4

    move-wide/from16 v23, v5

    move-object/from16 v26, v2

    invoke-virtual/range {v17 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    .line 580
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v25, 0x0

    const/16 v27, 0x1

    move-object/from16 v17, v1

    move-object/from16 v22, v4

    move-wide/from16 v23, v5

    move-object/from16 v26, v2

    invoke-virtual/range {v17 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 587
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V

    .line 589
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    if-eq v1, v10, :cond_1c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 590
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 592
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1e

    .line 593
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x1a00

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 595
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 596
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v2, 0x6

    const/16 v4, 0xc

    if-eq v1, v4, :cond_20

    if-eq v1, v14, :cond_20

    if-eq v1, v2, :cond_20

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1f

    goto :goto_5

    .line 601
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 602
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 603
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v4, 0x0

    goto :goto_6

    .line 597
    :cond_20
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 598
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 599
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 605
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 607
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_22

    if-ne v1, v2, :cond_21

    goto :goto_7

    :cond_21
    move v8, v4

    goto :goto_8

    .line 608
    :cond_22
    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 610
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 611
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    :cond_23
    :goto_9
    return-void
.end method

.method public static isDefaultStatusEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 793
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

    .line 432
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 433
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    .line 445
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    return-void
.end method

.method public static make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 8

    .line 86
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 90
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    .line 92
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 94
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-object v2, v0

    move v3, p1

    move v4, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v1, p2, p3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 4

    .line 103
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 107
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    .line 109
    sget-object v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 111
    :cond_1
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_2

    .line 113
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-direct {v0, p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static updateAll()V
    .locals 8

    .line 1256
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1259
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateLiteModeValues()V

    const/4 v0, 0x0

    move v1, v0

    .line 1260
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1261
    sget-object v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->globalEmojiCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    move v3, v0

    .line 1262
    :goto_1
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1263
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1264
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_1

    .line 1265
    iget-boolean v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 1266
    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->initDocument(Z)V

    goto :goto_2

    .line 1268
    :cond_1
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateAttachState()V
    .locals 3

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    const/4 v1, 0x1

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
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 727
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eq v0, v2, :cond_7

    .line 728
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_4

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    .line 732
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 734
    :goto_1
    sget-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->LOG_MEMORY_LEAK:Z

    if-eqz v0, :cond_7

    .line 735
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    .line 738
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_6

    .line 739
    sget v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    add-int/2addr v0, v1

    sput v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    .line 740
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 742
    :cond_6
    sget v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    .line 743
    sget-object v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 745
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attached count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->attachedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animatedDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateAutoRepeat(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    .line 616
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

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 619
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 617
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static updateLiteModeValues()V
    .locals 1

    const/16 v0, 0x4004

    .line 479
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeKeyboard:Z

    const/16 v0, 0x2008

    .line 480
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->liteModeReactions:Z

    return-void
.end method

.method private updateSize()V
    .locals 4

    .line 459
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const v1, 0x3f933333    # 1.15f

    if-nez v0, :cond_0

    .line 460
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

    mul-float/2addr v0, v1

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

    .line 464
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

    mul-float/2addr v0, v1

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

    .line 468
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    :cond_4
    :goto_0
    const/16 v0, 0x64

    .line 466
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->sizedp:I

    goto :goto_2

    .line 462
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

    mul-float/2addr v0, v1

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

    .line 683
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void

    .line 684
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 2

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public canOverrideColor()Z
    .locals 2

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColorCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 764
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

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 670
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 671
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V
    .locals 1

    .line 675
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p3, :cond_0

    return-void

    .line 678
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 679
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    return-void
.end method

.method public getAlpha()I
    .locals 2

    .line 798
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getDocumentId()J
    .locals 2

    .line 473
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

    .line 826
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

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 625
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 626
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 633
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    if-eqz v0, :cond_2

    .line 636
    invoke-interface {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public isDefaultStatusEmoji()Z
    .locals 6

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->isDefaultStatusEmojiCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 775
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 776
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    .line 777
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

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->views:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 716
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->holders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAttachState()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 803
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->alpha:F

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 814
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->colorFilterToSet:Landroid/graphics/ColorFilter;

    :cond_2
    :goto_1
    return-void
.end method

.method public setTime(J)V
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 124
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 127
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCurrentTime(J)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 644
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

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(J)V
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 133
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->cacheType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 p1, 0x0

    .line 136
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    :cond_2
    return-void
.end method
