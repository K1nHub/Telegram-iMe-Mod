.class public final Lorg/fork/utils/AnimatedStickerEditedInfo;
.super Lorg/telegram/messenger/VideoEditedInfo;
.source "AnimatedStickerEditedInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/utils/AnimatedStickerEditedInfo$Companion;
    }
.end annotation


# instance fields
.field private final animatedSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private final duration:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/utils/AnimatedStickerEditedInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/utils/AnimatedStickerEditedInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;J)V
    .locals 11

    const-string v0, "animatedSticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->animatedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 23
    iput-wide p2, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->duration:J

    .line 27
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp_app_avatar_background.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x200

    if-nez v2, :cond_0

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x3c

    invoke-virtual {v2, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 37
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v5, "bytes.toByteArray()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    :cond_0
    const-wide/16 v5, 0x0

    .line 40
    iput-wide v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    long-to-float v0, v5

    .line 41
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    .line 42
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->end:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 45
    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    const/16 v2, 0x3e8

    int-to-long v7, v2

    .line 46
    div-long v7, p2, v7

    const v2, 0x1c200

    int-to-long v9, v2

    mul-long v7, v7, v9

    iput-wide v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 47
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    const/16 v2, 0x1e

    .line 48
    iput v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 49
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 51
    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p3, p2, [Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 52
    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 53
    iput-byte v0, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v2, 0x44000000    # 512.0f

    .line 54
    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 55
    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 56
    invoke-virtual {p0}, Lorg/fork/utils/AnimatedStickerEditedInfo;->getAnimatedSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 57
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v7, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v7, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 58
    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, p2}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/2addr v2, p2

    int-to-byte v2, v2

    iput-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 60
    invoke-virtual {p0}, Lorg/fork/utils/AnimatedStickerEditedInfo;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    :cond_1
    const/16 p1, 0x280

    .line 64
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 65
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 p1, 0x3f400000    # 0.75f

    .line 66
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 67
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const/high16 p1, 0x3e000000    # 0.125f

    .line 68
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 69
    iput p1, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v1, p3, v0

    .line 52
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 71
    iput-boolean p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    int-to-float p1, v4

    const p3, 0x44558000    # 854.0f

    div-float/2addr p1, p3

    .line 74
    invoke-static {p1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p3

    if-gez v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    float-to-int p1, p1

    .line 78
    div-int/2addr v4, p1

    .line 80
    rem-int/lit8 p1, v4, 0x10

    const/high16 p3, 0x41800000    # 16.0f

    if-eqz p1, :cond_3

    int-to-float v0, v4

    div-float/2addr v0, p3

    .line 81
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eqz p1, :cond_4

    int-to-float p1, v4

    div-float/2addr p1, p3

    .line 84
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    mul-int/lit8 v4, p1, 0x10

    .line 86
    :cond_4
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 87
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 88
    iput v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 89
    iput v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 90
    iput v3, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 91
    iput-boolean p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 92
    iput-wide v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    return-void
.end method


# virtual methods
.method public final getAnimatedSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->animatedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->duration:J

    return-wide v0
.end method
