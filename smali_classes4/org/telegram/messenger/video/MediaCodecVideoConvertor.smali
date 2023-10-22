.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.super Ljava/lang/Object;
.source "MediaCodecVideoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;
    }
.end annotation


# static fields
.field private static final MEDIACODEC_TIMEOUT_DEFAULT:I = 0x9c4

.field private static final MEDIACODEC_TIMEOUT_INCREASED:I = 0x55f0

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5


# instance fields
.field private callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field private endPresentationTime:J

.field private extractor:Landroid/media/MediaExtractor;

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

.field private outputMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/audio_input/AudioInput;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 952
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 953
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    .line 954
    new-instance v2, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;)V

    .line 955
    iget v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    .line 957
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 958
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartOffsetUs(J)V

    .line 960
    :cond_0
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 961
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    goto :goto_1

    :cond_1
    move-wide v3, v5

    .line 963
    :goto_1
    iget-wide v7, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_2

    add-long/2addr v3, v7

    .line 964
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    .line 966
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    .line 1190
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z
    .locals 93

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    .line 64
    iget-object v1, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    .line 65
    iget-object v11, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    .line 66
    iget v2, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    .line 67
    iget-boolean v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    .line 68
    iget v10, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    .line 69
    iget v9, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    .line 70
    iget v7, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    .line 71
    iget v8, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    .line 72
    iget v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    .line 73
    iget v6, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    .line 74
    iget v4, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    move/from16 v34, v3

    move/from16 v16, v4

    .line 75
    iget-wide v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-wide/from16 v17, v3

    .line 76
    iget-wide v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 v19, v3

    .line 77
    iget-wide v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    .line 78
    iget-boolean v12, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move-object/from16 v35, v1

    move/from16 v27, v2

    .line 79
    iget-wide v1, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    move/from16 v36, v12

    .line 80
    iget-object v12, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 81
    iget-object v15, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    move-object/from16 v21, v15

    .line 82
    iget-object v15, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    move-object/from16 v22, v15

    .line 83
    iget-object v15, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v23, v15

    .line 84
    iget-boolean v15, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    move-object/from16 v24, v12

    .line 85
    iget-object v12, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move/from16 v37, v5

    .line 86
    iget-boolean v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move/from16 v38, v5

    .line 87
    iget-object v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    move-object/from16 v30, v5

    .line 88
    iget-object v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    move-object/from16 v31, v5

    .line 89
    iget-boolean v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    move/from16 v25, v5

    .line 90
    iget-boolean v5, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    move-object/from16 v26, v12

    .line 91
    iget-object v12, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-object/from16 v39, v12

    .line 92
    iget-object v12, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->parts:Ljava/util/ArrayList;

    .line 94
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v12

    const-string v12, "convertVideoInternal original="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v40, v9

    const-string v9, "  result="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    move v14, v10

    const-wide/16 v9, 0x0

    cmp-long v28, v3, v9

    if-ltz v28, :cond_0

    const/16 v28, 0x1

    goto :goto_0

    :cond_0
    const/16 v28, 0x0

    :goto_0
    const-string/jumbo v9, "video/hevc"

    if-eqz v5, :cond_1

    move-object v10, v9

    goto :goto_1

    :cond_1
    const-string/jumbo v29, "video/avc"

    move-object/from16 v10, v29

    .line 103
    :goto_1
    iput-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 111
    :try_start_0
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-wide/from16 v49, v3

    .line 112
    new-instance v3, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v3}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 113
    invoke-virtual {v3, v11}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 115
    invoke-virtual {v3, v7, v8}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    long-to-float v4, v1

    const/high16 v51, 0x447a0000    # 1000.0f

    div-float v52, v4, v51

    const-wide/16 v53, 0x3e8

    move/from16 v55, v5

    mul-long v4, v1, v53

    .line 121
    iput-wide v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 122
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_59

    move-object/from16 v53, v11

    const-string v11, "csd-0"

    move-object/from16 v54, v12

    const-string/jumbo v12, "prepend-sps-pps-to-idr-frames"

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    if-eqz v15, :cond_36

    if-eqz v28, :cond_4

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v6, v52, v6

    if-gtz v6, :cond_2

    const v6, 0x27ac40

    goto :goto_2

    :cond_2
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, v52, v6

    if-gtz v6, :cond_3

    const v6, 0x2191c0

    goto :goto_2

    :cond_3
    const v6, 0x17cdc0

    goto :goto_2

    :cond_4
    if-gtz v6, :cond_5

    const v6, 0xe1000

    :cond_5
    :goto_2
    if-eqz v26, :cond_6

    move-object/from16 v15, v26

    .line 143
    :try_start_1
    iget-object v12, v15, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_a

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_47

    :catch_0
    move-exception v0

    move-object v3, v0

    move/from16 v39, v6

    move/from16 v32, v37

    goto/16 :goto_48

    :cond_6
    move-object/from16 v15, v26

    .line 144
    :goto_3
    :try_start_2
    rem-int/lit8 v12, v7, 0x10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1c

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v12, :cond_8

    .line 145
    :try_start_3
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_7

    .line 146
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changing width from "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v11, v7

    div-float v11, v11, v16

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v11, v11, 0x10

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    int-to-float v11, v7

    div-float v11, v11, v16

    .line 148
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-int/lit8 v7, v7, 0x10

    .line 150
    :cond_8
    :try_start_4
    rem-int/lit8 v11, v8, 0x10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    if-eqz v11, :cond_a

    .line 151
    :try_start_5
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_9

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changing height from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v12, v8

    div-float v12, v12, v16

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int/lit8 v12, v12, 0x10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_9
    int-to-float v11, v8

    div-float v11, v11, v16

    .line 154
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    mul-int/lit8 v8, v8, 0x10

    .line 158
    :cond_a
    :try_start_6
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1c

    if-eqz v11, :cond_b

    .line 159
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create photo encoder "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " duration = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    :cond_b
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1c

    .line 166
    :try_start_9
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v11, "color-format"

    const v12, 0x7f000789

    .line 167
    invoke-virtual {v2, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "bitrate"

    .line 168
    invoke-virtual {v2, v11, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "frame-rate"

    const/16 v12, 0x1e

    .line 169
    invoke-virtual {v2, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "i-frame-interval"

    const/4 v12, 0x1

    .line 170
    invoke-virtual {v2, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1b

    :try_start_a
    const-string v12, "c2.qti.avc.encoder"

    .line 173
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1a
    .catchall {:try_start_a .. :try_end_a} :catchall_1a

    move/from16 v38, v12

    .line 174
    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_19
    .catchall {:try_start_b .. :try_end_b} :catchall_19

    move/from16 v39, v6

    :try_start_c
    const-string/jumbo v6, "selected encoder "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 176
    invoke-virtual {v1, v2, v12, v12, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 177
    new-instance v2, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18
    .catchall {:try_start_c .. :try_end_c} :catchall_18

    .line 178
    :try_start_d
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 179
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 181
    new-instance v6, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17
    .catchall {:try_start_d .. :try_end_d} :catchall_17

    if-eqz v15, :cond_c

    :try_start_e
    iget-object v12, v15, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v12, :cond_c

    move/from16 v12, v37

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v2

    move v12, v7

    move-object/from16 v21, v11

    move-object v2, v13

    move/from16 v66, v36

    move/from16 v7, v37

    goto/16 :goto_3f

    :catch_1
    move-exception v0

    move-object v3, v0

    move/from16 v32, v37

    goto/16 :goto_44

    :cond_c
    move/from16 v12, v37

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v37, v11

    int-to-float v11, v12

    move/from16 v28, v11

    const/16 v29, 0x1

    const/16 v32, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v24

    move-object/from16 v18, v35

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v15

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v14

    move/from16 v26, v40

    :try_start_f
    invoke-direct/range {v16 .. v33}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_16
    .catchall {:try_start_f .. :try_end_f} :catchall_16

    .line 185
    :try_start_10
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    const/16 v14, 0x15

    if-ge v11, v14, :cond_d

    .line 186
    :try_start_11
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v2

    move-object/from16 v50, v6

    move-object v2, v13

    goto/16 :goto_3b

    :catch_2
    move-exception v0

    move-object v3, v0

    move/from16 v32, v12

    goto/16 :goto_3d

    :cond_d
    const/4 v11, 0x0

    .line 191
    :goto_5
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 193
    new-instance v14, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v14}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v16, v11

    move/from16 v11, v34

    invoke-virtual {v14, v3, v11, v15}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move-object/from16 v3, p1

    .line 197
    iget-object v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    if-nez v11, :cond_e

    .line 199
    :try_start_13
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v14, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v14, v4, v5}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 202
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v14, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v14, v11}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 205
    new-instance v14, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v14, v11, v4, v5}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 206
    :try_start_14
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v5, v14, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v11, 0x1

    invoke-virtual {v4, v5, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move v3, v4

    move-object/from16 v11, v16

    const-wide/16 v4, 0x0

    const/4 v15, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v0

    move/from16 v32, v12

    move-object/from16 v11, v37

    const/4 v10, -0x5

    goto/16 :goto_4b

    :cond_e
    move-object/from16 v11, v16

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x5

    :goto_7
    if-eqz v17, :cond_10

    if-nez v15, :cond_f

    goto :goto_8

    :cond_f
    move v9, v12

    move-object/from16 v11, v37

    move/from16 v5, v39

    move-object/from16 v15, v54

    const/4 v10, 0x0

    const/16 v45, 0x0

    move/from16 v12, p2

    goto/16 :goto_4d

    .line 209
    :cond_10
    :goto_8
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    if-eqz v14, :cond_11

    .line 212
    :try_start_16
    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v14, v15, v3}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v15
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v2

    move-object/from16 v50, v6

    move-object v2, v13

    move/from16 v14, v21

    goto/16 :goto_38

    :catch_4
    move-exception v0

    move-object v3, v0

    move/from16 v32, v12

    goto/16 :goto_39

    :cond_11
    :goto_9
    xor-int/lit8 v22, v18, 0x1

    const/16 v23, 0x1

    move/from16 v91, v20

    move/from16 v20, v3

    move/from16 v3, v91

    move/from16 v92, v22

    move-object/from16 v22, v14

    move/from16 v14, v21

    move/from16 v21, v92

    :goto_a
    if-nez v21, :cond_13

    if-eqz v23, :cond_12

    goto :goto_b

    :cond_12
    move/from16 v21, v14

    move-object/from16 v14, v22

    move/from16 v91, v20

    move/from16 v20, v3

    move/from16 v3, v91

    goto :goto_7

    .line 218
    :cond_13
    :goto_b
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    move/from16 v24, v15

    move/from16 v15, p2

    if-eqz v15, :cond_14

    const-wide/16 v25, 0x55f0

    move-wide/from16 v91, v25

    move-object/from16 v25, v2

    move/from16 v26, v3

    move-wide/from16 v2, v91

    goto :goto_c

    :cond_14
    move-object/from16 v25, v2

    move/from16 v26, v3

    const-wide/16 v2, 0x9c4

    .line 219
    :goto_c
    :try_start_18
    invoke-virtual {v1, v10, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v28, v6

    move/from16 v32, v12

    move-object/from16 v15, v56

    const/16 v23, 0x0

    move/from16 v91, v2

    move-object v2, v1

    move v1, v3

    move/from16 v3, v91

    goto/16 :goto_2a

    :cond_15
    const/4 v3, -0x3

    if-ne v2, v3, :cond_17

    .line 223
    :try_start_19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move/from16 v32, v12

    const/16 v12, 0x15

    if-ge v3, v12, :cond_16

    .line 224
    :try_start_1a
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v6

    move v12, v7

    move-object v2, v13

    move v3, v15

    goto/16 :goto_18

    :cond_16
    :goto_d
    move v3, v2

    move-object/from16 v28, v6

    move-object/from16 v15, v56

    :goto_e
    move-object v2, v1

    :goto_f
    const/4 v1, -0x1

    goto/16 :goto_2a

    :catchall_5
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v6

    move-object v2, v13

    move v3, v15

    move-object/from16 v10, v25

    goto/16 :goto_38

    :catch_5
    move-exception v0

    move/from16 v32, v12

    :goto_10
    move-object v3, v0

    move v10, v14

    move-object/from16 v14, v22

    move-object/from16 v2, v25

    goto/16 :goto_3a

    :cond_17
    move/from16 v32, v12

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1e

    .line 227
    :try_start_1b
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 228
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_18

    .line 229
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "photo encoder new format "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_18
    const/4 v12, -0x5

    if-ne v14, v12, :cond_1d

    if-eqz v3, :cond_1d

    .line 232
    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v15, 0x0

    invoke-virtual {v12, v3, v15}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v14
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v12, v57

    .line 233
    :try_start_1c
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    move/from16 v27, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_1b

    move-object/from16 v15, v56

    .line 234
    :try_start_1d
    invoke-virtual {v3, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v57, v12

    const-string v12, "csd-1"

    .line 235
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v14, :cond_19

    const/4 v12, 0x0

    goto :goto_11

    .line 236
    :cond_19
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    :goto_11
    if-nez v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :goto_12
    add-int v19, v12, v3

    goto :goto_14

    :catchall_6
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object/from16 v50, v6

    move v12, v7

    move-object v2, v13

    move-object/from16 v10, v25

    move/from16 v14, v27

    goto :goto_19

    :catch_6
    move-exception v0

    goto :goto_15

    :cond_1b
    move-object/from16 v57, v12

    goto :goto_13

    :cond_1c
    move-object/from16 v57, v12

    move/from16 v27, v14

    :goto_13
    move-object/from16 v15, v56

    :goto_14
    move/from16 v14, v27

    goto :goto_16

    :catchall_7
    move-exception v0

    move/from16 v27, v14

    goto :goto_17

    :catch_7
    move-exception v0

    move/from16 v27, v14

    :goto_15
    move-object v3, v0

    move-object/from16 v14, v22

    move-object/from16 v2, v25

    move/from16 v10, v27

    goto/16 :goto_3a

    :cond_1d
    move-object/from16 v15, v56

    :goto_16
    move v3, v2

    move-object/from16 v28, v6

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    :goto_17
    move/from16 v3, p2

    move-object v4, v0

    move-object/from16 v50, v6

    move v12, v7

    move-object v2, v13

    :goto_18
    move-object/from16 v10, v25

    :goto_19
    move/from16 v7, v32

    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    move/from16 v6, v39

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    :goto_1a
    const/16 v45, 0x0

    const/16 v48, 0x0

    goto/16 :goto_ed

    :catch_8
    move-exception v0

    goto/16 :goto_10

    :cond_1e
    move-object/from16 v15, v56

    if-ltz v2, :cond_30

    .line 243
    :try_start_1e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    const/16 v12, 0x15

    if-ge v3, v12, :cond_1f

    .line 244
    :try_start_1f
    aget-object v3, v11, v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    goto :goto_1b

    .line 246
    :cond_1f
    :try_start_20
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1b
    if-eqz v3, :cond_2f

    .line 251
    iget v12, v10, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    move-object/from16 v17, v11

    const/4 v11, 0x1

    if-le v12, v11, :cond_2a

    .line 252
    :try_start_21
    iget v11, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    and-int/lit8 v27, v11, 0x2

    if-nez v27, :cond_24

    if-eqz v19, :cond_20

    and-int/lit8 v27, v11, 0x1

    if-eqz v27, :cond_20

    move-object/from16 v28, v6

    .line 254
    :try_start_22
    iget v6, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v6, v6, v19

    iput v6, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v12, v12, v19

    .line 255
    iput v12, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_1c

    :catchall_9
    move-exception v0

    goto/16 :goto_22

    :catch_9
    move-exception v0

    goto/16 :goto_25

    :cond_20
    move-object/from16 v28, v6

    :goto_1c
    if-eqz v16, :cond_21

    and-int/lit8 v6, v11, 0x1

    if-eqz v6, :cond_21

    .line 258
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v6, v3, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    const/16 v16, 0x0

    .line 261
    :cond_21
    :try_start_23
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    move-object v12, v1

    move/from16 v27, v2

    const/4 v11, 0x1

    :try_start_24
    invoke-virtual {v6, v14, v3, v10, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v1

    const-wide/16 v29, 0x0

    cmp-long v3, v1, v29

    if-eqz v3, :cond_23

    .line 263
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_a
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-eqz v3, :cond_23

    move-object v6, v12

    .line 264
    :try_start_25
    iget-wide v11, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v29, v11, v4

    if-lez v29, :cond_22

    move-wide v4, v11

    :cond_22
    long-to-float v11, v4

    div-float v11, v11, v51

    div-float v11, v11, v51

    div-float v11, v11, v52

    .line 267
    invoke-interface {v3, v1, v2, v11}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    goto/16 :goto_28

    :cond_23
    move-object v6, v12

    goto/16 :goto_28

    :catchall_a
    move-exception v0

    move-object v6, v12

    goto/16 :goto_1f

    :catch_a
    move-exception v0

    move-object v6, v12

    goto/16 :goto_20

    :catchall_b
    move-exception v0

    goto/16 :goto_21

    :catch_b
    move-exception v0

    goto/16 :goto_24

    :cond_24
    move/from16 v27, v2

    move-object/from16 v28, v6

    const/4 v12, -0x5

    move-object v6, v1

    if-ne v14, v12, :cond_29

    .line 271
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 274
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v1, [B

    .line 275
    iget v11, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v1

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 276
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 280
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1d
    if-ltz v1, :cond_26

    const/4 v11, 0x3

    if-le v1, v11, :cond_26

    .line 282
    aget-byte v11, v2, v1

    if-ne v11, v3, :cond_25

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_25

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v2, v3

    if-nez v3, :cond_25

    add-int/lit8 v3, v1, -0x3

    aget-byte v11, v2, v3

    if-nez v11, :cond_25

    .line 283
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 284
    iget v11, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-wide/from16 v29, v4

    const/4 v12, 0x0

    .line 285
    invoke-virtual {v1, v2, v12, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    iget v4, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v4, v3

    invoke-virtual {v11, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    :cond_25
    move-wide/from16 v29, v4

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v4, v29

    const/4 v3, 0x1

    const/4 v12, -0x5

    goto :goto_1d

    :cond_26
    move-wide/from16 v29, v4

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 294
    :goto_1e
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v1, :cond_27

    if-eqz v11, :cond_27

    .line 296
    invoke-virtual {v2, v15, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v1, "csd-1"

    .line 297
    invoke-virtual {v2, v1, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 299
    :cond_27
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v14

    goto :goto_27

    .line 272
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    :catchall_c
    move-exception v0

    :goto_1f
    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v6

    goto :goto_23

    :catch_c
    move-exception v0

    :goto_20
    move-object v3, v0

    move-object v1, v6

    goto :goto_26

    :cond_29
    move-wide/from16 v29, v4

    goto :goto_27

    :catchall_d
    move-exception v0

    move-object/from16 v28, v6

    :goto_21
    move-object v6, v1

    :goto_22
    move/from16 v3, p2

    move-object v4, v0

    :goto_23
    move v12, v7

    move-object v2, v13

    move-object/from16 v10, v25

    goto/16 :goto_30

    :catch_d
    move-exception v0

    move-object/from16 v28, v6

    :goto_24
    move-object v6, v1

    :goto_25
    move-object v3, v0

    :goto_26
    move v10, v14

    move-object/from16 v14, v22

    move-object/from16 v2, v25

    goto/16 :goto_33

    :cond_2a
    move/from16 v27, v2

    move-wide/from16 v29, v4

    move-object/from16 v28, v6

    move-object v6, v1

    :goto_27
    move-wide/from16 v4, v29

    .line 302
    :goto_28
    :try_start_26
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_f
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    and-int/lit8 v1, v1, 0x4

    move-object v2, v6

    move/from16 v3, v27

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_29

    :cond_2b
    const/4 v1, 0x0

    :goto_29
    const/4 v6, 0x0

    .line 303
    :try_start_27
    invoke-virtual {v2, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v11, v17

    move/from16 v17, v1

    goto/16 :goto_f

    :goto_2a
    if-eq v3, v1, :cond_2c

    move-object v1, v2

    move-object/from16 v56, v15

    move/from16 v15, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    :goto_2b
    move-object/from16 v6, v28

    move/from16 v12, v32

    goto/16 :goto_a

    :cond_2c
    if-nez v18, :cond_2d

    .line 310
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move/from16 v1, v26

    int-to-float v3, v1

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v3, v6

    mul-float v3, v3, v51

    mul-float v3, v3, v51

    mul-float v3, v3, v51

    move-wide/from16 v26, v4

    float-to-long v3, v3

    move-object/from16 v5, v25

    .line 312
    :try_start_28
    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 313
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v3, v1, 0x1

    int-to-float v1, v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v4, v4, v52

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2e

    .line 319
    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v18, 0x1

    const/16 v21, 0x0

    goto :goto_2e

    :catchall_e
    move-exception v0

    :goto_2c
    move-object/from16 v5, v25

    goto/16 :goto_31

    :catch_e
    move-exception v0

    :goto_2d
    move-object/from16 v5, v25

    goto/16 :goto_32

    :cond_2d
    move/from16 v1, v26

    move-wide/from16 v26, v4

    move-object/from16 v5, v25

    move v3, v1

    :cond_2e
    :goto_2e
    move-object v1, v2

    move-object v2, v5

    move-object/from16 v56, v15

    move/from16 v15, v24

    move-wide/from16 v4, v26

    goto :goto_2b

    :catchall_f
    move-exception v0

    move-object v2, v6

    goto :goto_2c

    :catch_f
    move-exception v0

    move-object v2, v6

    goto :goto_2d

    :cond_2f
    move v3, v2

    move-object/from16 v28, v6

    move-object/from16 v5, v25

    move-object v2, v1

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_10
    move-exception v0

    move-object v2, v1

    move-object/from16 v28, v6

    move-object/from16 v5, v25

    move/from16 v3, p2

    move-object v4, v0

    :goto_2f
    move-object v10, v5

    move v12, v7

    move-object v2, v13

    :goto_30
    move-object/from16 v50, v28

    goto/16 :goto_19

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object/from16 v28, v6

    goto :goto_34

    :cond_30
    move v3, v2

    move-object/from16 v28, v6

    move-object/from16 v5, v25

    move-object v2, v1

    .line 240
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    :catchall_11
    move-exception v0

    :goto_31
    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v2

    goto :goto_2f

    :catch_11
    move-exception v0

    :goto_32
    move-object v3, v0

    move-object v1, v2

    move-object v2, v5

    move v10, v14

    move-object/from16 v14, v22

    :goto_33
    move-object/from16 v6, v28

    goto/16 :goto_3a

    :catchall_12
    move-exception v0

    move-object v2, v1

    move-object/from16 v28, v6

    move-object/from16 v5, v25

    goto :goto_35

    :catch_12
    move-exception v0

    move-object v2, v1

    move-object/from16 v28, v6

    move/from16 v32, v12

    :goto_34
    move-object/from16 v5, v25

    goto :goto_36

    :catchall_13
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move-object v2, v1

    :goto_35
    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v5

    move-object v2, v13

    goto :goto_37

    :catch_13
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move/from16 v32, v12

    move-object v2, v1

    :goto_36
    move-object v3, v0

    move-object v2, v5

    move v10, v14

    move-object/from16 v14, v22

    goto :goto_3a

    :catchall_14
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move-object v2, v1

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v5

    move-object v2, v13

    move/from16 v14, v21

    :goto_37
    move-object/from16 v50, v28

    :goto_38
    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    move/from16 v6, v39

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    goto :goto_3c

    :catch_14
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move/from16 v32, v12

    move-object/from16 v22, v14

    move-object v2, v1

    move-object v3, v0

    move-object v2, v5

    :goto_39
    move/from16 v10, v21

    :goto_3a
    move-object/from16 v11, v37

    goto/16 :goto_4b

    :catchall_15
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move-object v2, v1

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v5

    move-object v2, v13

    move-object/from16 v50, v28

    :goto_3b
    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    move/from16 v6, v39

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    const/4 v14, -0x5

    :goto_3c
    const/16 v45, 0x0

    const/16 v48, 0x0

    goto :goto_3e

    :catch_15
    move-exception v0

    move-object v5, v2

    move-object/from16 v28, v6

    move/from16 v32, v12

    move-object v2, v1

    move-object v3, v0

    move-object v2, v5

    :goto_3d
    move-object/from16 v11, v37

    goto/16 :goto_45

    :catchall_16
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v5

    move-object v2, v13

    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    move/from16 v6, v39

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    const/4 v14, -0x5

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    :goto_3e
    move/from16 v91, v12

    move v12, v7

    move/from16 v7, v91

    goto/16 :goto_ed

    :catch_16
    move-exception v0

    move-object v5, v2

    move/from16 v32, v12

    move-object v2, v1

    move-object v3, v0

    move-object v2, v5

    move-object/from16 v11, v37

    goto/16 :goto_44

    :catchall_17
    move-exception v0

    move-object v5, v2

    move/from16 v32, v37

    move-object v2, v1

    move-object/from16 v37, v11

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v5

    move v12, v7

    move-object v2, v13

    move/from16 v7, v32

    move/from16 v66, v36

    move-object/from16 v21, v37

    :goto_3f
    move/from16 v81, v38

    move/from16 v6, v39

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    goto :goto_42

    :catch_17
    move-exception v0

    move-object v5, v2

    move/from16 v32, v37

    move-object v2, v1

    move-object/from16 v37, v11

    move-object v3, v0

    move-object v2, v5

    goto :goto_44

    :catchall_18
    move-exception v0

    move-object v2, v1

    move/from16 v32, v37

    move-object/from16 v37, v11

    move/from16 v3, p2

    move-object v4, v0

    move v12, v7

    move-object v2, v13

    move/from16 v7, v32

    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    move/from16 v6, v39

    goto :goto_40

    :catch_18
    move-exception v0

    move-object v2, v1

    goto :goto_43

    :catchall_19
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    move/from16 v32, v37

    move-object/from16 v37, v11

    move/from16 v3, p2

    move-object v4, v0

    move v12, v7

    move-object v2, v13

    move/from16 v7, v32

    move/from16 v66, v36

    move-object/from16 v21, v37

    move/from16 v81, v38

    :goto_40
    move-object/from16 v46, v53

    move-object/from16 v11, v54

    :goto_41
    const/4 v10, 0x0

    :goto_42
    const/4 v14, -0x5

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    goto/16 :goto_ed

    :catch_19
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    :goto_43
    move/from16 v32, v37

    move-object/from16 v37, v11

    move-object v3, v0

    const/4 v2, 0x0

    :goto_44
    const/4 v6, 0x0

    :goto_45
    const/4 v10, -0x5

    const/4 v14, 0x0

    goto/16 :goto_4b

    :catchall_1a
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    move/from16 v32, v37

    move-object/from16 v37, v11

    move/from16 v3, p2

    move-object v4, v0

    move v12, v7

    move-object v2, v13

    move/from16 v7, v32

    move/from16 v66, v36

    move-object/from16 v21, v37

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    :goto_46
    const/4 v10, 0x0

    const/4 v14, -0x5

    goto/16 :goto_ec

    :catch_1a
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    move/from16 v32, v37

    move-object/from16 v37, v11

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x5

    goto :goto_4a

    :catchall_1b
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    move/from16 v3, p2

    move-object v4, v0

    move v12, v7

    move-object v2, v13

    move/from16 v66, v36

    move/from16 v7, v37

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    goto/16 :goto_eb

    :catch_1b
    move-exception v0

    move-object v2, v1

    move/from16 v39, v6

    move/from16 v32, v37

    move-object v3, v0

    goto :goto_49

    :catchall_1c
    move-exception v0

    move/from16 v39, v6

    :goto_47
    move/from16 v3, p2

    move-object v4, v0

    move v12, v7

    move-object v2, v13

    move/from16 v66, v36

    move/from16 v7, v37

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    goto/16 :goto_ea

    :catch_1c
    move-exception v0

    move/from16 v39, v6

    move/from16 v32, v37

    move-object v3, v0

    :goto_48
    const/4 v1, 0x0

    :goto_49
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x5

    const/4 v11, 0x0

    :goto_4a
    const/4 v14, 0x0

    const/16 v38, 0x0

    .line 328
    :goto_4b
    :try_start_29
    instance-of v4, v3, Ljava/lang/IllegalStateException;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_22

    move/from16 v12, p2

    if-eqz v4, :cond_31

    if-nez v12, :cond_31

    const/16 v45, 0x1

    goto :goto_4c

    :cond_31
    const/16 v45, 0x0

    .line 331
    :goto_4c
    :try_start_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    move/from16 v5, v39

    :try_start_2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " framerate: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_20

    move/from16 v9, v32

    :try_start_2c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " size: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1f

    move-object/from16 v15, v54

    :try_start_2d
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 332
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1e

    move/from16 v21, v10

    const/4 v10, 0x1

    :goto_4d
    if-eqz v6, :cond_32

    .line 337
    :try_start_2e
    invoke-virtual {v6}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v6, 0x0

    goto :goto_4e

    :catchall_1d
    move-exception v0

    move-object v4, v0

    move-object v10, v2

    move-object/from16 v50, v6

    move v3, v12

    move-object v2, v13

    move/from16 v14, v21

    move/from16 v66, v36

    move/from16 v81, v38

    move-object/from16 v46, v53

    const/16 v48, 0x0

    move v6, v5

    move v12, v7

    move v7, v9

    move-object/from16 v21, v11

    move-object v11, v15

    goto/16 :goto_ed

    :cond_32
    :goto_4e
    if-eqz v2, :cond_33

    .line 341
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/4 v2, 0x0

    :cond_33
    if-eqz v1, :cond_34

    .line 345
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 346
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    :cond_34
    if-eqz v14, :cond_35

    .line 350
    invoke-virtual {v14}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 352
    :cond_35
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1d

    move-object v14, v1

    move-object/from16 v18, v2

    move-object/from16 v65, v6

    move v9, v10

    move v3, v12

    move-object v2, v13

    move/from16 v10, v21

    move/from16 v66, v36

    move/from16 v48, v45

    move-object/from16 v46, v53

    const/4 v1, 0x0

    move v6, v5

    move-object/from16 v21, v11

    goto/16 :goto_e6

    :catchall_1e
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v6

    move v14, v10

    move-object/from16 v21, v11

    move v3, v12

    move-object v11, v15

    move/from16 v66, v36

    move/from16 v81, v38

    move-object/from16 v46, v53

    goto :goto_4f

    :catchall_1f
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v6

    move v14, v10

    move-object/from16 v21, v11

    move v3, v12

    move/from16 v66, v36

    move/from16 v81, v38

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    :goto_4f
    const/16 v48, 0x0

    move-object v10, v2

    move v6, v5

    move v12, v7

    move v7, v9

    goto :goto_52

    :catchall_20
    move-exception v0

    goto :goto_50

    :catchall_21
    move-exception v0

    move/from16 v5, v39

    :goto_50
    move-object v4, v0

    move-object/from16 v50, v6

    move v14, v10

    move-object/from16 v21, v11

    move v3, v12

    move/from16 v66, v36

    move/from16 v81, v38

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    const/16 v48, 0x0

    move-object v10, v2

    move v6, v5

    move v12, v7

    move-object v2, v13

    :goto_51
    move/from16 v7, v32

    goto/16 :goto_ed

    :catchall_22
    move-exception v0

    move/from16 v5, v39

    move/from16 v3, p2

    move-object v4, v0

    move-object/from16 v50, v6

    move v12, v7

    move v14, v10

    move-object/from16 v21, v11

    move/from16 v7, v32

    move/from16 v66, v36

    move/from16 v81, v38

    move-object/from16 v46, v53

    move-object/from16 v11, v54

    const/16 v45, 0x0

    const/16 v48, 0x0

    move-object v10, v2

    move v6, v5

    :goto_52
    move-object v2, v13

    goto/16 :goto_ed

    :cond_36
    move-object/from16 v5, p1

    move/from16 v12, p2

    move-wide/from16 v58, v1

    move-object/from16 v4, v21

    move-object/from16 v1, v26

    move/from16 v11, v34

    move/from16 v21, v37

    move-object/from16 v26, v54

    move-object/from16 v15, v56

    const/16 v32, 0x3

    .line 354
    :try_start_2f
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_58

    move/from16 v34, v8

    move-object/from16 v8, v35

    .line 355
    :try_start_30
    invoke-virtual {v2, v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 357
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_57

    const/4 v5, -0x1

    if-eq v6, v5, :cond_37

    if-nez v25, :cond_37

    .line 358
    :try_start_31
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v35, v9

    const/4 v9, 0x1

    invoke-static {v5, v9}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_23

    move-object/from16 v37, v8

    goto :goto_53

    :catchall_23
    move-exception v0

    move-object v4, v0

    move v3, v12

    move-object v2, v13

    move-object/from16 v11, v26

    move/from16 v8, v34

    move/from16 v66, v36

    move-object/from16 v46, v53

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v14, -0x5

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v81, 0x0

    move v12, v7

    move/from16 v7, v21

    const/16 v21, 0x0

    goto/16 :goto_ed

    :cond_37
    move-object/from16 v35, v9

    const/4 v9, 0x1

    move-object/from16 v37, v8

    const/4 v5, -0x1

    :goto_53
    const-string/jumbo v8, "mime"

    if-ltz v2, :cond_38

    .line 360
    :try_start_32
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v47, v5

    const-string/jumbo v5, "video/avc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_23

    if-nez v5, :cond_39

    const/4 v5, 0x1

    goto :goto_54

    :cond_38
    move/from16 v47, v5

    :cond_39
    const/4 v5, 0x0

    :goto_54
    if-nez v36, :cond_3c

    if-eqz v5, :cond_3a

    goto/16 :goto_56

    .line 885
    :cond_3a
    :try_start_33
    new-instance v1, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v1}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v11, v9}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 886
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_24

    const/4 v1, -0x1

    if-eq v6, v1, :cond_3b

    if-nez v25, :cond_3b

    move-wide/from16 v4, v58

    const/4 v14, 0x1

    goto :goto_55

    :cond_3b
    move v14, v9

    move-wide/from16 v4, v58

    :goto_55
    move-object/from16 v1, p0

    move-wide/from16 v58, v17

    move-wide/from16 v60, v19

    move-wide/from16 v62, v4

    move-object v4, v10

    move-object/from16 v15, p1

    move/from16 v17, v6

    move/from16 v11, v21

    move-wide/from16 v5, v58

    move v10, v7

    move-wide/from16 v7, v60

    move v15, v9

    move/from16 v45, v10

    move-wide/from16 v9, v62

    move v15, v11

    move-object/from16 v46, v53

    move-object/from16 v11, v46

    move-object/from16 v67, v26

    move/from16 v66, v36

    move v12, v14

    :try_start_34
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_25

    move/from16 v3, p2

    move-object v2, v13

    move/from16 v6, v17

    move/from16 v8, v34

    move/from16 v7, v45

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x5

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v38, 0x0

    const/16 v48, 0x0

    const/16 v65, 0x0

    goto/16 :goto_e6

    :catchall_24
    move-exception v0

    move/from16 v17, v6

    move/from16 v45, v7

    move/from16 v66, v36

    move-object/from16 v46, v53

    move/from16 v3, p2

    move-object v4, v0

    move-object v2, v13

    move/from16 v7, v21

    move-object/from16 v11, v26

    move/from16 v8, v34

    move/from16 v12, v45

    goto/16 :goto_ea

    :cond_3c
    :goto_56
    move-object/from16 v12, p1

    move/from16 v45, v7

    move-object v9, v15

    move-wide/from16 v60, v19

    move/from16 v15, v21

    move-object/from16 v67, v26

    move/from16 v66, v36

    move-object/from16 v46, v53

    move-wide/from16 v62, v58

    move-wide/from16 v58, v17

    move/from16 v17, v6

    if-ltz v2, :cond_b6

    const-wide/32 v53, -0x80000000

    const/16 v5, 0x3e8

    .line 379
    :try_start_35
    div-int v6, v5, v15
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_50
    .catchall {:try_start_35 .. :try_end_35} :catchall_4d

    mul-int/2addr v6, v5

    int-to-long v6, v6

    const/16 v5, 0x1e

    if-ge v15, v5, :cond_3d

    add-int/lit8 v5, v15, 0x5

    move-wide/from16 v68, v6

    const/16 v6, 0x3e8

    .line 382
    :try_start_36
    div-int v5, v6, v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1d
    .catchall {:try_start_36 .. :try_end_36} :catchall_25

    :goto_57
    mul-int/2addr v5, v6

    int-to-long v5, v5

    goto :goto_5a

    :catchall_25
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v2, v13

    move v7, v15

    move/from16 v6, v17

    :goto_58
    move/from16 v8, v34

    goto/16 :goto_d9

    :catch_1d
    move-exception v0

    move-object v1, v0

    move/from16 v27, v2

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v6, v17

    :goto_59
    move/from16 v28, v34

    goto/16 :goto_da

    :cond_3d
    move-wide/from16 v68, v6

    const/16 v6, 0x3e8

    add-int/lit8 v5, v15, 0x1

    .line 384
    :try_start_37
    div-int v5, v6, v5

    goto :goto_57

    :goto_5a
    move-wide/from16 v70, v5

    .line 387
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 388
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_50
    .catchall {:try_start_37 .. :try_end_37} :catchall_4d

    if-eqz v28, :cond_41

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpg-float v5, v52, v5

    if-gtz v5, :cond_3e

    const v5, 0x27ac40

    :goto_5b
    move v6, v5

    goto :goto_5c

    :cond_3e
    const v5, 0x459c4000    # 5000.0f

    cmpg-float v5, v52, v5

    if-gtz v5, :cond_3f

    const v5, 0x2191c0

    goto :goto_5b

    :cond_3f
    const v5, 0x17cdc0

    goto :goto_5b

    :goto_5c
    const v5, 0xe4e1c0

    move/from16 v17, v6

    move/from16 v6, v16

    if-lt v6, v5, :cond_40

    :try_start_38
    const-string v5, "OMX.google.h264.encoder"
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1d
    .catchall {:try_start_38 .. :try_end_38} :catchall_25

    move-object/from16 v16, v5

    move/from16 v5, v17

    goto :goto_5d

    :cond_40
    move/from16 v5, v17

    const/16 v16, 0x0

    :goto_5d
    const-wide/16 v49, 0x0

    goto :goto_5f

    :cond_41
    move/from16 v6, v16

    if-gtz v17, :cond_42

    const v5, 0xe1000

    goto :goto_5e

    :cond_42
    move/from16 v5, v17

    :goto_5e
    const/16 v16, 0x0

    :goto_5f
    if-lez v6, :cond_43

    .line 407
    :try_start_39
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1e
    .catchall {:try_start_39 .. :try_end_39} :catchall_26

    goto :goto_62

    :catchall_26
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move v6, v5

    :goto_60
    move-object v2, v13

    move v7, v15

    goto :goto_58

    :catch_1e
    move-exception v0

    move-object v1, v0

    move/from16 v27, v2

    move v6, v5

    :goto_61
    move-object v2, v13

    move/from16 v32, v15

    goto :goto_59

    :cond_43
    :goto_62
    move v6, v5

    const-wide/16 v17, 0x0

    cmp-long v5, v49, v17

    const-wide/16 v72, -0x1

    move-object/from16 v36, v8

    move-object/from16 v56, v9

    if-ltz v5, :cond_44

    move-wide/from16 v8, v72

    goto :goto_63

    :cond_44
    move-wide/from16 v8, v49

    :goto_63
    cmp-long v5, v8, v17

    if-ltz v5, :cond_45

    .line 416
    :try_start_3a
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v49, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide/from16 v74, v58

    move-wide/from16 v58, v8

    :goto_64
    const-wide/16 v8, 0x0

    goto :goto_65

    :catchall_27
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    goto :goto_60

    :catch_1f
    move-exception v0

    move-object v1, v0

    move/from16 v27, v2

    goto :goto_61

    :cond_45
    move-object/from16 v49, v10

    const-wide/16 v17, 0x0

    move-wide/from16 v91, v8

    move-wide/from16 v8, v58

    move-wide/from16 v58, v91

    cmp-long v5, v8, v17

    if-lez v5, :cond_46

    .line 418
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1f
    .catchall {:try_start_3a .. :try_end_3a} :catchall_27

    move-wide/from16 v74, v8

    goto :goto_64

    .line 420
    :cond_46
    :try_start_3b
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v74, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_4f
    .catchall {:try_start_3b .. :try_end_3b} :catchall_4c

    :goto_65
    if-eqz v1, :cond_49

    .line 425
    :try_start_3c
    iget-object v5, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_49

    const/16 v5, 0x5a

    move/from16 v10, v27

    if-eq v10, v5, :cond_48

    const/16 v5, 0x10e

    if-ne v10, v5, :cond_47

    goto :goto_66

    .line 430
    :cond_47
    iget v5, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 431
    iget v8, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_67

    .line 427
    :cond_48
    :goto_66
    iget v5, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 428
    iget v8, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1f
    .catchall {:try_start_3c .. :try_end_3c} :catchall_27

    :goto_67
    move v9, v5

    goto :goto_68

    :cond_49
    move/from16 v10, v27

    move/from16 v8, v34

    move/from16 v9, v45

    :goto_68
    if-eqz v16, :cond_4a

    .line 440
    :try_start_3d
    invoke-static/range {v16 .. v16}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_20
    .catchall {:try_start_3d .. :try_end_3d} :catchall_27

    goto :goto_69

    :catch_20
    :cond_4a
    const/4 v5, 0x0

    :goto_69
    if-nez v5, :cond_4b

    .line 447
    :try_start_3e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_21
    .catchall {:try_start_3e .. :try_end_3e} :catchall_28

    goto :goto_6b

    :catchall_28
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v5

    move-object v2, v13

    :goto_6a
    move v7, v15

    move/from16 v8, v34

    goto/16 :goto_d5

    :catch_21
    move-exception v0

    move-object v1, v0

    move/from16 v27, v2

    move-object v14, v5

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v28, v34

    goto/16 :goto_d7

    .line 450
    :cond_4b
    :goto_6b
    :try_start_3f
    sget-boolean v16, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_4e
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4b

    if-eqz v16, :cond_4c

    move/from16 v50, v2

    .line 451
    :try_start_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create encoder with w = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bitrate = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_22
    .catchall {:try_start_40 .. :try_end_40} :catchall_28

    goto :goto_6d

    :catch_22
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    move-object v2, v13

    :goto_6c
    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    goto/16 :goto_d7

    :cond_4c
    move/from16 v50, v2

    .line 453
    :goto_6d
    :try_start_41
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v9, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v12, "color-format"

    move-object/from16 v76, v3

    const v3, 0x7f000789

    .line 454
    invoke-virtual {v2, v12, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    .line 455
    invoke-virtual {v2, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_4d
    .catchall {:try_start_41 .. :try_end_41} :catchall_4b

    if-eqz v28, :cond_4d

    .line 456
    :try_start_42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v3, v12, :cond_4d

    const-string v3, "bitrate-mode"

    const/4 v12, 0x2

    .line 458
    invoke-virtual {v2, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_22
    .catchall {:try_start_42 .. :try_end_42} :catchall_28

    :cond_4d
    :try_start_43
    const-string/jumbo v3, "max-bitrate"

    .line 460
    invoke-virtual {v2, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    .line 461
    invoke-virtual {v2, v3, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    const/4 v12, 0x1

    .line 462
    invoke-virtual {v2, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 466
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_4d
    .catchall {:try_start_43 .. :try_end_43} :catchall_4b

    const/16 v12, 0x18

    if-lt v3, v12, :cond_53

    :try_start_44
    const-string v12, "color-transfer"

    .line 467
    invoke-virtual {v7, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_23
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    if-eqz v12, :cond_4e

    :try_start_45
    const-string v12, "color-transfer"

    .line 468
    invoke-virtual {v7, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_22
    .catchall {:try_start_45 .. :try_end_45} :catchall_28

    move/from16 v77, v11

    goto :goto_6e

    :cond_4e
    move/from16 v77, v11

    const/4 v12, 0x0

    :goto_6e
    :try_start_46
    const-string v11, "color-standard"

    .line 470
    invoke-virtual {v7, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_23
    .catchall {:try_start_46 .. :try_end_46} :catchall_29

    if-eqz v11, :cond_4f

    :try_start_47
    const-string v11, "color-standard"

    .line 471
    invoke-virtual {v7, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_22
    .catchall {:try_start_47 .. :try_end_47} :catchall_28

    goto :goto_6f

    :cond_4f
    const/4 v11, 0x0

    :goto_6f
    :try_start_48
    const-string v13, "color-range"

    .line 473
    invoke-virtual {v7, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_50

    const-string v13, "color-range"

    .line 474
    invoke-virtual {v7, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    :cond_50
    const/4 v13, 0x6

    if-eq v12, v13, :cond_51

    const/4 v13, 0x7

    if-ne v12, v13, :cond_52

    :cond_51
    const/4 v13, 0x6

    if-ne v11, v13, :cond_52

    move v13, v11

    const/4 v11, 0x1

    goto :goto_70

    :cond_52
    move v13, v11

    const/4 v11, 0x0

    goto :goto_70

    :catchall_29
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v5

    goto/16 :goto_6a

    :catch_23
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object v14, v5

    goto/16 :goto_6c

    :cond_53
    move/from16 v77, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_70
    move-object/from16 v78, v7

    const/16 v7, 0x17

    if-ge v3, v7, :cond_55

    .line 481
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v79, v8

    const/16 v8, 0x1e0

    if-gt v7, v8, :cond_56

    if-nez v28, :cond_56

    const v7, 0xe1000

    if-le v6, v7, :cond_54

    move v6, v7

    :cond_54
    const-string v7, "bitrate"

    .line 485
    invoke-virtual {v2, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_23
    .catchall {:try_start_48 .. :try_end_48} :catchall_29

    goto :goto_71

    :cond_55
    move/from16 v79, v8

    :cond_56
    :goto_71
    move/from16 v80, v6

    .line 488
    :try_start_49
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_4c
    .catchall {:try_start_49 .. :try_end_49} :catchall_4a

    :try_start_4a
    const-string v6, "c2.qti.avc.encoder"

    .line 489
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v81
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_4b
    .catchall {:try_start_4a .. :try_end_4a} :catchall_49

    .line 490
    :try_start_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selected encoder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 491
    invoke-virtual {v5, v2, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 492
    new-instance v6, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_4a
    .catchall {:try_start_4b .. :try_end_4b} :catchall_48

    .line 493
    :try_start_4c
    invoke-virtual {v6}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 494
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 496
    new-instance v7, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_49
    .catchall {:try_start_4c .. :try_end_4c} :catchall_47

    const/16 v18, 0x0

    move-object/from16 v82, v5

    int-to-float v5, v15

    move/from16 v28, v5

    const/16 v29, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v24

    move-object/from16 v19, v4

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v1

    move/from16 v23, v45

    move/from16 v24, v34

    move/from16 v25, v14

    move/from16 v26, v40

    move/from16 v27, v10

    move-object/from16 v32, v39

    :try_start_4d
    invoke-direct/range {v16 .. v33}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_48
    .catchall {:try_start_4d .. :try_end_4d} :catchall_46

    if-nez v39, :cond_58

    .line 497
    :try_start_4e
    invoke-virtual {v7}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v1

    if-eqz v1, :cond_58

    if-eqz v11, :cond_58

    .line 498
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    .line 499
    iput v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 500
    iput v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_57

    const-string v4, "color-transfer"

    const/4 v10, 0x3

    .line 503
    invoke-virtual {v2, v4, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_24
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2a

    goto :goto_72

    :cond_57
    const/4 v10, 0x3

    goto :goto_72

    :catchall_2a
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v6

    move-object/from16 v50, v7

    move-object/from16 v21, v8

    move v7, v15

    move/from16 v8, v34

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    move-object/from16 v1, v82

    const/4 v14, -0x5

    goto/16 :goto_1a

    :catch_24
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    move/from16 v6, v80

    move-object/from16 v14, v82

    const/4 v4, 0x0

    const/4 v10, -0x5

    const/16 v58, 0x0

    move-object/from16 v50, v7

    goto/16 :goto_dd

    :cond_58
    const/4 v10, 0x3

    move-object/from16 v1, v39

    :goto_72
    const/16 v2, 0x18

    if-lt v3, v2, :cond_59

    if-eqz v1, :cond_59

    .line 506
    :try_start_4f
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v7}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_26
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2c

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    move v4, v14

    move/from16 v11, v47

    move-object/from16 v12, v82

    move/from16 v5, v40

    move-object v13, v6

    move-wide/from16 v16, v68

    move/from16 v6, v45

    move-object/from16 v18, v13

    move/from16 v32, v15

    move-object/from16 v10, v78

    const/4 v15, 0x0

    move-object v13, v7

    move/from16 v7, v34

    move-object/from16 v21, v8

    move-object/from16 v87, v36

    move-object/from16 v83, v37

    move-wide/from16 v19, v58

    move-wide/from16 v84, v74

    move/from16 v86, v79

    const-wide/16 v22, 0x0

    move v8, v2

    move/from16 v88, v9

    move-object/from16 v90, v35

    move/from16 v2, v40

    move-object/from16 v89, v56

    move-object v9, v1

    .line 508
    :try_start_50
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    move v4, v14

    move v5, v2

    move/from16 v6, v45

    move/from16 v7, v34

    move-object v2, v9

    move-object v9, v1

    .line 509
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 507
    invoke-virtual {v13, v2, v1, v4}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_25
    .catchall {:try_start_50 .. :try_end_50} :catchall_2b

    move-object/from16 v2, p0

    move/from16 v1, v34

    goto/16 :goto_7d

    :catchall_2b
    move-exception v0

    goto :goto_73

    :catch_25
    move-exception v0

    goto :goto_74

    :catchall_2c
    move-exception v0

    move-object/from16 v18, v6

    move-object v13, v7

    move-object/from16 v21, v8

    move/from16 v32, v15

    move-object/from16 v12, v82

    const/4 v15, 0x0

    :goto_73
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v12

    move-object/from16 v50, v13

    move-object/from16 v48, v15

    move-object/from16 v10, v18

    move/from16 v7, v32

    move/from16 v8, v34

    goto/16 :goto_77

    :catch_26
    move-exception v0

    move-object/from16 v18, v6

    move-object v13, v7

    move-object/from16 v21, v8

    move/from16 v32, v15

    move-object/from16 v12, v82

    const/4 v15, 0x0

    :goto_74
    move-object/from16 v2, p0

    move-object v1, v0

    move-object v14, v12

    move-object v4, v15

    move-object/from16 v58, v4

    move/from16 v28, v34

    move/from16 v27, v50

    move/from16 v6, v80

    const/4 v10, -0x5

    goto/16 :goto_7b

    :cond_59
    move-object/from16 v18, v6

    move-object v13, v7

    move-object/from16 v21, v8

    move/from16 v88, v9

    move/from16 v32, v15

    move-object/from16 v90, v35

    move-object/from16 v87, v36

    move-object/from16 v83, v37

    move/from16 v2, v40

    move/from16 v11, v47

    move-object/from16 v89, v56

    move-wide/from16 v19, v58

    move-wide/from16 v16, v68

    move-wide/from16 v84, v74

    move-object/from16 v10, v78

    move/from16 v86, v79

    move-object/from16 v12, v82

    const/4 v15, 0x0

    if-nez v38, :cond_5c

    move/from16 v1, v34

    .line 512
    :try_start_51
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f666666    # 0.9f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5d

    const/4 v8, 0x1

    if-eqz v55, :cond_5a

    const/4 v9, 0x0

    goto :goto_75

    :cond_5a
    const/4 v9, 0x3

    :goto_75
    move v4, v14

    move/from16 v22, v55

    move v5, v2

    move/from16 v6, v45

    move v7, v1

    .line 514
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v22, :cond_5b

    const/16 v22, 0x0

    goto :goto_76

    :cond_5b
    const/16 v22, 0x3

    :goto_76
    move v4, v14

    move v5, v2

    move/from16 v6, v45

    move v7, v1

    move-object v2, v9

    move/from16 v9, v22

    .line 515
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 513
    invoke-virtual {v13, v2, v4, v5}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_27
    .catchall {:try_start_51 .. :try_end_51} :catchall_2d

    goto :goto_7c

    :catchall_2d
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v0

    move v8, v1

    move-object v1, v12

    move-object/from16 v50, v13

    move-object/from16 v48, v15

    move-object/from16 v10, v18

    move/from16 v7, v32

    :goto_77
    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v14, -0x5

    :goto_78
    const/16 v45, 0x0

    goto/16 :goto_ed

    :catch_27
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v28, v1

    move-object v14, v12

    move-object v4, v15

    move-object/from16 v58, v4

    :goto_79
    move/from16 v27, v50

    move/from16 v6, v80

    const/4 v10, -0x5

    :goto_7a
    move-object v1, v0

    :goto_7b
    move-object/from16 v50, v13

    goto/16 :goto_dd

    :cond_5c
    move/from16 v1, v34

    :cond_5d
    :goto_7c
    move-object/from16 v2, p0

    .line 519
    :goto_7d
    :try_start_52
    invoke-direct {v2, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_47
    .catchall {:try_start_52 .. :try_end_52} :catchall_45

    .line 520
    :try_start_53
    invoke-virtual {v13}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v10, v5, v15, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 521
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_46
    .catchall {:try_start_53 .. :try_end_53} :catchall_44

    const/16 v5, 0x15

    if-ge v3, v5, :cond_5e

    .line 527
    :try_start_54
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 528
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_28
    .catchall {:try_start_54 .. :try_end_54} :catchall_2e

    goto :goto_81

    :catchall_2e
    move-exception v0

    :goto_7e
    move/from16 v3, p2

    move v8, v1

    move-object/from16 v48, v4

    move-object v1, v12

    move-object/from16 v50, v13

    move-object/from16 v10, v18

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v14, -0x5

    :goto_7f
    const/16 v45, 0x0

    :goto_80
    move-object v4, v0

    goto/16 :goto_ed

    :catch_28
    move-exception v0

    move/from16 v28, v1

    move-object v14, v12

    move-object/from16 v58, v15

    goto :goto_79

    :cond_5e
    move-object v3, v15

    move-object v10, v3

    .line 532
    :goto_81
    :try_start_55
    new-instance v5, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v5}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move-object/from16 v7, v90

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v8, v76

    move/from16 v7, v77

    invoke-virtual {v5, v8, v7, v6}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_46
    .catchall {:try_start_55 .. :try_end_55} :catchall_44

    if-ltz v11, :cond_69

    .line 534
    :try_start_56
    iget-object v5, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2b
    .catchall {:try_start_56 .. :try_end_56} :catchall_2f

    move-object/from16 v7, p1

    .line 535
    :try_start_57
    iget-object v6, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2a
    .catchall {:try_start_57 .. :try_end_57} :catchall_2e

    if-eqz v6, :cond_5f

    move-object/from16 v6, v87

    :try_start_58
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_28
    .catchall {:try_start_58 .. :try_end_58} :catchall_2e

    if-nez v8, :cond_60

    goto :goto_82

    :cond_5f
    move-object/from16 v6, v87

    :goto_82
    :try_start_59
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/mpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    :cond_60
    const/4 v9, 0x1

    goto :goto_83

    :cond_61
    const/4 v9, 0x0

    .line 537
    :goto_83
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "audio/unknown"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v11, -0x1

    :cond_62
    if-ltz v11, :cond_68

    if-eqz v9, :cond_65

    .line 543
    iget-object v6, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 544
    iget-object v8, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2a
    .catchall {:try_start_59 .. :try_end_59} :catchall_2e

    :try_start_5a
    const-string/jumbo v8, "max-input-size"

    .line 546
    invoke-virtual {v5, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_29
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2e

    goto :goto_84

    :catch_29
    move-exception v0

    move-object v5, v0

    .line 548
    :try_start_5b
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_84
    if-gtz v5, :cond_63

    const/high16 v5, 0x10000

    .line 553
    :cond_63
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move/from16 v22, v5

    move v14, v6

    move-object/from16 v24, v8

    move/from16 v23, v9

    move-wide/from16 v5, v84

    const-wide/16 v8, 0x0

    cmp-long v25, v5, v8

    if-lez v25, :cond_64

    .line 556
    iget-object v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v6, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v25, v3

    move v9, v14

    goto :goto_85

    .line 558
    :cond_64
    iget-object v8, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v25, v3

    move v9, v14

    const/4 v3, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual {v8, v14, v15, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_85
    move v3, v9

    const/4 v8, 0x0

    goto :goto_87

    :cond_65
    move-object/from16 v25, v3

    move/from16 v23, v9

    move-wide/from16 v5, v84

    .line 561
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 562
    new-instance v8, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    move-object/from16 v9, v83

    invoke-direct {v8, v9, v11}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;I)V

    move-wide/from16 v14, v60

    const-wide/16 v26, 0x0

    cmp-long v9, v14, v26

    if-lez v9, :cond_66

    .line 564
    invoke-virtual {v8, v14, v15}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    :cond_66
    cmp-long v9, v5, v26

    if-lez v9, :cond_67

    .line 567
    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    .line 569
    :cond_67
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v8, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 572
    new-instance v8, Lorg/telegram/messenger/video/AudioRecoder;

    move-wide/from16 v60, v14

    move-wide/from16 v14, v62

    invoke-direct {v8, v3, v14, v15}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2a
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2e

    .line 573
    :try_start_5c
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v9, v8, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v14, 0x1

    invoke-virtual {v3, v9, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2e

    goto :goto_86

    :cond_68
    move-object/from16 v25, v3

    move/from16 v23, v9

    move-wide/from16 v5, v84

    const/4 v3, -0x5

    const/4 v8, 0x0

    :goto_86
    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_87
    move/from16 v9, v23

    goto :goto_8a

    :catch_2a
    move-exception v0

    goto :goto_88

    :catchall_2f
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_7e

    :catch_2b
    move-exception v0

    move-object/from16 v7, p1

    :goto_88
    move/from16 v28, v1

    move-object v14, v12

    move/from16 v27, v50

    move/from16 v6, v80

    const/4 v10, -0x5

    const/16 v58, 0x0

    goto/16 :goto_7a

    :cond_69
    move-object/from16 v7, p1

    move-object/from16 v25, v3

    move-wide/from16 v14, v62

    move-wide/from16 v5, v84

    .line 576
    :try_start_5d
    iget-object v3, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_46
    .catchall {:try_start_5d .. :try_end_5d} :catchall_44

    if-nez v3, :cond_6a

    .line 578
    :try_start_5e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 579
    new-instance v8, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v8, v14, v15}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 580
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v8, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 583
    new-instance v8, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v8, v3, v14, v15}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2a
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2e

    .line 584
    :try_start_5f
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v9, v8, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v14, 0x1

    invoke-virtual {v3, v9, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_2c
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2e

    const/4 v9, 0x0

    goto :goto_89

    :catch_2c
    move-exception v0

    move/from16 v28, v1

    move-object/from16 v58, v8

    move-object v14, v12

    goto/16 :goto_79

    :cond_6a
    const/4 v3, -0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_89
    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_8a
    if-nez v8, :cond_6b

    const/4 v14, 0x1

    goto :goto_8b

    :cond_6b
    const/4 v14, 0x0

    .line 591
    :goto_8b
    :try_start_60
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_45
    .catchall {:try_start_60 .. :try_end_60} :catchall_44

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-wide/from16 v43, v72

    move-wide/from16 v55, v43

    const/4 v15, 0x0

    const/16 v29, 0x1

    const-wide/16 v30, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x5

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v91, v22

    move/from16 v22, v14

    move/from16 v14, v91

    :goto_8c
    if-eqz v35, :cond_6d

    if-nez v9, :cond_6c

    if-nez v22, :cond_6c

    goto :goto_8d

    :cond_6c
    move/from16 v3, p2

    move-object v10, v4

    move-object/from16 v58, v8

    move-object v14, v12

    move/from16 v7, v32

    move/from16 v12, v45

    move/from16 v27, v50

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v9, 0x0

    const/16 v48, 0x0

    move v8, v1

    goto/16 :goto_df

    .line 595
    :cond_6d
    :goto_8d
    :try_start_61
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_44
    .catchall {:try_start_61 .. :try_end_61} :catchall_43

    if-eqz v8, :cond_6e

    .line 598
    :try_start_62
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v8, v7, v3}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v7
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2d
    .catchall {:try_start_62 .. :try_end_62} :catchall_30

    goto :goto_8f

    :catchall_30
    move-exception v0

    move/from16 v3, p2

    move v8, v1

    move-object/from16 v48, v4

    move-object v1, v12

    move-object/from16 v50, v13

    move-object/from16 v10, v18

    move/from16 v7, v32

    move/from16 v14, v36

    :goto_8e
    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto/16 :goto_7f

    :catch_2d
    move-exception v0

    move/from16 v28, v1

    move-object/from16 v58, v8

    move-object v14, v12

    move/from16 v10, v36

    move/from16 v27, v50

    move/from16 v6, v80

    goto/16 :goto_7a

    :cond_6e
    move/from16 v7, v22

    :goto_8f
    if-nez v15, :cond_7d

    move/from16 v47, v7

    .line 603
    :try_start_63
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_2f
    .catchall {:try_start_63 .. :try_end_63} :catchall_32

    move-object/from16 v58, v8

    move/from16 v8, v50

    if-ne v7, v8, :cond_72

    move-object/from16 v82, v12

    move-object/from16 v50, v13

    const-wide/16 v12, 0x9c4

    .line 605
    :try_start_64
    invoke-virtual {v4, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_71

    .line 608
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_6f

    .line 609
    aget-object v12, v10, v7

    goto :goto_90

    .line 611
    :cond_6f
    invoke-virtual {v4, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 613
    :goto_90
    iget-object v13, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v59, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v12, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v25

    if-gez v25, :cond_70

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v4

    move/from16 v23, v7

    .line 615
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v15, 0x1

    goto :goto_91

    :cond_70
    const/16 v24, 0x0

    .line 618
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v22, v4

    move/from16 v23, v7

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 619
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_91

    :cond_71
    move-object/from16 v59, v10

    :goto_91
    move/from16 v62, v9

    move v12, v11

    move-object/from16 v13, v49

    const/4 v9, 0x0

    move/from16 v49, v3

    goto/16 :goto_97

    :catchall_31
    move-exception v0

    goto/16 :goto_98

    :catch_2e
    move-exception v0

    goto/16 :goto_99

    :cond_72
    move-object/from16 v59, v10

    move-object/from16 v82, v12

    move-object/from16 v50, v13

    if-eqz v9, :cond_7b

    const/4 v10, -0x1

    if-eq v11, v10, :cond_7a

    if-ne v7, v11, :cond_7b

    .line 623
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v7, v10, :cond_73

    .line 624
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v12

    move/from16 v62, v9

    int-to-long v9, v14

    cmp-long v9, v12, v9

    if-lez v9, :cond_74

    const-wide/16 v9, 0x400

    add-long/2addr v12, v9

    long-to-int v14, v12

    .line 627
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v40

    goto :goto_92

    :cond_73
    move/from16 v62, v9

    :cond_74
    :goto_92
    move-object/from16 v9, v40

    .line 630
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    move-object/from16 v13, v49

    iput v10, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v10, 0x15

    if-ge v7, v10, :cond_75

    .line 632
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 633
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 635
    :cond_75
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v7, :cond_76

    .line 636
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move v12, v11

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 637
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_93

    :cond_76
    move v12, v11

    const/4 v7, 0x0

    .line 639
    iput v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v15, 0x1

    .line 642
    :goto_93
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_79

    const-wide/16 v10, 0x0

    cmp-long v7, v60, v10

    if-ltz v7, :cond_77

    iget-wide v10, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, v10, v60

    if-gez v7, :cond_79

    :cond_77
    const/4 v7, 0x0

    .line 643
    iput v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 644
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 645
    iget-object v10, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v10, v3, v9, v13, v7}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v10

    const-wide/16 v22, 0x0

    cmp-long v7, v10, v22

    if-eqz v7, :cond_79

    .line 647
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v7, :cond_79

    move/from16 v22, v14

    move/from16 v23, v15

    .line 648
    iget-wide v14, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v24, v14, v5

    cmp-long v24, v24, v30

    if-lez v24, :cond_78

    sub-long v30, v14, v5

    :cond_78
    move-wide/from16 v14, v30

    move/from16 v49, v3

    long-to-float v3, v14

    div-float v3, v3, v51

    div-float v3, v3, v52

    .line 651
    invoke-interface {v7, v10, v11, v3}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v30, v14

    goto :goto_94

    :cond_79
    move/from16 v49, v3

    move/from16 v22, v14

    move/from16 v23, v15

    :goto_94
    move-object/from16 v40, v9

    move/from16 v14, v22

    move/from16 v15, v23

    goto :goto_96

    :cond_7a
    move/from16 v62, v9

    move v12, v11

    move-object/from16 v13, v49

    move/from16 v49, v3

    move v3, v10

    goto :goto_95

    :cond_7b
    move/from16 v62, v9

    move v12, v11

    move-object/from16 v13, v49

    move/from16 v49, v3

    const/4 v3, -0x1

    :goto_95
    if-ne v7, v3, :cond_7c

    const/4 v9, 0x1

    goto :goto_97

    :cond_7c
    :goto_96
    const/4 v9, 0x0

    :goto_97
    if-eqz v9, :cond_7e

    const-wide/16 v9, 0x9c4

    .line 659
    invoke-virtual {v4, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v23

    if-ltz v23, :cond_7e

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v4

    .line 661
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_2e
    .catchall {:try_start_64 .. :try_end_64} :catchall_31

    const/4 v9, 0x1

    goto :goto_9a

    :catchall_32
    move-exception v0

    move-object/from16 v82, v12

    move-object/from16 v50, v13

    :goto_98
    move/from16 v3, p2

    move v8, v1

    move-object/from16 v48, v4

    move-object/from16 v10, v18

    move/from16 v7, v32

    move/from16 v14, v36

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    move-object/from16 v1, v82

    goto/16 :goto_7f

    :catch_2f
    move-exception v0

    move-object/from16 v58, v8

    move-object/from16 v82, v12

    move/from16 v8, v50

    move-object/from16 v50, v13

    :goto_99
    move/from16 v28, v1

    move/from16 v27, v8

    move/from16 v10, v36

    move/from16 v6, v80

    move-object/from16 v14, v82

    goto/16 :goto_cf

    :cond_7d
    move/from16 v47, v7

    move-object/from16 v58, v8

    move/from16 v62, v9

    move-object/from16 v59, v10

    move-object/from16 v82, v12

    move/from16 v8, v50

    move v12, v11

    move-object/from16 v50, v13

    move-object/from16 v13, v49

    move/from16 v49, v3

    :cond_7e
    move v9, v15

    :goto_9a
    xor-int/lit8 v3, v37, 0x1

    move v10, v3

    move v15, v9

    move v7, v12

    move/from16 v3, v36

    move-wide/from16 v11, v53

    const/4 v9, 0x1

    :goto_9b
    if-nez v10, :cond_80

    if-eqz v9, :cond_7f

    goto :goto_9c

    :cond_7f
    move/from16 v36, v3

    move-wide/from16 v53, v11

    move/from16 v22, v47

    move/from16 v3, v49

    move-object/from16 v10, v59

    move/from16 v9, v62

    move-object/from16 v12, v82

    move v11, v7

    move-object/from16 v49, v13

    move-object/from16 v13, v50

    move-object/from16 v7, p1

    move/from16 v50, v8

    move-object/from16 v8, v58

    goto/16 :goto_8c

    .line 670
    :cond_80
    :goto_9c
    :try_start_65
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_43
    .catchall {:try_start_65 .. :try_end_65} :catchall_42

    move/from16 v22, v7

    move/from16 v7, p2

    if-eqz v7, :cond_81

    const-wide/16 v23, 0x55f0

    move/from16 v25, v14

    move-object/from16 v14, v82

    move-wide/from16 v91, v23

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v9, v91

    goto :goto_9d

    :cond_81
    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v14

    move-object/from16 v14, v82

    const-wide/16 v9, 0x9c4

    .line 671
    :goto_9d
    :try_start_66
    invoke-virtual {v14, v13, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_42
    .catchall {:try_start_66 .. :try_end_66} :catchall_41

    const/4 v10, -0x1

    if-ne v9, v10, :cond_82

    move/from16 v28, v1

    move/from16 v27, v8

    move v7, v10

    move/from16 v26, v15

    move/from16 v1, v35

    move/from16 v8, v88

    move-object/from16 v15, v89

    const/16 v23, 0x0

    :goto_9e
    move-wide/from16 v35, v11

    move/from16 v11, v86

    goto/16 :goto_ae

    :cond_82
    const/4 v10, -0x3

    if-ne v9, v10, :cond_84

    .line 675
    :try_start_67
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v26, v15

    const/16 v15, 0x15

    if-ge v10, v15, :cond_83

    .line 676
    invoke-virtual {v14}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v39
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_30
    .catchall {:try_start_67 .. :try_end_67} :catchall_33

    :cond_83
    move/from16 v28, v1

    move/from16 v27, v8

    move/from16 v1, v35

    move/from16 v8, v88

    move-object/from16 v15, v89

    :goto_9f
    const/4 v7, -0x1

    goto :goto_9e

    :catchall_33
    move-exception v0

    move v8, v1

    move-object/from16 v48, v4

    move-object v1, v14

    move-object/from16 v10, v18

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/16 v45, 0x0

    move-object v4, v0

    move v14, v3

    move v3, v7

    goto/16 :goto_51

    :catch_30
    move-exception v0

    move/from16 v28, v1

    move v10, v3

    move/from16 v27, v8

    goto/16 :goto_cd

    :cond_84
    move/from16 v26, v15

    const/4 v10, -0x2

    if-ne v9, v10, :cond_8a

    .line 679
    :try_start_68
    invoke-virtual {v14}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    const/4 v15, -0x5

    if-ne v3, v15, :cond_89

    if-eqz v10, :cond_89

    .line 681
    iget-object v15, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_33
    .catchall {:try_start_68 .. :try_end_68} :catchall_33

    move/from16 v27, v8

    const/4 v8, 0x0

    :try_start_69
    invoke-virtual {v15, v10, v8}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_34
    .catchall {:try_start_69 .. :try_end_69} :catchall_33

    move-object/from16 v8, v57

    .line 682
    :try_start_6a
    invoke-virtual {v10, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_87

    invoke-virtual {v10, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_32
    .catchall {:try_start_6a .. :try_end_6a} :catchall_35

    move/from16 v28, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_88

    move-object/from16 v15, v89

    .line 683
    :try_start_6b
    invoke-virtual {v10, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v57, v8

    const-string v8, "csd-1"

    .line 684
    invoke-virtual {v10, v8}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v8

    if-nez v3, :cond_85

    const/4 v10, 0x0

    goto :goto_a0

    .line 685
    :cond_85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    :goto_a0
    if-nez v8, :cond_86

    const/4 v3, 0x0

    goto :goto_a1

    :cond_86
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_31
    .catchall {:try_start_6b .. :try_end_6b} :catchall_34

    :goto_a1
    add-int/2addr v10, v3

    move/from16 v38, v10

    goto :goto_a2

    :catchall_34
    move-exception v0

    goto :goto_a3

    :catch_31
    move-exception v0

    goto :goto_a4

    :cond_87
    move/from16 v28, v3

    :cond_88
    move-object/from16 v57, v8

    move-object/from16 v15, v89

    :goto_a2
    move/from16 v3, v28

    goto :goto_a5

    :catchall_35
    move-exception v0

    move/from16 v28, v3

    :goto_a3
    move v8, v1

    move-object/from16 v48, v4

    move v3, v7

    move-object v1, v14

    move-object/from16 v10, v18

    move/from16 v14, v28

    move/from16 v7, v32

    goto/16 :goto_8e

    :catch_32
    move-exception v0

    move/from16 v28, v3

    :goto_a4
    move/from16 v10, v28

    move/from16 v6, v80

    move/from16 v28, v1

    goto/16 :goto_cf

    :cond_89
    move/from16 v27, v8

    move-object/from16 v15, v89

    :goto_a5
    move/from16 v28, v1

    move/from16 v1, v35

    move/from16 v8, v88

    goto/16 :goto_9f

    :catch_33
    move-exception v0

    move/from16 v27, v8

    :goto_a6
    move/from16 v28, v1

    move v10, v3

    goto/16 :goto_cd

    :cond_8a
    move/from16 v27, v8

    move-object/from16 v15, v89

    if-ltz v9, :cond_b2

    .line 692
    :try_start_6c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_40
    .catchall {:try_start_6c .. :try_end_6c} :catchall_41

    const/16 v10, 0x15

    if-ge v8, v10, :cond_8b

    .line 693
    :try_start_6d
    aget-object v8, v39, v9
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_34
    .catchall {:try_start_6d .. :try_end_6d} :catchall_33

    goto :goto_a7

    :catch_34
    move-exception v0

    goto :goto_a6

    .line 695
    :cond_8b
    :try_start_6e
    invoke-virtual {v14, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_a7
    if-eqz v8, :cond_b1

    .line 700
    iget v10, v13, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_40
    .catchall {:try_start_6e .. :try_end_6e} :catchall_41

    move/from16 v28, v1

    const/4 v1, 0x1

    if-le v10, v1, :cond_94

    .line 701
    :try_start_6f
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v35, v1, 0x2

    if-nez v35, :cond_90

    if-eqz v38, :cond_8c

    and-int/lit8 v35, v1, 0x1

    if-eqz v35, :cond_8c

    .line 703
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v7, v7, v38

    iput v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v10, v10, v38

    .line 704
    iput v10, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_8c
    if-eqz v29, :cond_8d

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8d

    .line 707
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v1, v8, v13}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 v10, 0x0

    goto :goto_a8

    :cond_8d
    move/from16 v10, v29

    .line 710
    :goto_a8
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move-wide/from16 v35, v11

    const/4 v7, 0x1

    move v12, v10

    invoke-virtual {v1, v3, v8, v13, v7}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v10

    const-wide/16 v7, 0x0

    cmp-long v1, v10, v7

    if-eqz v1, :cond_8f

    .line 712
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_8f

    .line 713
    iget-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v53, v7, v5

    cmp-long v29, v53, v30

    if-lez v29, :cond_8e

    sub-long v30, v7, v5

    :cond_8e
    move-wide/from16 v7, v30

    move/from16 v29, v12

    long-to-float v12, v7

    div-float v12, v12, v51

    div-float v12, v12, v52

    .line 716
    invoke-interface {v1, v10, v11, v12}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v30, v7

    goto :goto_a9

    :cond_8f
    move/from16 v29, v12

    :goto_a9
    move v10, v3

    move/from16 v11, v86

    move/from16 v8, v88

    goto/16 :goto_ac

    :cond_90
    move-wide/from16 v35, v11

    const/4 v1, -0x5

    if-ne v3, v1, :cond_95

    .line 720
    new-array v1, v10, [B

    .line 721
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v10

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 722
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 723
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 726
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_aa
    if-ltz v7, :cond_92

    const/4 v10, 0x3

    if-le v7, v10, :cond_92

    .line 728
    aget-byte v10, v1, v7

    if-ne v10, v8, :cond_91

    add-int/lit8 v8, v7, -0x1

    aget-byte v8, v1, v8

    if-nez v8, :cond_91

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v1, v8

    if-nez v8, :cond_91

    add-int/lit8 v8, v7, -0x3

    aget-byte v10, v1, v8

    if-nez v10, :cond_91

    .line 729
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 730
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v11, 0x0

    .line 731
    invoke-virtual {v10, v1, v11, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 732
    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v8

    invoke-virtual {v7, v1, v8, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_ab

    :cond_91
    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    goto :goto_aa

    :cond_92
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 740
    :goto_ab
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move/from16 v11, v86

    move/from16 v8, v88

    invoke-static {v1, v8, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v10, :cond_93

    if-eqz v7, :cond_93

    .line 742
    invoke-virtual {v1, v15, v10}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v10, "csd-1"

    .line 743
    invoke-virtual {v1, v10, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 745
    :cond_93
    iget-object v7, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_35
    .catchall {:try_start_6f .. :try_end_6f} :catchall_36

    move v10, v1

    goto :goto_ac

    :cond_94
    move-wide/from16 v35, v11

    :cond_95
    move/from16 v11, v86

    move/from16 v8, v88

    move v10, v3

    .line 748
    :goto_ac
    :try_start_70
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_96

    const/4 v1, 0x1

    goto :goto_ad

    :cond_96
    const/4 v1, 0x0

    :goto_ad
    const/4 v3, 0x0

    .line 749
    invoke-virtual {v14, v9, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_3f
    .catchall {:try_start_70 .. :try_end_70} :catchall_3f

    move v3, v10

    const/4 v7, -0x1

    :goto_ae
    if-eq v9, v7, :cond_97

    move/from16 v88, v8

    move/from16 v86, v11

    move-object/from16 v82, v14

    move-object/from16 v89, v15

    move/from16 v7, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v8, v27

    move-wide/from16 v11, v35

    move/from16 v35, v1

    move/from16 v1, v28

    goto/16 :goto_9b

    :cond_97
    if-nez v37, :cond_b0

    const-wide/16 v9, 0x9c4

    .line 756
    :try_start_71
    invoke-virtual {v4, v13, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_3e
    .catchall {:try_start_71 .. :try_end_71} :catchall_3e

    if-ne v12, v7, :cond_98

    move/from16 v53, v1

    move/from16 v48, v3

    move-object v1, v4

    move/from16 v88, v8

    move-object/from16 v3, v18

    :goto_af
    const/4 v10, 0x0

    goto/16 :goto_c6

    :cond_98
    const/4 v7, -0x3

    if-ne v12, v7, :cond_99

    goto/16 :goto_c4

    :cond_99
    const/4 v7, -0x2

    if-ne v12, v7, :cond_9a

    .line 762
    :try_start_72
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 763
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_b0

    .line 764
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newFormat = "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_35
    .catchall {:try_start_72 .. :try_end_72} :catchall_36

    goto/16 :goto_c4

    :catchall_36
    move-exception v0

    move-object/from16 v48, v4

    move-object v1, v14

    move-object/from16 v10, v18

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/16 v45, 0x0

    move-object v4, v0

    move v14, v3

    goto/16 :goto_d1

    :catch_35
    move-exception v0

    move-object v1, v0

    move v10, v3

    :goto_b0
    move/from16 v6, v80

    goto/16 :goto_dd

    :cond_9a
    if-ltz v12, :cond_af

    .line 770
    :try_start_73
    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v88, v8

    if-eqz v7, :cond_9b

    const/4 v9, 0x1

    goto :goto_b1

    :cond_9b
    const/4 v9, 0x0

    .line 771
    :goto_b1
    iget-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_3d
    .catchall {:try_start_73 .. :try_end_73} :catchall_3d

    const-wide/16 v53, 0x0

    cmp-long v10, v60, v53

    if-lez v10, :cond_9c

    cmp-long v10, v7, v60

    if-ltz v10, :cond_9c

    .line 776
    :try_start_74
    iget v9, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_35
    .catchall {:try_start_74 .. :try_end_74} :catchall_36

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v37, 0x1

    goto :goto_b2

    :cond_9c
    move v10, v9

    move/from16 v9, v26

    :goto_b2
    const-wide/16 v53, 0x0

    cmp-long v26, v19, v53

    if-ltz v26, :cond_9f

    move/from16 v53, v1

    .line 779
    :try_start_75
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a0

    sub-long v68, v19, v5

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->abs(J)J

    move-result-wide v68

    const v1, 0xf4240

    div-int v1, v1, v32
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_36
    .catchall {:try_start_75 .. :try_end_75} :catchall_37

    move/from16 v26, v9

    move/from16 v54, v10

    int-to-long v9, v1

    cmp-long v1, v68, v9

    if-lez v1, :cond_9e

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-lez v1, :cond_9d

    .line 781
    :try_start_76
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v6, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_35
    .catchall {:try_start_76 .. :try_end_76} :catchall_36

    move/from16 v48, v3

    const/4 v3, 0x0

    goto :goto_b3

    .line 783
    :cond_9d
    :try_start_77
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_36
    .catchall {:try_start_77 .. :try_end_77} :catchall_37

    move/from16 v48, v3

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    :try_start_78
    invoke-virtual {v1, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_b3
    add-long v33, v35, v16

    .line 791
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, -0x5

    and-int/2addr v1, v9

    iput v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 792
    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    move v10, v3

    move/from16 v37, v10

    move/from16 v54, v37

    move-wide/from16 v60, v19

    move-wide/from16 v19, v72

    const/4 v1, 0x1

    goto :goto_b7

    :cond_9e
    move/from16 v48, v3

    goto :goto_b6

    :catchall_37
    move-exception v0

    move/from16 v48, v3

    const/4 v3, 0x0

    :goto_b4
    move-object v1, v14

    move-object/from16 v10, v18

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move/from16 v14, v48

    move-object/from16 v11, v67

    move/from16 v6, v80

    move/from16 v45, v3

    move-object/from16 v48, v4

    move/from16 v3, p2

    goto/16 :goto_80

    :catch_36
    move-exception v0

    move/from16 v48, v3

    const/4 v3, 0x0

    :goto_b5
    move-object v1, v0

    move/from16 v10, v48

    goto/16 :goto_b0

    :cond_9f
    move/from16 v53, v1

    :cond_a0
    move/from16 v48, v3

    move/from16 v26, v9

    move/from16 v54, v10

    :goto_b6
    const/4 v3, 0x0

    const/4 v9, -0x5

    move v1, v3

    move/from16 v10, v26

    :goto_b7
    const-wide/16 v63, 0x0

    cmp-long v26, v55, v63

    if-lez v26, :cond_a1

    move/from16 v26, v10

    .line 795
    iget-wide v9, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v9, v9, v55

    cmp-long v9, v9, v70

    if-gez v9, :cond_a2

    iget v9, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_37
    .catchall {:try_start_78 .. :try_end_78} :catchall_38

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_a2

    move v10, v3

    goto :goto_b8

    :catchall_38
    move-exception v0

    goto :goto_b4

    :catch_37
    move-exception v0

    goto :goto_b5

    :cond_a1
    move/from16 v26, v10

    :cond_a2
    move/from16 v10, v54

    :goto_b8
    const-wide/16 v68, 0x0

    cmp-long v9, v19, v68

    move-object/from16 v54, v4

    if-ltz v9, :cond_a3

    move-wide/from16 v3, v19

    goto :goto_b9

    :cond_a3
    move-wide v3, v5

    :goto_b9
    cmp-long v74, v3, v68

    if-lez v74, :cond_a7

    cmp-long v68, v43, v72

    if-nez v68, :cond_a7

    cmp-long v7, v7, v3

    if-gez v7, :cond_a5

    .line 802
    :try_start_79
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_a4

    .line 803
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drop frame startTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " present time = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a4
    const/4 v10, 0x0

    goto :goto_ba

    .line 806
    :cond_a5
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v7, -0x80000000

    cmp-long v7, v35, v7

    if-eqz v7, :cond_a6

    sub-long v33, v33, v3

    :cond_a6
    move-wide/from16 v43, v3

    goto :goto_ba

    :catchall_39
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v14

    move-object/from16 v10, v18

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move/from16 v14, v48

    move-object/from16 v48, v54

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto/16 :goto_78

    :catch_38
    move-exception v0

    move-object v1, v0

    move/from16 v10, v48

    move-object/from16 v4, v54

    goto/16 :goto_b0

    :cond_a7
    :goto_ba
    if-eqz v1, :cond_a8

    move-object/from16 v1, v54

    move-wide/from16 v43, v72

    const-wide/16 v3, 0x0

    goto :goto_bb

    :cond_a8
    cmp-long v1, v19, v72

    const-wide/16 v3, 0x0

    if-nez v1, :cond_a9

    cmp-long v1, v33, v3

    if-eqz v1, :cond_a9

    .line 816
    iget-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v7, v7, v33

    iput-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_38
    .catchall {:try_start_79 .. :try_end_79} :catchall_39

    :cond_a9
    move-object/from16 v1, v54

    .line 818
    :try_start_7a
    invoke-virtual {v1, v12, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_bb
    if-eqz v10, :cond_ac

    .line 821
    iget-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_3c
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3c

    if-ltz v9, :cond_aa

    move-wide/from16 v9, v35

    .line 823
    :try_start_7b
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_39
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3a

    goto :goto_bc

    :catch_39
    move-exception v0

    goto/16 :goto_c0

    :cond_aa
    move-wide/from16 v9, v35

    .line 827
    :goto_bc
    :try_start_7c
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_3a
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3a

    const/4 v12, 0x0

    goto :goto_bd

    :catchall_3a
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object/from16 v10, v18

    goto/16 :goto_c3

    :catch_3a
    move-exception v0

    move-object v12, v0

    .line 830
    :try_start_7d
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x1

    :goto_bd
    if-nez v12, :cond_ab

    .line 833
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V

    .line 834
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_3c
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3c

    const-wide/16 v35, 0x3e8

    mul-long v3, v3, v35

    move-object/from16 v12, v18

    :try_start_7e
    invoke-virtual {v12, v3, v4}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 835
    invoke-virtual {v12}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_be

    :cond_ab
    move-object/from16 v12, v18

    :goto_be
    move-wide/from16 v55, v7

    goto :goto_bf

    :cond_ac
    move-object/from16 v12, v18

    move-wide/from16 v9, v35

    .line 838
    :goto_bf
    iget v3, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_ae

    .line 840
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_ad

    const-string v3, "decoder stream end"

    .line 841
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 843
    :cond_ad
    invoke-virtual {v14}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_3b
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3b

    move-wide/from16 v35, v9

    move-object v3, v12

    goto/16 :goto_af

    :cond_ae
    move-wide/from16 v35, v9

    move-object v3, v12

    goto/16 :goto_c5

    :catchall_3b
    move-exception v0

    goto :goto_c2

    :catch_3b
    move-exception v0

    move-object v4, v1

    move-object/from16 v18, v12

    goto/16 :goto_cc

    :catchall_3c
    move-exception v0

    goto :goto_c1

    :catch_3c
    move-exception v0

    move-object/from16 v12, v18

    :goto_c0
    move-object v4, v1

    goto/16 :goto_cc

    :catchall_3d
    move-exception v0

    move/from16 v48, v3

    move-object v1, v4

    :goto_c1
    move-object/from16 v12, v18

    :goto_c2
    move/from16 v3, p2

    move-object v4, v0

    move-object v10, v12

    :goto_c3
    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/16 v45, 0x0

    goto/16 :goto_cb

    :catch_3d
    move-exception v0

    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v12, v18

    goto/16 :goto_cc

    :cond_af
    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v3, v18

    .line 768
    :try_start_7f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_3e
    move-exception v0

    goto/16 :goto_c8

    :catch_3e
    move-exception v0

    goto/16 :goto_c7

    :cond_b0
    :goto_c4
    move/from16 v53, v1

    move/from16 v48, v3

    move-object v1, v4

    move/from16 v88, v8

    move-object/from16 v3, v18

    move-wide/from16 v9, v35

    move-wide/from16 v35, v9

    :goto_c5
    move/from16 v10, v24

    :goto_c6
    move-object v4, v1

    move-object/from16 v18, v3

    move/from16 v86, v11

    move-object/from16 v82, v14

    move-object/from16 v89, v15

    move/from16 v7, v22

    move/from16 v9, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v8, v27

    move/from16 v1, v28

    move-wide/from16 v11, v35

    move/from16 v3, v48

    move/from16 v35, v53

    goto/16 :goto_9b

    :catchall_3f
    move-exception v0

    move-object v1, v4

    move-object/from16 v3, v18

    move-object v4, v0

    move-object/from16 v48, v1

    move-object v1, v14

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/16 v45, 0x0

    move v14, v10

    move-object v10, v3

    goto/16 :goto_d1

    :catch_3f
    move-exception v0

    move-object v1, v4

    move-object/from16 v3, v18

    goto/16 :goto_cd

    :cond_b1
    move/from16 v28, v1

    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v3, v18

    .line 698
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_40
    move-exception v0

    move/from16 v28, v1

    :goto_c7
    move/from16 v48, v3

    move-object v1, v4

    goto :goto_c9

    :cond_b2
    move/from16 v28, v1

    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v3, v18

    .line 689
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_41
    .catchall {:try_start_7f .. :try_end_7f} :catchall_40

    :catchall_40
    move-exception v0

    goto :goto_ca

    :catch_41
    move-exception v0

    move-object v4, v1

    move-object/from16 v18, v3

    goto :goto_cc

    :catchall_41
    move-exception v0

    move/from16 v28, v1

    :goto_c8
    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v3, v18

    goto :goto_ca

    :catch_42
    move-exception v0

    move/from16 v28, v1

    move/from16 v48, v3

    move-object v1, v4

    move/from16 v27, v8

    :goto_c9
    move-object/from16 v3, v18

    goto :goto_cc

    :catchall_42
    move-exception v0

    move/from16 v28, v1

    move/from16 v48, v3

    move-object v1, v4

    move-object/from16 v3, v18

    move-object/from16 v14, v82

    :goto_ca
    move-object v4, v0

    move-object v10, v3

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/16 v45, 0x0

    move/from16 v3, p2

    :goto_cb
    move/from16 v91, v48

    move-object/from16 v48, v1

    move-object v1, v14

    move/from16 v14, v91

    goto/16 :goto_ed

    :catch_43
    move-exception v0

    move/from16 v28, v1

    move/from16 v48, v3

    move-object v1, v4

    move/from16 v27, v8

    move-object/from16 v3, v18

    move-object/from16 v14, v82

    :goto_cc
    move/from16 v10, v48

    goto :goto_cd

    :catchall_43
    move-exception v0

    move/from16 v28, v1

    move-object v1, v4

    move-object v14, v12

    move-object/from16 v50, v13

    move-object/from16 v3, v18

    move-object v4, v0

    move-object/from16 v48, v1

    move-object v10, v3

    move-object v1, v14

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v14, v36

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto :goto_ce

    :catch_44
    move-exception v0

    move/from16 v28, v1

    move-object v1, v4

    move-object/from16 v58, v8

    move-object v14, v12

    move-object/from16 v3, v18

    move/from16 v27, v50

    move-object/from16 v50, v13

    move/from16 v10, v36

    :goto_cd
    move/from16 v6, v80

    goto :goto_cf

    :catch_45
    move-exception v0

    move/from16 v28, v1

    move-object v1, v4

    move-object/from16 v58, v8

    move-object v14, v12

    move-object/from16 v3, v18

    move/from16 v27, v50

    move-object/from16 v50, v13

    move/from16 v6, v80

    const/4 v10, -0x5

    goto :goto_cf

    :catchall_44
    move-exception v0

    move/from16 v28, v1

    move-object v1, v4

    move-object v14, v12

    move-object/from16 v50, v13

    move-object/from16 v3, v18

    move-object v4, v0

    move-object/from16 v48, v1

    move-object v10, v3

    move-object v1, v14

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v14, -0x5

    :goto_ce
    const/16 v45, 0x0

    goto/16 :goto_d1

    :catch_46
    move-exception v0

    move/from16 v28, v1

    move-object v1, v4

    move-object v14, v12

    move-object/from16 v3, v18

    move/from16 v27, v50

    move-object/from16 v50, v13

    move/from16 v6, v80

    const/4 v10, -0x5

    const/16 v58, 0x0

    :goto_cf
    move-object v1, v0

    goto/16 :goto_dd

    :catchall_45
    move-exception v0

    move/from16 v28, v1

    move-object v14, v12

    move-object/from16 v50, v13

    move-object/from16 v3, v18

    move-object v4, v0

    move-object v10, v3

    move-object v1, v14

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v14, -0x5

    const/16 v45, 0x0

    const/16 v48, 0x0

    goto :goto_d1

    :catch_47
    move-exception v0

    move/from16 v28, v1

    move-object v14, v12

    move-object/from16 v3, v18

    move/from16 v27, v50

    move-object/from16 v50, v13

    move-object v1, v0

    move/from16 v6, v80

    const/4 v4, 0x0

    const/4 v10, -0x5

    goto/16 :goto_d4

    :catchall_46
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v21, v8

    move/from16 v28, v34

    move-object/from16 v14, v82

    goto :goto_d0

    :catch_48
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v21, v8

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    move-object/from16 v14, v82

    goto :goto_d2

    :catchall_47
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object v3, v6

    move-object/from16 v21, v8

    move/from16 v28, v34

    :goto_d0
    move-object v4, v0

    move-object v10, v3

    move-object v1, v14

    move v7, v15

    move/from16 v8, v28

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    const/4 v14, -0x5

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    :goto_d1
    move/from16 v3, p2

    goto/16 :goto_ed

    :catch_49
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object v3, v6

    move-object/from16 v21, v8

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    :goto_d2
    move-object v1, v0

    move-object/from16 v18, v3

    move/from16 v6, v80

    const/4 v4, 0x0

    const/4 v10, -0x5

    goto :goto_d3

    :catchall_48
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v21, v8

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v14

    move v7, v15

    move/from16 v8, v28

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto/16 :goto_41

    :catch_4a
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v21, v8

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    move-object v1, v0

    move/from16 v6, v80

    const/4 v4, 0x0

    const/4 v10, -0x5

    const/16 v18, 0x0

    :goto_d3
    const/16 v50, 0x0

    :goto_d4
    const/16 v58, 0x0

    goto/16 :goto_dd

    :catchall_49
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v21, v8

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v14

    move v7, v15

    move/from16 v8, v28

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto/16 :goto_46

    :catch_4b
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v21, v8

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    move-object v1, v0

    move/from16 v6, v80

    const/4 v4, 0x0

    const/4 v10, -0x5

    const/16 v18, 0x0

    goto/16 :goto_dc

    :catchall_4a
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v14

    move v7, v15

    move/from16 v8, v28

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v80

    goto/16 :goto_eb

    :catch_4c
    move-exception v0

    move-object/from16 v2, p0

    move-object v14, v5

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    move-object v1, v0

    move/from16 v6, v80

    goto :goto_d7

    :catch_4d
    move-exception v0

    move-object v14, v5

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v28, v34

    move/from16 v27, v50

    goto :goto_d6

    :catchall_4b
    move-exception v0

    move-object v14, v5

    move-object v2, v13

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v14

    move v7, v15

    move/from16 v8, v28

    :goto_d5
    move/from16 v12, v45

    move-object/from16 v11, v67

    goto/16 :goto_eb

    :catch_4e
    move-exception v0

    move/from16 v27, v2

    move-object v14, v5

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v28, v34

    :goto_d6
    move-object v1, v0

    :goto_d7
    const/4 v4, 0x0

    const/4 v10, -0x5

    goto :goto_db

    :catchall_4c
    move-exception v0

    move-object v2, v13

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move v7, v15

    goto :goto_d8

    :catch_4f
    move-exception v0

    move/from16 v27, v2

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v28, v34

    move-object v1, v0

    goto :goto_da

    :catchall_4d
    move-exception v0

    move-object v2, v13

    move/from16 v28, v34

    move/from16 v3, p2

    move-object v4, v0

    move v7, v15

    move/from16 v6, v17

    :goto_d8
    move/from16 v8, v28

    :goto_d9
    move/from16 v12, v45

    move-object/from16 v11, v67

    goto/16 :goto_ea

    :catch_50
    move-exception v0

    move/from16 v27, v2

    move-object v2, v13

    move/from16 v32, v15

    move/from16 v28, v34

    move-object v1, v0

    move/from16 v6, v17

    :goto_da
    const/4 v4, 0x0

    const/4 v10, -0x5

    const/4 v14, 0x0

    :goto_db
    const/16 v18, 0x0

    const/16 v21, 0x0

    :goto_dc
    const/16 v50, 0x0

    const/16 v58, 0x0

    const/16 v81, 0x0

    .line 853
    :goto_dd
    :try_start_80
    instance-of v3, v1, Ljava/lang/IllegalStateException;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_54

    if-eqz v3, :cond_b3

    move/from16 v3, p2

    if-nez v3, :cond_b4

    const/4 v9, 0x1

    goto :goto_de

    :cond_b3
    move/from16 v3, p2

    :cond_b4
    const/4 v9, 0x0

    .line 856
    :goto_de
    :try_start_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bitrate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " framerate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_53

    move/from16 v7, v32

    :try_start_82
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_52

    move/from16 v8, v28

    :try_start_83
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_51

    move-object/from16 v11, v67

    :try_start_84
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_50

    move/from16 v12, v45

    :try_start_85
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 857
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_4f

    move/from16 v48, v9

    move/from16 v36, v10

    move-object/from16 v13, v50

    const/4 v9, 0x1

    move-object v10, v4

    .line 861
    :goto_df
    :try_start_86
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v4, v27

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v10, :cond_b5

    .line 863
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V

    .line 864
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_4e

    :cond_b5
    move/from16 v63, v9

    move-object v1, v10

    move-object v10, v13

    goto/16 :goto_e4

    :catchall_4e
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v13

    move-object v1, v14

    move/from16 v14, v36

    move/from16 v45, v48

    move-object/from16 v48, v10

    goto :goto_e3

    :catchall_4f
    move-exception v0

    goto :goto_e1

    :catchall_50
    move-exception v0

    move/from16 v12, v45

    goto :goto_e1

    :catchall_51
    move-exception v0

    goto :goto_e0

    :catchall_52
    move-exception v0

    move/from16 v8, v28

    goto :goto_e0

    :catchall_53
    move-exception v0

    move/from16 v8, v28

    move/from16 v7, v32

    :goto_e0
    move/from16 v12, v45

    move-object/from16 v11, v67

    :goto_e1
    move-object/from16 v48, v4

    move/from16 v45, v9

    move-object v1, v14

    goto :goto_e2

    :catchall_54
    move-exception v0

    move/from16 v3, p2

    move/from16 v8, v28

    move/from16 v7, v32

    move/from16 v12, v45

    move-object/from16 v11, v67

    move-object/from16 v48, v4

    move-object v1, v14

    const/16 v45, 0x0

    :goto_e2
    move-object v4, v0

    move v14, v10

    :goto_e3
    move-object/from16 v10, v18

    goto/16 :goto_ed

    :cond_b6
    move/from16 v3, p2

    move-object v2, v13

    move v7, v15

    move/from16 v8, v34

    move/from16 v12, v45

    move-object/from16 v11, v67

    move/from16 v6, v17

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v36, -0x5

    const/16 v48, 0x0

    const/16 v58, 0x0

    const/16 v63, 0x0

    const/16 v81, 0x0

    :goto_e4
    if-eqz v10, :cond_b7

    .line 868
    :try_start_87
    invoke-virtual {v10}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v10, 0x0

    goto :goto_e5

    :catchall_55
    move-exception v0

    move-object v4, v0

    move-object/from16 v50, v10

    move-object/from16 v10, v18

    move/from16 v45, v48

    move-object/from16 v48, v1

    move-object v1, v14

    move/from16 v14, v36

    goto/16 :goto_ed

    :cond_b7
    :goto_e5
    if-eqz v18, :cond_b8

    .line 872
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v18, 0x0

    :cond_b8
    if-eqz v14, :cond_b9

    .line 876
    invoke-virtual {v14}, Landroid/media/MediaCodec;->stop()V

    .line 877
    invoke-virtual {v14}, Landroid/media/MediaCodec;->release()V

    const/4 v14, 0x0

    :cond_b9
    if-eqz v58, :cond_ba

    .line 881
    invoke-virtual/range {v58 .. v58}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 883
    :cond_ba
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_55

    move-object/from16 v65, v10

    move v7, v12

    move/from16 v10, v36

    move/from16 v9, v63

    move/from16 v38, v81

    .line 894
    :goto_e6
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_bb

    .line 895
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 897
    :cond_bb
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v4, :cond_bc

    .line 899
    :try_start_88
    invoke-virtual {v4}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 900
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_56

    goto :goto_e7

    :catchall_56
    move-exception v0

    move-object v4, v0

    .line 902
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_bc
    :goto_e7
    if-eqz v14, :cond_bd

    .line 907
    :try_start_89
    invoke-virtual {v14}, Landroid/media/MediaCodec;->release()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_51

    :catch_51
    :cond_bd
    if-eqz v1, :cond_be

    .line 914
    :try_start_8a
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_52

    :catch_52
    :cond_be
    if-eqz v65, :cond_bf

    .line 921
    :try_start_8b
    invoke-virtual/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_53

    :catch_53
    :cond_bf
    if-eqz v18, :cond_c0

    .line 928
    :try_start_8c
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_54

    :catch_54
    :cond_c0
    move-object/from16 v1, v21

    goto/16 :goto_ef

    :catchall_57
    move-exception v0

    move/from16 v17, v6

    move v3, v12

    move-object v2, v13

    move-object/from16 v11, v26

    move/from16 v8, v34

    goto :goto_e8

    :catchall_58
    move-exception v0

    move/from16 v17, v6

    move v3, v12

    move-object v2, v13

    move-object/from16 v11, v26

    :goto_e8
    move/from16 v66, v36

    move-object/from16 v46, v53

    move v12, v7

    move/from16 v7, v21

    goto :goto_e9

    :catchall_59
    move-exception v0

    move/from16 v3, p2

    move/from16 v17, v6

    move-object/from16 v46, v11

    move-object v11, v12

    move-object v2, v13

    move/from16 v66, v36

    move v12, v7

    move/from16 v7, v37

    :goto_e9
    move-object v4, v0

    :goto_ea
    const/4 v1, 0x0

    :goto_eb
    const/4 v10, 0x0

    const/4 v14, -0x5

    const/16 v21, 0x0

    :goto_ec
    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v81, 0x0

    .line 891
    :goto_ed
    :try_start_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " framerate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 892
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_5b

    .line 894
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_c1

    .line 895
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 897
    :cond_c1
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v4, :cond_c2

    .line 899
    :try_start_8e
    invoke-virtual {v4}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 900
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_5a

    goto :goto_ee

    :catchall_5a
    move-exception v0

    move-object v4, v0

    .line 902
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c2
    :goto_ee
    if-eqz v1, :cond_c3

    .line 907
    :try_start_8f
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_55

    :catch_55
    :cond_c3
    if-eqz v48, :cond_c4

    .line 914
    :try_start_90
    invoke-virtual/range {v48 .. v48}, Landroid/media/MediaCodec;->release()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_56

    :catch_56
    :cond_c4
    if-eqz v50, :cond_c5

    .line 921
    :try_start_91
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_57

    :catch_57
    :cond_c5
    if-eqz v10, :cond_c6

    .line 928
    :try_start_92
    invoke-virtual {v10}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_58

    :catch_58
    :cond_c6
    move v7, v12

    move-object/from16 v1, v21

    move/from16 v48, v45

    move/from16 v38, v81

    const/4 v9, 0x1

    :goto_ef
    if-eqz v48, :cond_c7

    move/from16 v4, p3

    const/4 v5, 0x1

    add-int/lit8 v1, v4, 0x1

    move-object/from16 v10, p1

    .line 936
    invoke-direct {v2, v10, v5, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    :cond_c7
    move-object/from16 v10, p1

    move/from16 v4, p3

    const/4 v5, 0x1

    if-eqz v9, :cond_c8

    if-eqz v38, :cond_c8

    const/4 v11, 0x3

    if-ge v4, v11, :cond_c8

    add-int/lit8 v1, v4, 0x1

    .line 940
    invoke-direct {v2, v10, v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    .line 943
    :cond_c8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v41

    .line 944
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_c9

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compression completed time="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " needCompress="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v66

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitrate="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file size="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " encoder_name="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c9
    return v9

    :catchall_5b
    move-exception v0

    move-object v3, v0

    .line 894
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_ca

    .line 895
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 897
    :cond_ca
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v4, :cond_cb

    .line 899
    :try_start_93
    invoke-virtual {v4}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 900
    iget-object v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_5c

    goto :goto_f0

    :catchall_5c
    move-exception v0

    move-object v4, v0

    .line 902
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_cb
    :goto_f0
    if-eqz v1, :cond_cc

    .line 907
    :try_start_94
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_59

    :catch_59
    :cond_cc
    if-eqz v48, :cond_cd

    .line 914
    :try_start_95
    invoke-virtual/range {v48 .. v48}, Landroid/media/MediaCodec;->release()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_5a

    :catch_5a
    :cond_cd
    if-eqz v50, :cond_ce

    .line 921
    :try_start_96
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_5b

    :catch_5b
    :cond_ce
    if-eqz v10, :cond_cf

    .line 928
    :try_start_97
    invoke-virtual {v10}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_5c

    .line 933
    :catch_5c
    :cond_cf
    throw v3
.end method

.method private createEncoderForMimeType()Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "video/avc"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 973
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 978
    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 979
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 1003
    iget-object v3, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 1005
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static createFragmentShader(IIIIZI)Ljava/lang/String;
    .locals 3

    .line 1236
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1238
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1241
    :cond_0
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    dest size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   kernelRadius "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string p2, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string p3, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_1

    .line 1244
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1263
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    const-string/jumbo v0, "video/hevc"

    .line 1012
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1015
    :goto_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 1016
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v2, [B

    .line 1018
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    const/16 v3, 0x60

    if-ge p1, v3, :cond_2

    .line 1021
    aget-byte v3, v1, p1

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v1, v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-le v2, p0, :cond_1

    .line 1024
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1025
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4

    if-eqz p1, :cond_3

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "mime"

    .line 1297
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "video/dolby-vision"

    .line 1299
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "video/hevc"

    .line 1300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "video/avc"

    .line 1301
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 1304
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 1306
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1307
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1315
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1294
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getDecoderByFormat: format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    .line 1204
    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result p0

    const/4 p1, 0x1

    const/4 p4, 0x0

    if-ne p0, p1, :cond_0

    .line 1205
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_hlg2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1207
    :cond_0
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_pq2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 1209
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "$dstWidth"

    invoke-virtual {p0, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$dstHeight"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nin vec2 vTextureCoord;\nout vec4 fragColor;\nvoid main() {\n    fragColor = TEX(vTextureCoord);\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "#version 320 es\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nout vec4 fragColor;\nvoid main() {\nfragColor = texture(sTexture, vTextureCoord);\n}\n"

    return-object p0
.end method

.method private isMediatekAvcEncoder(Landroid/media/MediaCodec;)Z
    .locals 1

    .line 1034
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "c2.mtk.avc.encoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    .line 1039
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 1040
    invoke-static {v1, v9}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v0

    move-wide/from16 v11, p8

    move v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p8

    const/4 v10, -0x1

    :goto_0
    long-to-float v0, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v12, v0, v11

    const-string/jumbo v13, "max-input-size"

    const-wide/16 v14, 0x0

    if-ltz v7, :cond_2

    .line 1050
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1051
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1052
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 1054
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 1056
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 1060
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 1062
    :cond_1
    invoke-virtual {v1, v14, v15, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    move v11, v0

    goto :goto_3

    :cond_2
    move v11, v6

    const/16 v16, -0x1

    :goto_3
    if-ltz v10, :cond_5

    .line 1066
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1067
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v8, "mime"

    .line 1069
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 1072
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 1074
    :try_start_1
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1076
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 1079
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 1081
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 1088
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 1091
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 1093
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 1096
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 1100
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v11, v0

    move-object v0, v9

    goto :goto_8

    :cond_9
    move/from16 p9, v10

    :cond_a
    :goto_8
    const/4 v9, 0x0

    .line 1103
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    if-ne v10, v7, :cond_b

    move/from16 v14, p9

    move/from16 v15, v16

    :goto_9
    const/4 v9, -0x1

    goto :goto_a

    :cond_b
    move/from16 v14, p9

    if-ne v10, v14, :cond_c

    move v15, v6

    goto :goto_9

    :cond_c
    const/4 v9, -0x1

    const/4 v15, -0x1

    :goto_a
    if-eq v15, v9, :cond_1e

    const/16 v9, 0x15

    if-ge v13, v9, :cond_d

    const/4 v9, 0x0

    .line 1114
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1115
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 1118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 1121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v24, v13, v24

    move/from16 p9, v6

    move v6, v13

    const/4 v13, -0x1

    :goto_b
    const/16 v25, 0x4

    move/from16 p11, v8

    add-int/lit8 v8, v24, -0x4

    if-gt v6, v8, :cond_14

    .line 1124
    aget-byte v26, v9, v6

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x1

    aget-byte v26, v9, v26

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x2

    aget-byte v26, v9, v26

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x3

    move/from16 v27, v11

    aget-byte v11, v9, v26

    move/from16 v26, v14

    const/4 v14, 0x1

    if-eq v11, v14, :cond_f

    goto :goto_c

    :cond_e
    move/from16 v27, v11

    move/from16 v26, v14

    const/4 v14, 0x1

    :goto_c
    if-ne v6, v8, :cond_12

    :cond_f
    const/4 v11, -0x1

    if-eq v13, v11, :cond_11

    sub-int v11, v6, v13

    if-eq v6, v8, :cond_10

    goto :goto_d

    :cond_10
    const/16 v25, 0x0

    :goto_d
    sub-int v11, v11, v25

    shr-int/lit8 v8, v11, 0x18

    int-to-byte v8, v8

    .line 1127
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 1128
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 1129
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 1130
    aput-byte v8, v9, v13

    :cond_11
    move v13, v6

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p11

    move/from16 v14, v26

    move/from16 v11, v27

    goto :goto_b

    :cond_13
    move/from16 p9, v6

    move/from16 p11, v8

    :cond_14
    move/from16 v27, v11

    move/from16 v26, v14

    .line 1139
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 1142
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 1146
    :goto_e
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_19

    if-nez v8, :cond_19

    if-ne v10, v7, :cond_16

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_17

    cmp-long v6, v20, v18

    if-nez v6, :cond_17

    .line 1148
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 1150
    iget-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v9, p6

    if-gez v6, :cond_18

    goto :goto_10

    :cond_18
    const/4 v8, 0x1

    :cond_19
    move-object/from16 v11, p0

    :cond_1a
    const/high16 v24, 0x447a0000    # 1000.0f

    goto :goto_12

    :cond_1b
    :goto_10
    const/4 v6, 0x0

    .line 1151
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1152
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1153
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 1155
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 1156
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v24, v13, v20

    cmp-long v17, v24, v22

    if-lez v17, :cond_1c

    sub-long v13, v13, v20

    goto :goto_11

    :cond_1c
    move-wide/from16 v13, v22

    :goto_11
    long-to-float v6, v13

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v6, v6, v24

    div-float/2addr v6, v12

    .line 1159
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1d
    const/4 v6, -0x1

    goto :goto_13

    :cond_1e
    move/from16 p9, v6

    move/from16 p11, v8

    move v6, v9

    move/from16 v27, v11

    move/from16 v26, v14

    const/high16 v24, 0x447a0000    # 1000.0f

    move-object/from16 v11, p0

    if-ne v10, v6, :cond_1f

    const/4 v8, 0x1

    goto :goto_13

    .line 1172
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v8, 0x0

    :goto_13
    if-eqz v8, :cond_20

    const/4 v8, 0x1

    goto :goto_14

    :cond_20
    move/from16 v8, p11

    :goto_14
    move/from16 v6, p9

    move/from16 v10, v26

    move/from16 v11, v27

    const/4 v9, 0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_7

    :cond_21
    move-object/from16 v11, p0

    move/from16 v26, v10

    if-ltz v7, :cond_22

    .line 1179
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 1182
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_23
    return-wide v20
.end method


# virtual methods
.method public convertVideo(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)Z
    .locals 1

    .line 52
    iget-object v0, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result p1

    return p1
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method
