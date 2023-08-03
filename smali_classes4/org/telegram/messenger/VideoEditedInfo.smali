.class public Lorg/telegram/messenger/VideoEditedInfo;
.super Ljava/lang/Object;
.source "VideoEditedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;,
        Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;
    }
.end annotation


# instance fields
.field public alreadyScheduledConverting:Z

.field public avatarStartTime:J

.field public bitrate:I

.field public canceled:Z

.field public compressQuality:I

.field public cropState:Lorg/telegram/messenger/MediaController$CropState;

.field public encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field public end:F

.field public endTime:J

.field public estimatedDuration:J

.field public estimatedSize:J

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public forceFragmenting:Z

.field public framerate:I

.field public fromCamera:Z

.field public gradientBottomColor:Ljava/lang/Integer;

.field public gradientTopColor:Ljava/lang/Integer;

.field public hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field public isPhoto:Z

.field public isStory:Z

.field public iv:[B

.field public key:[B

.field public mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public muted:Z

.field public needUpdateProgress:Z

.field public originalBitrate:I

.field public originalDuration:J

.field public originalHeight:I

.field public originalPath:Ljava/lang/String;

.field public originalWidth:I

.field public paintPath:Ljava/lang/String;

.field public parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;"
        }
    .end annotation
.end field

.field public resultHeight:I

.field public resultWidth:I

.field public rotationValue:I

.field public roundVideo:Z

.field public shouldLimitFps:Z

.field public start:F

.field public startTime:J

.field public tryUseHevc:Z

.field public videoConvertFirstWrite:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const/16 v0, 0x18

    .line 43
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->needUpdateProgress:Z

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    .line 72
    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->tryUseHevc:Z

    return-void
.end method


# virtual methods
.method public canAutoPlaySourceVideo()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 11

    .line 251
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_b

    .line 253
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_3

    const/16 v0, 0xaa

    goto :goto_1

    :cond_3
    move v0, v4

    .line 257
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 258
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 259
    array-length v8, v7

    add-int/2addr v0, v8

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 263
    :goto_2
    new-instance v8, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 264
    invoke-virtual {v8, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 265
    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 266
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 267
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_9

    .line 268
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 272
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 273
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 274
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 275
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 278
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 280
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 285
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-eqz v0, :cond_5

    .line 286
    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 289
    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 290
    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 292
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    move v0, v6

    :goto_4
    if-ge v0, v1, :cond_a

    if-nez v0, :cond_6

    .line 298
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    :cond_6
    if-ne v0, v5, :cond_7

    .line 300
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    :cond_7
    if-ne v0, v2, :cond_8

    .line 302
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    .line 304
    :cond_8
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 306
    :goto_5
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 307
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 308
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 309
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 310
    iget v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    :cond_9
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :cond_a
    if-eqz v7, :cond_b

    .line 316
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 317
    invoke-virtual {v8, v7}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V

    goto :goto_6

    .line 319
    :cond_b
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 321
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 322
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 324
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v6

    :goto_7
    if-ge v7, v0, :cond_c

    .line 325
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v9, v8, v6}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 327
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    goto :goto_8

    .line 329
    :cond_d
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 331
    :goto_8
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_e

    .line 332
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 333
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 334
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 335
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 336
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 337
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 341
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 342
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    goto :goto_9

    .line 344
    :cond_e
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 346
    :goto_9
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->parts:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 349
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_a

    .line 352
    :cond_f
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 354
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 355
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 356
    invoke-virtual {v8}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {v8}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 361
    :goto_b
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v5

    iget v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v2, 0x3

    iget v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    const/16 v1, 0x8

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    const/16 v1, 0x9

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    aput-object v0, v8, v4

    const/16 v0, 0xb

    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    aput-object v1, v8, v0

    const-string v0, "-1_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_-%s_%s"

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needConvert()Z
    .locals 9

    .line 502
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 503
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    if-nez v0, :cond_0

    return v6

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$CropState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_3

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    if-eq v0, v2, :cond_4

    :cond_3
    move v1, v6

    :cond_4
    return v1

    .line 508
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-eqz v0, :cond_6

    iget-wide v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_6

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    :cond_6
    move v1, v6

    :cond_7
    return v1
.end method

.method public parseString(Ljava/lang/String;)Z
    .locals 14

    const-string v0, "_"

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 369
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 370
    array-length v1, p1

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-lt v1, v4, :cond_12

    .line 371
    aget-object v1, p1, v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const/4 v1, 0x2

    .line 372
    aget-object v6, p1, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const/4 v6, 0x3

    .line 373
    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/4 v7, 0x4

    .line 374
    aget-object v8, p1, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    const/4 v8, 0x5

    .line 375
    aget-object v9, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 376
    aget-object v9, p1, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v9, 0x7

    .line 377
    aget-object v10, p1, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    const/16 v10, 0x8

    .line 378
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    const/16 v10, 0x9

    .line 379
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    const/16 v10, 0xa

    .line 380
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 381
    iget v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    move v10, v5

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    iput-boolean v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 383
    aget-object v10, p1, v4

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xc

    .line 385
    aget-object v4, p1, v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f

    .line 387
    new-instance v11, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v11, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 388
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 390
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v12

    iput-wide v12, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 391
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    .line 393
    :cond_2
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_7

    .line 395
    new-instance v6, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v6}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 396
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    if-lt v4, v8, :cond_3

    .line 398
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 400
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 401
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 402
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 403
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 404
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 405
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 406
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 407
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 408
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 409
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 410
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 411
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 412
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 413
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 414
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    new-instance v8, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v13

    invoke-direct {v8, v12, v13}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 415
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 416
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_7

    if-nez v6, :cond_4

    .line 421
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    :cond_4
    if-ne v6, v5, :cond_5

    .line 423
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    :cond_5
    if-ne v6, v1, :cond_6

    .line 425
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    .line 427
    :cond_6
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 429
    :goto_2
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    .line 430
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    .line 431
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    .line 432
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    .line 433
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 436
    :cond_7
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_8

    .line 438
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v6

    .line 439
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    .line 442
    :cond_8
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_b

    .line 444
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    .line 445
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    move v8, v3

    :goto_3
    if-ge v8, v6, :cond_9

    .line 447
    iget-object v12, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v13, v11, v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 449
    :cond_9
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-ne v6, v5, :cond_a

    move v6, v5

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    iput-boolean v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    :cond_b
    if-lt v4, v1, :cond_c

    .line 452
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v1

    if-eqz v1, :cond_c

    .line 454
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 455
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 456
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    .line 457
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 458
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    .line 459
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 460
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    .line 461
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 462
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 463
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-lt v4, v7, :cond_c

    .line 465
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v6

    iput-boolean v6, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    :cond_c
    if-lt v4, v2, :cond_d

    .line 470
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    move v2, v3

    :goto_5
    if-ge v2, v1, :cond_d

    .line 472
    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-direct {v6}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;-><init>()V

    .line 473
    invoke-virtual {v6, v11, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    if-lt v4, v9, :cond_e

    .line 477
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    .line 478
    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    .line 480
    :cond_e
    invoke-virtual {v11}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_f
    move v4, v10

    .line 486
    :cond_10
    :goto_6
    array-length v1, p1

    if-ge v4, v1, :cond_12

    .line 487
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 488
    aget-object v1, p1, v4

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    goto :goto_7

    .line 490
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    return v5

    :catch_0
    move-exception p1

    .line 496
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v3
.end method
