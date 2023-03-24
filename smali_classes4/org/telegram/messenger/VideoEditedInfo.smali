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

.field public framerate:I

.field public isPhoto:Z

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

.field public resultHeight:I

.field public resultWidth:I

.field public rotationValue:I

.field public roundVideo:Z

.field public shouldLimitFps:Z

.field public start:F

.field public startTime:J

.field public videoConvertFirstWrite:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const/16 v0, 0x18

    .line 42
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->needUpdateProgress:Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    return-void
.end method


# virtual methods
.method public canAutoPlaySourceVideo()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 11

    .line 205
    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

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

    goto/16 :goto_a

    .line 207
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_3

    const/16 v0, 0xaa

    goto :goto_1

    :cond_3
    move v0, v4

    .line 211
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 212
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 213
    array-length v8, v7

    add-int/2addr v0, v8

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 217
    :goto_2
    new-instance v8, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 218
    invoke-virtual {v8, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 219
    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 220
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_9

    .line 222
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 225
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 227
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 228
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 231
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 233
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 235
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-eqz v0, :cond_5

    .line 240
    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 243
    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 244
    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 246
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    move v0, v5

    :goto_4
    if-ge v0, v1, :cond_a

    if-nez v0, :cond_6

    .line 252
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    :cond_6
    if-ne v0, v6, :cond_7

    .line 254
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    :cond_7
    if-ne v0, v2, :cond_8

    .line 256
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_5

    .line 258
    :cond_8
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v9, v9, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 260
    :goto_5
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 261
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 262
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 263
    iget v10, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-virtual {v8, v10}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 264
    iget v9, v9, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 267
    :cond_9
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :cond_a
    if-eqz v7, :cond_b

    .line 270
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 271
    invoke-virtual {v8, v7}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V

    goto :goto_6

    .line 273
    :cond_b
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 275
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 276
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 278
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v5

    :goto_7
    if-ge v7, v0, :cond_c

    .line 279
    iget-object v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-static {v9, v8}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->access$000(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/tgnet/SerializedData;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 281
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    goto :goto_8

    .line 283
    :cond_d
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 285
    :goto_8
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_e

    .line 286
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 288
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 289
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 290
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 295
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 296
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    goto :goto_9

    .line 298
    :cond_e
    invoke-virtual {v8, v5}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 300
    :goto_9
    invoke-virtual {v8}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {v8}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 305
    :goto_a
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    iget-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v6

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

    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x6

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

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
    .locals 4

    .line 435
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parseString(Ljava/lang/String;)Z
    .locals 13

    const-string v0, "_"

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 313
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 314
    array-length v1, p1

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-lt v1, v4, :cond_10

    .line 315
    aget-object v1, p1, v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const/4 v1, 0x2

    .line 316
    aget-object v6, p1, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const/4 v6, 0x3

    .line 317
    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/4 v7, 0x4

    .line 318
    aget-object v8, p1, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    const/4 v8, 0x5

    .line 319
    aget-object v9, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 320
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v2, 0x7

    .line 321
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    const/16 v2, 0x8

    .line 322
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    const/16 v2, 0x9

    .line 323
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    const/16 v2, 0xa

    .line 324
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 325
    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 327
    aget-object v2, p1, v4

    const-string v9, "-"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xc

    .line 329
    aget-object v4, p1, v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_d

    .line 331
    new-instance v9, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v9, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 332
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 334
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 335
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    .line 337
    :cond_2
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_7

    .line 339
    new-instance v6, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v6}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 340
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    if-lt v4, v8, :cond_3

    .line 342
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 344
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 345
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 346
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 347
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 348
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 349
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 350
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 351
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 352
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 353
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 354
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 355
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 356
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 357
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 358
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    new-instance v8, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v11

    invoke-direct {v8, v10, v11}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 359
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 360
    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v6, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_7

    if-nez v6, :cond_4

    .line 365
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    :cond_4
    if-ne v6, v5, :cond_5

    .line 367
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    :cond_5
    if-ne v6, v1, :cond_6

    .line 369
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_2

    .line 371
    :cond_6
    iget-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v8, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 373
    :goto_2
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    .line 374
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    .line 375
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    .line 376
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    .line 377
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 380
    :cond_7
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_8

    .line 382
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v6

    .line 383
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    .line 386
    :cond_8
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v6

    if-eqz v6, :cond_b

    .line 388
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    move v8, v3

    :goto_3
    if-ge v8, v6, :cond_9

    .line 391
    iget-object v10, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v12}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/SerializedData;Lorg/telegram/messenger/VideoEditedInfo$1;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 393
    :cond_9
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

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

    .line 396
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v1

    if-eqz v1, :cond_c

    .line 398
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 399
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 400
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    .line 401
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 402
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    .line 403
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 404
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    .line 405
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 406
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 407
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    iput v6, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-lt v4, v7, :cond_c

    .line 409
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 413
    :cond_c
    invoke-virtual {v9}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_d
    move v4, v2

    .line 419
    :cond_e
    :goto_5
    array-length v1, p1

    if-ge v4, v1, :cond_10

    .line 420
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 421
    aget-object v1, p1, v4

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    goto :goto_6

    .line 423
    :cond_f
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

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return v5

    :catch_0
    move-exception p1

    .line 429
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v3
.end method
