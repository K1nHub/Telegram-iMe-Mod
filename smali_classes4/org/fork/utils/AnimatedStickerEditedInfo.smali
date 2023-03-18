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
    .locals 12

    const-string v0, "animatedSticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->animatedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 23
    iput-wide p2, p0, Lorg/fork/utils/AnimatedStickerEditedInfo;->duration:J

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "temp_app_avatar_background.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x200

    if-nez v3, :cond_0

    .line 31
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 32
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x3c

    invoke-virtual {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 37
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v6, "bytes.toByteArray()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    :cond_0
    const-wide/16 v6, 0x0

    .line 40
    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    long-to-float v1, v6

    .line 41
    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    .line 42
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->end:F

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 45
    iput-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    const/16 v3, 0x3e8

    int-to-long v8, v3

    .line 46
    div-long v8, p2, v8

    const v3, 0x1c200

    int-to-long v10, v3

    mul-long v8, v8, v10

    iput-wide v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 47
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    const/16 v3, 0x1e

    .line 48
    iput v3, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 49
    iput-wide p2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    const/4 v3, 0x0

    .line 50
    iput-object v3, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 51
    iput-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 52
    new-instance v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v8}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 53
    iput-byte v1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v9, 0x44000000    # 512.0f

    .line 54
    iput v9, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 55
    iput v9, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 56
    iput-object p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 57
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v9, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1, v9, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 58
    iget-object p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-byte p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/2addr p1, v2

    int-to-byte p1, p1

    iput-byte p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 60
    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    :cond_1
    const/16 p1, 0x280

    .line 64
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 65
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 p1, 0x3f400000    # 0.75f

    .line 66
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 67
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const/high16 p1, 0x3e000000    # 0.125f

    .line 68
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 69
    iput p1, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v8, v3, v1

    .line 52
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 71
    iput-boolean v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    int-to-float p1, v5

    const p2, 0x44558000    # 854.0f

    div-float/2addr p1, p2

    .line 74
    invoke-static {p1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p3, p1, p2

    if-gez p3, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    float-to-int p1, p1

    .line 78
    div-int/2addr v5, p1

    .line 80
    rem-int/lit8 p1, v5, 0x10

    const/high16 p2, 0x41800000    # 16.0f

    if-eqz p1, :cond_3

    int-to-float p3, v5

    div-float/2addr p3, p2

    .line 81
    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p3

    mul-int/lit8 p3, p3, 0x10

    goto :goto_0

    :cond_3
    move p3, v5

    :goto_0
    if-eqz p1, :cond_4

    int-to-float p1, v5

    div-float/2addr p1, p2

    .line 84
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    mul-int/lit8 v5, p1, 0x10

    .line 86
    :cond_4
    iput p3, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 87
    iput p3, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 88
    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 89
    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 90
    iput v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 91
    iput-boolean v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 92
    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    return-void
.end method
