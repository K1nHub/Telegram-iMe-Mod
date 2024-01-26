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

    .line 951
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 952
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    .line 953
    new-instance v2, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;)V

    .line 954
    iget v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    .line 956
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 957
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartOffsetUs(J)V

    .line 959
    :cond_0
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 960
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    goto :goto_1

    :cond_1
    move-wide v3, v5

    .line 962
    :goto_1
    iget-wide v7, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_2

    add-long/2addr v3, v7

    .line 963
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    .line 965
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    .line 1189
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1190
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z
    .locals 89

    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move/from16 v11, p2

    move/from16 v9, p3

    .line 64
    iget-object v1, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    .line 65
    iget-object v10, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    .line 66
    iget v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    .line 67
    iget-boolean v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    .line 68
    iget v8, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    .line 69
    iget v7, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    .line 70
    iget v15, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    .line 71
    iget v14, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    .line 72
    iget v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    .line 73
    iget v6, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    .line 74
    iget v4, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    move/from16 v32, v3

    move/from16 v16, v4

    .line 75
    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-wide/from16 v17, v3

    .line 76
    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 v19, v3

    .line 77
    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    .line 78
    iget-boolean v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move-object/from16 v33, v1

    move/from16 v25, v2

    .line 79
    iget-wide v1, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    move/from16 v34, v9

    .line 80
    iget-object v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 81
    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    move-object/from16 v21, v11

    .line 82
    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    move-object/from16 v22, v11

    .line 83
    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v23, v11

    .line 84
    iget-boolean v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    move-object/from16 v24, v9

    .line 85
    iget-object v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move/from16 v35, v5

    .line 86
    iget-boolean v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move/from16 v36, v5

    .line 87
    iget-object v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    move-object/from16 v28, v5

    .line 88
    iget-object v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    move-object/from16 v29, v5

    .line 89
    iget-boolean v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    move/from16 v26, v5

    .line 90
    iget-boolean v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    move-object/from16 v30, v9

    .line 91
    iget-object v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-object/from16 v37, v9

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertVideoInternal original="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v38, v7

    const-string v7, "  result="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    move v9, v8

    const-wide/16 v7, 0x0

    cmp-long v27, v3, v7

    if-ltz v27, :cond_0

    const/16 v27, 0x1

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    :goto_0
    const-string/jumbo v7, "video/hevc"

    if-eqz v5, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    const-string/jumbo v31, "video/avc"

    move-object/from16 v8, v31

    .line 102
    :goto_1
    iput-object v8, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 110
    :try_start_0
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-wide/from16 v48, v3

    .line 111
    new-instance v3, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v3}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 112
    invoke-virtual {v3, v10}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 114
    invoke-virtual {v3, v15, v14}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    long-to-float v4, v1

    const/high16 v50, 0x447a0000    # 1000.0f

    div-float v51, v4, v50

    const-wide/16 v52, 0x3e8

    move/from16 v54, v5

    mul-long v4, v1, v52

    .line 120
    iput-wide v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 121
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_59

    move-object/from16 v52, v10

    const-string v10, "csd-0"

    move-object/from16 v53, v12

    const-string/jumbo v12, "prepend-sps-pps-to-idr-frames"

    move-object/from16 v55, v10

    move/from16 v31, v11

    if-eqz v31, :cond_37

    if-eqz v27, :cond_4

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v6, v51, v6

    if-gtz v6, :cond_2

    const v6, 0x27ac40

    goto :goto_2

    :cond_2
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, v51, v6

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
    if-eqz v30, :cond_8

    move-object/from16 v11, v30

    .line 142
    :try_start_1
    iget-object v10, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v57, v12

    :cond_7
    :goto_3
    move v10, v14

    move v12, v15

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_4b

    :catch_0
    move-exception v0

    move-object v3, v0

    move/from16 v37, v6

    :goto_4
    move/from16 v27, v35

    goto/16 :goto_52

    :cond_8
    move-object/from16 v11, v30

    .line 143
    :goto_5
    :try_start_2
    rem-int/lit8 v10, v15, 0x10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_22
    .catchall {:try_start_2 .. :try_end_2} :catchall_20

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v10, :cond_a

    .line 144
    :try_start_3
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_9

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v57, v12

    const-string v12, "changing width from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v12, v15

    div-float v12, v12, v16

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int/lit8 v12, v12, 0x10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object/from16 v57, v12

    :goto_6
    int-to-float v10, v15

    div-float v10, v10, v16

    .line 147
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-int/lit8 v15, v10, 0x10

    goto :goto_7

    :cond_a
    move-object/from16 v57, v12

    .line 149
    :goto_7
    :try_start_4
    rem-int/lit8 v10, v14, 0x10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_22
    .catchall {:try_start_4 .. :try_end_4} :catchall_20

    if-eqz v10, :cond_7

    .line 150
    :try_start_5
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_b

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changing height from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v12, v14

    div-float v12, v12, v16

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int/lit8 v12, v12, 0x10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_b
    int-to-float v10, v14

    div-float v10, v10, v16

    .line 153
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    mul-int/lit8 v14, v10, 0x10

    goto/16 :goto_3

    .line 157
    :goto_8
    :try_start_6
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_21
    .catchall {:try_start_6 .. :try_end_6} :catchall_1f

    if-eqz v14, :cond_c

    .line 158
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "create photo encoder "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " duration = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v14, v10

    goto/16 :goto_47

    :catch_1
    move-exception v0

    move-object v3, v0

    move/from16 v37, v6

    move v14, v10

    move v15, v12

    goto/16 :goto_4

    .line 162
    :cond_c
    :goto_9
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_21
    .catchall {:try_start_8 .. :try_end_8} :catchall_1f

    .line 165
    :try_start_9
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v12, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v14, "color-format"

    const v15, 0x7f000789

    .line 166
    invoke-virtual {v2, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "bitrate"

    .line 167
    invoke-virtual {v2, v14, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "frame-rate"

    const/16 v15, 0x1e

    .line 168
    invoke-virtual {v2, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "i-frame-interval"

    const/4 v15, 0x1

    .line 169
    invoke-virtual {v2, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_20
    .catchall {:try_start_9 .. :try_end_9} :catchall_1e

    :try_start_a
    const-string v14, "c2.qti.avc.encoder"

    .line 172
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1f
    .catchall {:try_start_a .. :try_end_a} :catchall_1d

    .line 173
    :try_start_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1e
    .catchall {:try_start_b .. :try_end_b} :catchall_1c

    move/from16 v37, v6

    :try_start_c
    const-string/jumbo v6, "selected encoder "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v14, 0x1

    .line 175
    invoke-virtual {v1, v2, v6, v6, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 176
    new-instance v2, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1d
    .catchall {:try_start_c .. :try_end_c} :catchall_1b

    .line 177
    :try_start_d
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 178
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 180
    new-instance v14, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1c
    .catchall {:try_start_d .. :try_end_d} :catchall_1a

    if-eqz v11, :cond_d

    :try_start_e
    iget-object v6, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v6, :cond_d

    move-object/from16 v20, v11

    move/from16 v6, v35

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v46, v1

    move-object/from16 v44, v2

    move v14, v10

    move-object v2, v13

    move-object/from16 v21, v15

    move/from16 v62, v34

    move/from16 v4, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/4 v8, 0x0

    :goto_a
    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    move-object v1, v0

    :goto_b
    move v15, v12

    goto/16 :goto_ec

    :catch_2
    move-exception v0

    move-object v3, v0

    move v14, v10

    move/from16 v27, v35

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    move-object/from16 v35, v15

    :goto_c
    move v15, v12

    goto/16 :goto_53

    :cond_d
    move/from16 v6, v35

    const/16 v20, 0x0

    :goto_d
    int-to-float v11, v6

    move/from16 v26, v11

    const/16 v27, 0x1

    const/16 v30, 0x0

    move-object v11, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v33

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v21, v12

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v38

    move-object/from16 v31, p1

    :try_start_f
    invoke-direct/range {v14 .. v31}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1b
    .catchall {:try_start_f .. :try_end_f} :catchall_19

    .line 184
    :try_start_10
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1a
    .catchall {:try_start_10 .. :try_end_10} :catchall_18

    const/16 v14, 0x15

    if-ge v9, v14, :cond_e

    .line 185
    :try_start_11
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object/from16 v46, v1

    move-object/from16 v44, v2

    move v4, v6

    move v14, v10

    move-object v8, v11

    move v15, v12

    move-object v2, v13

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    goto/16 :goto_5c

    :catch_3
    move-exception v0

    move-object v3, v0

    move/from16 v27, v6

    move v14, v10

    move-object/from16 v30, v11

    move v15, v12

    const/4 v8, -0x5

    const/16 v22, 0x0

    goto/16 :goto_53

    :cond_e
    const/4 v9, 0x0

    .line 190
    :goto_e
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 192
    new-instance v14, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v14}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v16, v9

    move/from16 v9, v32

    invoke-virtual {v14, v3, v9, v15}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move-object/from16 v3, p1

    .line 196
    iget-object v9, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_18

    if-nez v9, :cond_f

    .line 198
    :try_start_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v14, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v14, v4, v5}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 201
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v14, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v14, v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 204
    new-instance v14, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v14, v9, v4, v5}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 205
    :try_start_14
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v5, v14, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move v3, v4

    move-object/from16 v9, v16

    const-wide/16 v4, 0x0

    const/4 v15, 0x0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v3, v0

    move/from16 v27, v6

    move-object/from16 v30, v11

    move v15, v12

    move-object/from16 v22, v14

    const/4 v8, -0x5

    goto/16 :goto_13

    :cond_f
    move-object/from16 v9, v16

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_f
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x5

    :goto_10
    if-eqz v17, :cond_11

    if-nez v15, :cond_10

    goto :goto_11

    :cond_10
    move v5, v6

    move v15, v12

    move-object/from16 v22, v14

    move/from16 v6, v37

    move-object/from16 v12, v53

    const/4 v8, 0x0

    const/16 v44, 0x0

    move-object v14, v11

    goto/16 :goto_55

    .line 208
    :cond_11
    :goto_11
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19
    .catchall {:try_start_15 .. :try_end_15} :catchall_17

    if-eqz v14, :cond_12

    .line 211
    :try_start_16
    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v14, v15, v3}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v15
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object/from16 v46, v1

    move-object/from16 v44, v2

    move v4, v6

    move v14, v10

    move-object v8, v11

    move v15, v12

    move-object v2, v13

    move/from16 v5, v21

    :goto_12
    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    goto/16 :goto_5b

    :catch_5
    move-exception v0

    move-object v3, v0

    move/from16 v27, v6

    move-object/from16 v30, v11

    move v15, v12

    move-object/from16 v22, v14

    move/from16 v8, v21

    :goto_13
    move v14, v10

    goto/16 :goto_53

    :cond_12
    :goto_14
    xor-int/lit8 v22, v18, 0x1

    const/16 v23, 0x1

    move/from16 v87, v20

    move/from16 v20, v3

    move/from16 v3, v87

    move/from16 v88, v22

    move-object/from16 v22, v14

    move/from16 v14, v21

    move/from16 v21, v88

    :goto_15
    if-nez v21, :cond_14

    if-eqz v23, :cond_13

    goto :goto_16

    :cond_13
    move/from16 v21, v14

    move-object/from16 v14, v22

    move/from16 v87, v20

    move/from16 v20, v3

    move/from16 v3, v87

    goto :goto_10

    .line 217
    :cond_14
    :goto_16
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    if-eqz p2, :cond_15

    const-wide/16 v24, 0x55f0

    move-object/from16 v26, v2

    move-wide/from16 v87, v24

    move/from16 v24, v3

    move-wide/from16 v2, v87

    goto :goto_17

    :cond_15
    move-object/from16 v26, v2

    move/from16 v24, v3

    const-wide/16 v2, 0x9c4

    .line 218
    :goto_17
    :try_start_18
    invoke-virtual {v1, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    move/from16 v27, v6

    move-object/from16 v30, v11

    move/from16 v25, v15

    move-object/from16 v6, v55

    const/16 v23, 0x0

    move/from16 v87, v2

    move-object v2, v1

    move/from16 v1, v17

    move-object/from16 v17, v9

    move/from16 v9, v87

    move/from16 v88, v10

    move v10, v3

    move/from16 v3, v88

    goto/16 :goto_32

    :cond_16
    const/4 v3, -0x3

    if-ne v2, v3, :cond_18

    .line 222
    :try_start_19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v25, v15

    const/16 v15, 0x15

    if-ge v3, v15, :cond_17

    .line 223
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :cond_17
    move/from16 v27, v6

    move v3, v10

    move-object/from16 v30, v11

    move-object/from16 v6, v55

    :goto_18
    const/4 v10, -0x1

    move/from16 v87, v2

    move-object v2, v1

    move/from16 v1, v17

    move-object/from16 v17, v9

    move/from16 v9, v87

    goto/16 :goto_32

    :catchall_5
    move-exception v0

    move-object/from16 v46, v1

    move v4, v6

    move-object v8, v11

    move v15, v12

    move-object v2, v13

    move v5, v14

    move-object/from16 v44, v26

    :goto_19
    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    move-object v1, v0

    move v14, v10

    goto/16 :goto_ec

    :catch_6
    move-exception v0

    move-object v3, v0

    move/from16 v27, v6

    :goto_1a
    move-object/from16 v30, v11

    :goto_1b
    move v15, v12

    move v8, v14

    move-object/from16 v2, v26

    goto/16 :goto_13

    :cond_18
    move/from16 v25, v15

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1f

    .line 226
    :try_start_1a
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 227
    sget-boolean v15, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v15, :cond_19

    .line 228
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move/from16 v27, v6

    :try_start_1b
    const-string/jumbo v6, "photo encoder new format "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1c

    :cond_19
    move/from16 v27, v6

    :goto_1c
    const/4 v6, -0x5

    if-ne v14, v6, :cond_1e

    if-eqz v3, :cond_1e

    .line 231
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v15, 0x0

    invoke-virtual {v6, v3, v15}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v14
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v6, v57

    .line 232
    :try_start_1c
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v57, v6

    const/4 v6, 0x1

    if-ne v15, v6, :cond_1d

    move-object/from16 v6, v55

    .line 233
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v15
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    move/from16 v28, v14

    :try_start_1d
    const-string v14, "csd-1"

    .line 234
    invoke-virtual {v3, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v15, :cond_1a

    const/4 v14, 0x0

    goto :goto_1d

    .line 235
    :cond_1a
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    :goto_1d
    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1e

    :cond_1b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :goto_1e
    add-int v19, v14, v3

    goto :goto_1f

    :catchall_6
    move-exception v0

    goto :goto_20

    :catch_7
    move-exception v0

    goto :goto_21

    :cond_1c
    move-object/from16 v57, v6

    :cond_1d
    move/from16 v28, v14

    move-object/from16 v6, v55

    :goto_1f
    move/from16 v14, v28

    goto :goto_22

    :catchall_7
    move-exception v0

    move/from16 v28, v14

    :goto_20
    move-object/from16 v46, v1

    move v14, v10

    move-object v8, v11

    move v15, v12

    move-object v2, v13

    move-object/from16 v44, v26

    move/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_12

    :catch_8
    move-exception v0

    move/from16 v28, v14

    :goto_21
    move-object v3, v0

    move v14, v10

    move-object/from16 v30, v11

    move v15, v12

    move-object/from16 v2, v26

    move/from16 v8, v28

    goto/16 :goto_53

    :cond_1e
    move-object/from16 v6, v55

    :goto_22
    move v3, v10

    move-object/from16 v30, v11

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move/from16 v27, v6

    :goto_23
    move-object v3, v0

    goto/16 :goto_1a

    :cond_1f
    move/from16 v27, v6

    move-object/from16 v6, v55

    if-ltz v2, :cond_31

    .line 242
    :try_start_1e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_15
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    const/16 v15, 0x15

    if-ge v3, v15, :cond_20

    .line 243
    :try_start_1f
    aget-object v3, v9, v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    goto :goto_24

    :catchall_8
    move-exception v0

    move-object/from16 v46, v1

    move-object v8, v11

    move v15, v12

    move-object v2, v13

    move v5, v14

    move-object/from16 v44, v26

    move/from16 v4, v27

    goto/16 :goto_19

    :catch_a
    move-exception v0

    goto :goto_23

    .line 245
    :cond_20
    :try_start_20
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_24
    if-eqz v3, :cond_30

    .line 250
    iget v15, v8, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    move-object/from16 v17, v9

    const/4 v9, 0x1

    if-le v15, v9, :cond_2b

    .line 251
    :try_start_21
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    and-int/lit8 v28, v9, 0x2

    if-nez v28, :cond_26

    if-eqz v19, :cond_21

    and-int/lit8 v28, v9, 0x1

    if-eqz v28, :cond_21

    move-object/from16 v30, v11

    .line 253
    :try_start_22
    iget v11, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v11, v11, v19

    iput v11, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v15, v15, v19

    .line 254
    iput v15, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_25

    :catchall_9
    move-exception v0

    move-object/from16 v46, v1

    move v15, v12

    move-object v2, v13

    move v5, v14

    move-object/from16 v44, v26

    move/from16 v4, v27

    move-object/from16 v8, v30

    goto/16 :goto_19

    :catch_b
    move-exception v0

    move-object v3, v0

    goto/16 :goto_1b

    :cond_21
    move-object/from16 v30, v11

    :goto_25
    if-eqz v16, :cond_22

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_22

    .line 257
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v9, v3, v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    const/16 v16, 0x0

    .line 260
    :cond_22
    :try_start_23
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    move-object v15, v1

    move/from16 v28, v2

    const/4 v11, 0x1

    :try_start_24
    invoke-virtual {v9, v14, v3, v8, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v1

    const-wide/16 v31, 0x0

    cmp-long v3, v1, v31

    if-eqz v3, :cond_24

    .line 262
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    if-eqz v3, :cond_24

    move/from16 v31, v10

    .line 263
    :try_start_25
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v11, v9, v4

    if-lez v11, :cond_23

    move-wide v4, v9

    :cond_23
    long-to-float v9, v4

    div-float v9, v9, v50

    div-float v9, v9, v50

    div-float v9, v9, v51

    .line 266
    invoke-interface {v3, v1, v2, v9}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    goto :goto_26

    :catchall_a
    move-exception v0

    goto :goto_29

    :catch_c
    move-exception v0

    goto :goto_27

    :cond_24
    move/from16 v31, v10

    :cond_25
    :goto_26
    move/from16 v3, v31

    goto/16 :goto_30

    :catchall_b
    move-exception v0

    goto :goto_28

    :catch_d
    move-exception v0

    move/from16 v31, v10

    :goto_27
    move-object v3, v0

    move v8, v14

    move-object v1, v15

    goto :goto_2a

    :catchall_c
    move-exception v0

    move-object v15, v1

    :goto_28
    move/from16 v31, v10

    :goto_29
    move-object v1, v0

    move-object v2, v13

    move v5, v14

    move-object/from16 v46, v15

    move-object/from16 v44, v26

    move/from16 v4, v27

    move-object/from16 v8, v30

    move/from16 v14, v31

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    goto/16 :goto_b

    :catch_e
    move-exception v0

    move-object v15, v1

    move/from16 v31, v10

    move-object v3, v0

    move v8, v14

    :goto_2a
    move-object/from16 v2, v26

    move/from16 v14, v31

    goto/16 :goto_c

    :cond_26
    move-object v15, v1

    move/from16 v28, v2

    move/from16 v31, v10

    move-object/from16 v30, v11

    const/4 v10, -0x5

    if-ne v14, v10, :cond_25

    .line 270
    :try_start_26
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 273
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v1, [B

    .line 274
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v9, v1

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 275
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 279
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_10
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_2b
    if-ltz v1, :cond_28

    const/4 v9, 0x3

    if-le v1, v9, :cond_28

    .line 281
    :try_start_27
    aget-byte v11, v2, v1

    if-ne v11, v3, :cond_27

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_27

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v2, v3

    if-nez v3, :cond_27

    add-int/lit8 v3, v1, -0x3

    aget-byte v11, v2, v3

    if-nez v11, :cond_27

    .line 282
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 283
    iget v11, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v9, 0x0

    .line 284
    invoke-virtual {v1, v2, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 285
    iget v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v3

    invoke-virtual {v11, v2, v3, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_c
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    goto :goto_2c

    :cond_27
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    const/4 v10, -0x5

    goto :goto_2b

    :cond_28
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 293
    :goto_2c
    :try_start_28
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_10
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    move/from16 v3, v31

    :try_start_29
    invoke-static {v2, v12, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v1, :cond_29

    if-eqz v11, :cond_29

    .line 295
    invoke-virtual {v2, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v1, "csd-1"

    .line 296
    invoke-virtual {v2, v1, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 298
    :cond_29
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v14

    goto/16 :goto_30

    :cond_2a
    move/from16 v3, v31

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_f
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_2e

    :catch_f
    move-exception v0

    goto :goto_2d

    :catchall_e
    move-exception v0

    move/from16 v3, v31

    goto :goto_2e

    :catch_10
    move-exception v0

    move/from16 v3, v31

    :goto_2d
    move v8, v14

    move-object v1, v15

    goto :goto_2f

    :catchall_f
    move-exception v0

    move-object v15, v1

    move v3, v10

    move-object/from16 v30, v11

    :goto_2e
    move-object v1, v0

    move-object v2, v13

    move v5, v14

    move-object/from16 v46, v15

    move-object/from16 v44, v26

    move/from16 v4, v27

    move-object/from16 v8, v30

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    goto/16 :goto_3c

    :catch_11
    move-exception v0

    move-object v15, v1

    move v3, v10

    move-object/from16 v30, v11

    move v8, v14

    :goto_2f
    move-object/from16 v2, v26

    move v14, v3

    move v15, v12

    goto/16 :goto_4a

    :cond_2b
    move-object v15, v1

    move/from16 v28, v2

    move v3, v10

    move-object/from16 v30, v11

    .line 301
    :goto_30
    :try_start_2a
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_14
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    and-int/lit8 v1, v1, 0x4

    move-object v2, v15

    move/from16 v9, v28

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_31

    :cond_2c
    const/4 v1, 0x0

    :goto_31
    const/4 v10, 0x0

    .line 302
    :try_start_2b
    invoke-virtual {v2, v9, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_13
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    const/4 v10, -0x1

    :goto_32
    if-eq v9, v10, :cond_2d

    move v10, v3

    move-object/from16 v55, v6

    move-object/from16 v9, v17

    move/from16 v3, v24

    move/from16 v15, v25

    move/from16 v6, v27

    move-object/from16 v11, v30

    move/from16 v17, v1

    move-object v1, v2

    move-object/from16 v2, v26

    goto/16 :goto_15

    :cond_2d
    if-nez v18, :cond_2e

    move/from16 v9, v24

    int-to-float v10, v9

    const/high16 v11, 0x41f00000    # 30.0f

    div-float/2addr v10, v11

    mul-float v10, v10, v50

    mul-float v10, v10, v50

    mul-float v10, v10, v50

    float-to-long v10, v10

    move-object/from16 v15, v30

    .line 310
    :try_start_2c
    invoke-virtual {v15, v10, v11}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_12
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    move/from16 v24, v1

    move-object/from16 v1, v26

    .line 311
    :try_start_2d
    invoke-virtual {v1, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 312
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v9

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float v11, v11, v51

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2f

    .line 318
    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v18, 0x1

    const/16 v21, 0x0

    goto :goto_33

    :catchall_10
    move-exception v0

    goto/16 :goto_36

    :catch_12
    move-exception v0

    goto/16 :goto_39

    :cond_2e
    move/from16 v9, v24

    move-object/from16 v15, v30

    move/from16 v24, v1

    move-object/from16 v1, v26

    :cond_2f
    :goto_33
    move v10, v3

    move-object/from16 v55, v6

    move v3, v9

    move-object v11, v15

    move-object/from16 v9, v17

    move/from16 v17, v24

    move/from16 v15, v25

    move/from16 v6, v27

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    goto/16 :goto_15

    :catchall_11
    move-exception v0

    goto :goto_34

    :catch_13
    move-exception v0

    goto :goto_35

    :catchall_12
    move-exception v0

    move-object v2, v15

    :goto_34
    move-object/from16 v1, v26

    move-object/from16 v15, v30

    goto :goto_37

    :catch_14
    move-exception v0

    move-object v2, v15

    :goto_35
    move-object/from16 v1, v26

    move-object/from16 v15, v30

    move v8, v14

    goto/16 :goto_3e

    :cond_30
    move v9, v2

    move v3, v10

    move-object v15, v11

    move-object v2, v1

    move-object/from16 v1, v26

    .line 248
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

    :catchall_13
    move-exception v0

    move-object v2, v1

    move v3, v10

    move-object v15, v11

    :goto_36
    move-object/from16 v1, v26

    :goto_37
    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move-object v2, v13

    move v5, v14

    move-object v8, v15

    move/from16 v4, v27

    goto :goto_3b

    :catch_15
    move-exception v0

    move-object v2, v1

    goto :goto_38

    :cond_31
    move v9, v2

    move v3, v10

    move-object v15, v11

    move-object v2, v1

    move-object/from16 v1, v26

    .line 239
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
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_16
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    :catchall_14
    move-exception v0

    goto :goto_37

    :catch_16
    move-exception v0

    goto :goto_3d

    :catchall_15
    move-exception v0

    move-object v2, v1

    move v3, v10

    move-object v15, v11

    move-object/from16 v1, v26

    goto :goto_3a

    :catch_17
    move-exception v0

    move-object v2, v1

    move/from16 v27, v6

    :goto_38
    move v3, v10

    move-object v15, v11

    :goto_39
    move-object/from16 v1, v26

    goto :goto_3d

    :catchall_16
    move-exception v0

    move v3, v10

    move-object v15, v11

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    :goto_3a
    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move v4, v6

    move-object v2, v13

    move v5, v14

    move-object v8, v15

    :goto_3b
    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    move-object v1, v0

    :goto_3c
    move v14, v3

    goto/16 :goto_b

    :catch_18
    move-exception v0

    move/from16 v27, v6

    move v3, v10

    move-object v15, v11

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    :goto_3d
    move v8, v14

    move-object/from16 v30, v15

    :goto_3e
    move v14, v3

    move v15, v12

    goto/16 :goto_42

    :catchall_17
    move-exception v0

    move v3, v10

    move-object v15, v11

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move v14, v3

    move v4, v6

    move-object v2, v13

    move-object v8, v15

    move/from16 v5, v21

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    goto/16 :goto_a

    :catch_19
    move-exception v0

    move/from16 v27, v6

    move v3, v10

    move-object v15, v11

    move-object/from16 v22, v14

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move v14, v3

    move-object/from16 v30, v15

    move/from16 v8, v21

    goto :goto_3f

    :catchall_18
    move-exception v0

    move v3, v10

    move-object v15, v11

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move v14, v3

    move v4, v6

    move-object v2, v13

    move-object v8, v15

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    goto/16 :goto_a

    :catch_1a
    move-exception v0

    move/from16 v27, v6

    move v3, v10

    move-object v15, v11

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move v14, v3

    move-object/from16 v30, v15

    const/4 v8, -0x5

    const/16 v22, 0x0

    :goto_3f
    move-object v3, v0

    move v15, v12

    goto/16 :goto_43

    :catchall_19
    move-exception v0

    move v3, v10

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move v14, v3

    move v4, v6

    move v15, v12

    move-object v2, v13

    goto :goto_40

    :catch_1b
    move-exception v0

    move/from16 v27, v6

    move v3, v10

    goto :goto_41

    :catchall_1a
    move-exception v0

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move-object/from16 v44, v1

    move-object/from16 v46, v2

    move v14, v3

    move v15, v12

    move-object v2, v13

    move/from16 v4, v27

    :goto_40
    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/4 v8, 0x0

    goto/16 :goto_5c

    :catch_1c
    move-exception v0

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    :goto_41
    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    move v14, v3

    move v15, v12

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    :goto_42
    move-object v3, v0

    :goto_43
    move-object/from16 v87, v2

    move-object v2, v1

    move-object/from16 v1, v87

    goto/16 :goto_53

    :catchall_1b
    move-exception v0

    move-object v2, v1

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move-object v1, v0

    move-object/from16 v46, v2

    move v14, v3

    move v15, v12

    move-object v2, v13

    move/from16 v4, v27

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v6, v37

    goto :goto_44

    :catch_1d
    move-exception v0

    move-object v2, v1

    goto :goto_45

    :catchall_1c
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move-object v1, v0

    move-object/from16 v46, v2

    move v14, v3

    move v15, v12

    move-object v2, v13

    move/from16 v4, v27

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    :goto_44
    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    goto/16 :goto_50

    :catch_1e
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    :goto_45
    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move v14, v3

    move v15, v12

    const/4 v2, 0x0

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    goto/16 :goto_4a

    :catchall_1d
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move-object v1, v0

    move-object/from16 v46, v2

    move v14, v3

    move v15, v12

    move-object v2, v13

    move/from16 v4, v27

    move/from16 v62, v34

    move-object/from16 v21, v35

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/4 v8, 0x0

    goto :goto_46

    :catch_1f
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    move v3, v10

    move/from16 v27, v35

    move-object/from16 v35, v15

    move v14, v3

    move v15, v12

    const/4 v2, 0x0

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    goto :goto_49

    :catchall_1e
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    move v3, v10

    move-object v1, v0

    move-object/from16 v46, v2

    move v14, v3

    move v15, v12

    move-object v2, v13

    move/from16 v62, v34

    move/from16 v4, v35

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_46
    const/16 v44, 0x0

    goto :goto_4f

    :catch_20
    move-exception v0

    move-object v2, v1

    move/from16 v37, v6

    move v3, v10

    move/from16 v27, v35

    move v14, v3

    move v15, v12

    goto :goto_48

    :catchall_1f
    move-exception v0

    move/from16 v37, v6

    move v3, v10

    move-object v1, v0

    move v14, v3

    :goto_47
    move v15, v12

    goto :goto_4c

    :catch_21
    move-exception v0

    move/from16 v37, v6

    move v3, v10

    move/from16 v27, v35

    move v14, v3

    move v15, v12

    const/4 v1, 0x0

    :goto_48
    const/4 v2, 0x0

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    :goto_49
    const/16 v36, 0x0

    :goto_4a
    move-object v3, v0

    goto :goto_53

    :catchall_20
    move-exception v0

    move/from16 v37, v6

    :goto_4b
    move-object v1, v0

    :goto_4c
    move-object v2, v13

    move/from16 v62, v34

    move/from16 v4, v35

    move-object/from16 v32, v52

    :goto_4d
    move-object/from16 v9, v53

    :goto_4e
    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    :goto_4f
    const/16 v47, 0x0

    const/16 v78, 0x0

    :goto_50
    const/16 v81, 0x0

    :goto_51
    move/from16 v13, p2

    goto/16 :goto_ec

    :catch_22
    move-exception v0

    move/from16 v37, v6

    move/from16 v27, v35

    move-object v3, v0

    :goto_52
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, -0x5

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 327
    :goto_53
    :try_start_2e
    instance-of v4, v3, Ljava/lang/IllegalStateException;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_26

    if-eqz v4, :cond_32

    if-nez p2, :cond_32

    const/16 v44, 0x1

    goto :goto_54

    :cond_32
    const/16 v44, 0x0

    .line 330
    :goto_54
    :try_start_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_25

    move/from16 v6, v37

    :try_start_30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " framerate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_24

    move/from16 v5, v27

    :try_start_31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_23

    move-object/from16 v12, v53

    :try_start_32
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 331
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_22

    move/from16 v21, v8

    move v10, v14

    move-object/from16 v14, v30

    const/4 v8, 0x1

    :goto_55
    if-eqz v14, :cond_33

    .line 336
    :try_start_33
    invoke-virtual {v14}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v14, 0x0

    goto :goto_56

    :catchall_21
    move-exception v0

    move-object/from16 v46, v1

    move v4, v5

    move-object v9, v12

    move-object v8, v14

    move/from16 v5, v21

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v81, v44

    move-object/from16 v32, v52

    const/16 v47, 0x0

    move-object v1, v0

    move-object/from16 v44, v2

    move v14, v10

    goto/16 :goto_5a

    :cond_33
    :goto_56
    if-eqz v2, :cond_34

    .line 340
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/4 v2, 0x0

    :cond_34
    if-eqz v1, :cond_35

    .line 344
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 345
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    :cond_35
    if-eqz v22, :cond_36

    .line 349
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 351
    :cond_36
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    move-object/from16 v46, v1

    move v7, v8

    move v5, v10

    move/from16 v8, v21

    move/from16 v62, v34

    move-object/from16 v61, v35

    move/from16 v78, v36

    move/from16 v1, v44

    move-object/from16 v32, v52

    const/16 v47, 0x0

    move-object/from16 v44, v2

    move-object v2, v13

    goto/16 :goto_62

    :catchall_22
    move-exception v0

    move-object/from16 v46, v1

    move v4, v5

    move v5, v8

    move-object v9, v12

    move-object/from16 v8, v30

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v81, v44

    move-object/from16 v32, v52

    goto :goto_59

    :catchall_23
    move-exception v0

    move-object/from16 v46, v1

    move v4, v5

    move v5, v8

    goto :goto_58

    :catchall_24
    move-exception v0

    goto :goto_57

    :catchall_25
    move-exception v0

    move/from16 v6, v37

    :goto_57
    move-object/from16 v46, v1

    move v5, v8

    move/from16 v4, v27

    :goto_58
    move-object/from16 v8, v30

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    move/from16 v81, v44

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    :goto_59
    const/16 v47, 0x0

    move-object v1, v0

    move-object/from16 v44, v2

    :goto_5a
    move-object v2, v13

    goto/16 :goto_51

    :catchall_26
    move-exception v0

    move/from16 v6, v37

    move-object/from16 v46, v1

    move-object/from16 v44, v2

    move v5, v8

    move-object v2, v13

    move/from16 v4, v27

    move-object/from16 v8, v30

    move/from16 v62, v34

    move-object/from16 v21, v35

    move/from16 v78, v36

    :goto_5b
    move-object/from16 v32, v52

    move-object/from16 v9, v53

    :goto_5c
    const/16 v47, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    :goto_5d
    move-object v1, v0

    goto/16 :goto_ec

    :cond_37
    move v10, v9

    move-object/from16 v4, v21

    move-object/from16 v11, v30

    move/from16 v9, v32

    const/16 v21, 0x3

    const/16 v32, 0x0

    move-wide/from16 v30, v1

    move-object v2, v12

    move-object/from16 v12, v53

    move-object/from16 v1, v55

    .line 353
    :try_start_34
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_58

    move-object/from16 v53, v12

    move-object/from16 v12, v33

    .line 354
    :try_start_35
    invoke-virtual {v5, v12}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 356
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v33, v7

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_57

    const/4 v7, -0x1

    if-eq v6, v7, :cond_38

    if-nez v26, :cond_38

    .line 357
    :try_start_36
    iget-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_27

    move/from16 v46, v14

    const/4 v14, 0x1

    :try_start_37
    invoke-static {v7, v14}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_28

    move-object/from16 v55, v1

    goto :goto_5f

    :catchall_27
    move-exception v0

    move/from16 v46, v14

    move-object v1, v0

    move-object v2, v13

    move-object/from16 v8, v32

    move-object/from16 v21, v8

    move-object/from16 v44, v21

    move-object/from16 v47, v44

    move/from16 v62, v34

    move/from16 v4, v35

    :goto_5e
    move-object/from16 v9, v53

    const/4 v5, -0x5

    const/16 v78, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    move-object/from16 v46, v47

    move-object/from16 v32, v52

    goto/16 :goto_ec

    :cond_38
    move/from16 v46, v14

    const/4 v14, 0x1

    move-object/from16 v55, v1

    const/4 v7, -0x1

    :goto_5f
    const-string/jumbo v1, "mime"

    if-ltz v5, :cond_39

    .line 359
    :try_start_38
    iget-object v14, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v47, v7

    const-string/jumbo v7, "video/avc"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_28

    if-nez v7, :cond_3a

    const/4 v7, 0x1

    goto :goto_60

    :catchall_28
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    move-object/from16 v8, v32

    move-object/from16 v21, v8

    move-object/from16 v44, v21

    move-object/from16 v47, v44

    move/from16 v62, v34

    move/from16 v4, v35

    move/from16 v14, v46

    goto :goto_5e

    :cond_39
    move/from16 v47, v7

    :cond_3a
    const/4 v7, 0x0

    :goto_60
    if-nez v34, :cond_3d

    if-eqz v7, :cond_3b

    goto/16 :goto_63

    .line 884
    :cond_3b
    :try_start_39
    new-instance v1, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v1}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v9, v7}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 885
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_29

    const/4 v1, -0x1

    if-eq v6, v1, :cond_3c

    if-nez v26, :cond_3c

    move-wide/from16 v9, v30

    const/4 v12, 0x1

    goto :goto_61

    :cond_3c
    move v12, v7

    move-wide/from16 v9, v30

    :goto_61
    move-object/from16 v1, p0

    move-wide/from16 v4, v17

    move-wide/from16 v57, v19

    move-wide/from16 v59, v4

    move-object v4, v8

    move v14, v6

    move/from16 v11, v35

    move-wide/from16 v5, v59

    move/from16 v17, v15

    move v15, v7

    move-wide/from16 v7, v57

    move/from16 v62, v34

    move-object/from16 v32, v52

    move v15, v11

    move-object/from16 v11, v32

    move-object/from16 v63, v53

    :try_start_3a
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2a

    move-object v2, v13

    move v6, v14

    move/from16 v15, v17

    move/from16 v5, v46

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x5

    const/4 v14, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v61, 0x0

    const/16 v78, 0x0

    :goto_62
    move/from16 v13, p2

    goto/16 :goto_e8

    :catchall_29
    move-exception v0

    move v14, v6

    move/from16 v17, v15

    move/from16 v62, v34

    move-object/from16 v32, v52

    move-object v1, v0

    move-object v2, v13

    move/from16 v4, v35

    move/from16 v14, v46

    goto/16 :goto_4d

    :cond_3d
    :goto_63
    move v14, v6

    move-wide/from16 v59, v17

    move-wide/from16 v57, v19

    move-wide/from16 v6, v30

    move/from16 v62, v34

    move-object/from16 v32, v52

    move-object/from16 v63, v53

    move/from16 v17, v15

    move/from16 v15, v35

    if-ltz v5, :cond_b5

    const-wide/32 v34, -0x80000000

    move-wide/from16 v52, v6

    const/16 v6, 0x3e8

    .line 378
    :try_start_3b
    div-int v7, v6, v15
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_48
    .catchall {:try_start_3b .. :try_end_3b} :catchall_4d

    mul-int/2addr v7, v6

    move-object/from16 v64, v8

    move/from16 v45, v9

    int-to-long v8, v7

    const/16 v7, 0x1e

    if-ge v15, v7, :cond_3e

    add-int/lit8 v7, v15, 0x5

    .line 381
    :try_start_3c
    div-int v7, v6, v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_23
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2a

    :goto_64
    mul-int/2addr v7, v6

    int-to-long v6, v7

    goto :goto_67

    :catchall_2a
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    move v6, v14

    :goto_65
    move v4, v15

    move/from16 v15, v17

    move/from16 v14, v46

    move-object/from16 v9, v63

    goto/16 :goto_4e

    :catch_23
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move/from16 v67, v5

    move v6, v14

    :goto_66
    move/from16 v80, v15

    move/from16 v79, v17

    goto/16 :goto_da

    :cond_3e
    add-int/lit8 v7, v15, 0x1

    .line 383
    :try_start_3d
    div-int v7, v6, v7

    goto :goto_64

    :goto_67
    move-wide/from16 v65, v6

    .line 386
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 387
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_48
    .catchall {:try_start_3d .. :try_end_3d} :catchall_4d

    if-eqz v27, :cond_42

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v6, v51, v6

    if-gtz v6, :cond_3f

    const v6, 0x27ac40

    goto :goto_68

    :cond_3f
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, v51, v6

    if-gtz v6, :cond_40

    const v6, 0x2191c0

    goto :goto_68

    :cond_40
    const v6, 0x17cdc0

    :goto_68
    const v14, 0xe4e1c0

    move/from16 v67, v5

    move/from16 v5, v16

    if-lt v5, v14, :cond_41

    :try_start_3e
    const-string v14, "OMX.google.h264.encoder"

    goto :goto_69

    :cond_41
    const/4 v14, 0x0

    :goto_69
    const-wide/16 v48, 0x0

    goto :goto_6b

    :cond_42
    move/from16 v67, v5

    move/from16 v5, v16

    if-gtz v14, :cond_43

    const v6, 0xe1000

    goto :goto_6a

    :cond_43
    move v6, v14

    :goto_6a
    const/4 v14, 0x0

    :goto_6b
    if-lez v5, :cond_44

    .line 406
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v5

    goto :goto_6c

    :catchall_2b
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    goto :goto_65

    :catch_24
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    goto :goto_66

    :cond_44
    :goto_6c
    const-wide/16 v18, 0x0

    cmp-long v5, v48, v18

    const-wide/16 v68, -0x1

    move-wide/from16 v70, v8

    if-ltz v5, :cond_45

    move-wide/from16 v8, v68

    goto :goto_6d

    :cond_45
    move-wide/from16 v8, v48

    :goto_6d
    cmp-long v5, v8, v18

    if-ltz v5, :cond_46

    .line 415
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v48, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v8, v9, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide/from16 v72, v59

    const/4 v5, 0x0

    move-wide/from16 v59, v8

    :goto_6e
    const-wide/16 v8, 0x0

    goto :goto_6f

    :cond_46
    move-object/from16 v48, v2

    const-wide/16 v18, 0x0

    move-wide/from16 v87, v8

    move-wide/from16 v8, v59

    move-wide/from16 v59, v87

    cmp-long v2, v8, v18

    if-lez v2, :cond_47

    .line 417
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v2, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_24
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2b

    move-wide/from16 v72, v8

    const/4 v5, 0x0

    goto :goto_6e

    .line 419
    :cond_47
    :try_start_3f
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v72, v8

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_47
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4c

    :goto_6f
    if-eqz v11, :cond_4a

    .line 424
    :try_start_40
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_4a

    const/16 v2, 0x5a

    move/from16 v5, v25

    if-eq v5, v2, :cond_49

    const/16 v2, 0x10e

    if-ne v5, v2, :cond_48

    goto :goto_70

    .line 429
    :cond_48
    iget v2, v11, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 430
    iget v8, v11, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_71

    .line 426
    :cond_49
    :goto_70
    iget v2, v11, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 427
    iget v8, v11, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_24
    .catchall {:try_start_40 .. :try_end_40} :catchall_2b

    :goto_71
    move v9, v8

    goto :goto_72

    :cond_4a
    move/from16 v5, v25

    move/from16 v2, v17

    move/from16 v9, v46

    :goto_72
    if-eqz v14, :cond_4b

    .line 439
    :try_start_41
    invoke-static {v14}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_25
    .catchall {:try_start_41 .. :try_end_41} :catchall_2b

    goto :goto_73

    :catch_25
    :cond_4b
    const/4 v8, 0x0

    :goto_73
    if-nez v8, :cond_4c

    .line 446
    :try_start_42
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v8
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_26
    .catchall {:try_start_42 .. :try_end_42} :catchall_2c

    goto :goto_75

    :catchall_2c
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    move v4, v15

    move/from16 v15, v17

    move/from16 v14, v46

    move-object/from16 v9, v63

    const/4 v5, -0x5

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    const/16 v81, 0x0

    move/from16 v13, p2

    :goto_74
    move-object/from16 v46, v8

    const/4 v8, 0x0

    goto/16 :goto_ec

    :catch_26
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object v1, v8

    move/from16 v80, v15

    move/from16 v79, v17

    goto/16 :goto_db

    .line 449
    :cond_4c
    :goto_75
    :try_start_43
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_46
    .catchall {:try_start_43 .. :try_end_43} :catchall_4b

    if-eqz v14, :cond_4d

    .line 450
    :try_start_44
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v12

    const-string v12, "create encoder with w = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bitrate = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_26
    .catchall {:try_start_44 .. :try_end_44} :catchall_2c

    goto :goto_76

    :cond_4d
    move-object/from16 v49, v12

    .line 452
    :goto_76
    :try_start_45
    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v12, v2, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v12

    const-string v14, "color-format"

    move-object/from16 v74, v1

    const v1, 0x7f000789

    .line 453
    invoke-virtual {v12, v14, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    .line 454
    invoke-virtual {v12, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_46
    .catchall {:try_start_45 .. :try_end_45} :catchall_4b

    if-eqz v27, :cond_4e

    .line 455
    :try_start_46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v1, v14, :cond_4e

    const-string v1, "bitrate-mode"

    const/4 v14, 0x2

    .line 457
    invoke-virtual {v12, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_26
    .catchall {:try_start_46 .. :try_end_46} :catchall_2c

    :cond_4e
    :try_start_47
    const-string/jumbo v1, "max-bitrate"

    .line 459
    invoke-virtual {v12, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    .line 460
    invoke-virtual {v12, v1, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v14, 0x1

    .line 461
    invoke-virtual {v12, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 465
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_46
    .catchall {:try_start_47 .. :try_end_47} :catchall_4b

    const/16 v14, 0x18

    if-lt v1, v14, :cond_54

    :try_start_48
    const-string v14, "color-transfer"

    .line 466
    invoke-virtual {v7, v14}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_26
    .catchall {:try_start_48 .. :try_end_48} :catchall_2d

    if-eqz v14, :cond_4f

    :try_start_49
    const-string v14, "color-transfer"

    .line 467
    invoke-virtual {v7, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_26
    .catchall {:try_start_49 .. :try_end_49} :catchall_2c

    move-object/from16 v75, v3

    goto :goto_77

    :cond_4f
    move-object/from16 v75, v3

    const/4 v14, 0x0

    :goto_77
    :try_start_4a
    const-string v3, "color-standard"

    .line 469
    invoke-virtual {v7, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_26
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2d

    if-eqz v3, :cond_50

    :try_start_4b
    const-string v3, "color-standard"

    .line 470
    invoke-virtual {v7, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_26
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2c

    goto :goto_78

    :cond_50
    const/4 v3, 0x0

    :goto_78
    :try_start_4c
    const-string v13, "color-range"

    .line 472
    invoke-virtual {v7, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_51

    const-string v13, "color-range"

    .line 473
    invoke-virtual {v7, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    :cond_51
    const/4 v13, 0x6

    if-eq v14, v13, :cond_52

    const/4 v13, 0x7

    if-ne v14, v13, :cond_53

    :cond_52
    const/4 v13, 0x6

    if-ne v3, v13, :cond_53

    move v13, v14

    move v14, v3

    const/4 v3, 0x1

    goto :goto_79

    :cond_53
    move v13, v14

    move v14, v3

    const/4 v3, 0x0

    goto :goto_79

    :catchall_2d
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v13, p2

    move-object v1, v0

    move v4, v15

    move/from16 v15, v17

    move/from16 v14, v46

    move-object/from16 v9, v63

    const/4 v5, -0x5

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    const/16 v81, 0x0

    goto/16 :goto_74

    :cond_54
    move-object/from16 v75, v3

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_79
    move-object/from16 v76, v7

    const/16 v7, 0x17

    if-ge v1, v7, :cond_56

    .line 480
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v77, v9

    const/16 v9, 0x1e0

    if-gt v7, v9, :cond_57

    if-nez v27, :cond_57

    const v7, 0xe1000

    if-le v6, v7, :cond_55

    move v6, v7

    :cond_55
    const-string v7, "bitrate"

    .line 484
    invoke-virtual {v12, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_26
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2d

    goto :goto_7a

    :cond_56
    move/from16 v77, v9

    :cond_57
    :goto_7a
    move/from16 v56, v6

    .line 487
    :try_start_4d
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_45
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4a

    :try_start_4e
    const-string v6, "c2.qti.avc.encoder"

    .line 488
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_44
    .catchall {:try_start_4e .. :try_end_4e} :catchall_49

    .line 489
    :try_start_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selected encoder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 490
    invoke-virtual {v8, v12, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    move/from16 v43, v2

    .line 491
    new-instance v2, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_43
    .catchall {:try_start_4f .. :try_end_4f} :catchall_48

    .line 492
    :try_start_50
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 493
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    .line 495
    new-instance v6, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_42
    .catchall {:try_start_50 .. :try_end_50} :catchall_47

    const/16 v16, 0x0

    int-to-float v7, v15

    move/from16 v26, v7

    const/16 v27, 0x0

    move/from16 v7, v46

    move-object/from16 v46, v8

    move v8, v14

    move-object v14, v6

    move-object/from16 v44, v2

    move/from16 v80, v15

    move/from16 v79, v17

    const/4 v2, 0x1

    move-object/from16 v15, v24

    move-object/from16 v17, v4

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v11

    move/from16 v21, v79

    move/from16 v22, v7

    move/from16 v23, v10

    move/from16 v24, v38

    move/from16 v25, v5

    move-object/from16 v30, v37

    move-object/from16 v31, p1

    :try_start_51
    invoke-direct/range {v14 .. v31}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_41
    .catchall {:try_start_51 .. :try_end_51} :catchall_46

    if-nez v37, :cond_59

    .line 496
    :try_start_52
    invoke-virtual {v6}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz v3, :cond_59

    .line 497
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    .line 498
    iput v13, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 499
    iput v8, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_58

    const-string v4, "color-transfer"

    const/4 v11, 0x3

    .line 502
    invoke-virtual {v12, v4, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_27
    .catchall {:try_start_52 .. :try_end_52} :catchall_2e

    goto :goto_7d

    :cond_58
    const/4 v11, 0x3

    goto :goto_7d

    :catchall_2e
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v13, p2

    move-object v1, v0

    move-object v8, v6

    move v14, v7

    move-object/from16 v21, v9

    :goto_7b
    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    const/4 v5, -0x5

    const/16 v47, 0x0

    goto/16 :goto_d9

    :catch_27
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object v15, v6

    move-object/from16 v21, v9

    :goto_7c
    move-object/from16 v1, v46

    move/from16 v6, v56

    const/4 v8, -0x5

    const/16 v45, 0x0

    const/16 v84, 0x0

    move/from16 v46, v7

    goto/16 :goto_de

    :cond_59
    const/4 v11, 0x3

    move-object/from16 v3, v37

    :goto_7d
    const/16 v4, 0x18

    if-lt v1, v4, :cond_5a

    if-eqz v3, :cond_5a

    .line 505
    :try_start_53
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {v6}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_29
    .catchall {:try_start_53 .. :try_end_53} :catchall_30

    if-eqz v4, :cond_5a

    const/4 v8, 0x1

    move v4, v10

    move/from16 v12, v67

    move/from16 v5, v38

    move-object v15, v6

    move-wide/from16 v13, v52

    move/from16 v6, v79

    move/from16 v16, v7

    move-object/from16 v83, v33

    move/from16 v11, v47

    move-object/from16 v82, v76

    move-wide/from16 v30, v13

    move-wide/from16 v17, v59

    move-object/from16 v14, v64

    move-wide/from16 v19, v70

    move-wide/from16 v12, v72

    move-object/from16 v21, v9

    move/from16 v85, v45

    move/from16 v86, v77

    move-object v9, v3

    .line 507
    :try_start_54
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    move v4, v10

    move/from16 v5, v38

    move/from16 v6, v79

    move/from16 v7, v16

    move-object v10, v9

    move-object v9, v3

    .line 508
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v15, v10, v3, v2}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_28
    .catchall {:try_start_54 .. :try_end_54} :catchall_2f

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v3, v16

    goto/16 :goto_84

    :catchall_2f
    move-exception v0

    goto :goto_7e

    :catch_28
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v1, v46

    move/from16 v6, v56

    const/4 v8, -0x5

    const/16 v45, 0x0

    const/16 v84, 0x0

    move/from16 v46, v16

    goto/16 :goto_de

    :catchall_30
    move-exception v0

    move-object v15, v6

    move/from16 v16, v7

    move-object/from16 v21, v9

    :goto_7e
    move-object/from16 v2, p0

    move/from16 v13, p2

    move-object v1, v0

    move-object v8, v15

    move/from16 v14, v16

    goto/16 :goto_7b

    :catch_29
    move-exception v0

    move-object v15, v6

    move-object/from16 v21, v9

    move/from16 v13, p2

    move-object v2, v0

    goto/16 :goto_7c

    :cond_5a
    move-object v15, v6

    move/from16 v16, v7

    move-object/from16 v21, v9

    move-object/from16 v83, v33

    move/from16 v85, v45

    move/from16 v11, v47

    move-wide/from16 v30, v52

    move-wide/from16 v17, v59

    move-object/from16 v14, v64

    move-wide/from16 v19, v70

    move-wide/from16 v12, v72

    move-object/from16 v82, v76

    move/from16 v86, v77

    if-nez v36, :cond_5d

    move/from16 v3, v16

    .line 511
    :try_start_55
    invoke-static {v3, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    move/from16 v9, v38

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f666666    # 0.9f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5e

    const/4 v8, 0x1

    if-eqz v54, :cond_5b

    const/16 v16, 0x0

    goto :goto_7f

    :cond_5b
    const/16 v16, 0x3

    :goto_7f
    move v4, v10

    move/from16 v22, v54

    move v5, v9

    move/from16 v6, v79

    move v7, v3

    move/from16 v23, v9

    move/from16 v9, v16

    .line 513
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v22, :cond_5c

    const/16 v16, 0x0

    goto :goto_80

    :cond_5c
    const/16 v16, 0x3

    :goto_80
    move v4, v10

    move/from16 v5, v23

    move/from16 v6, v79

    move v7, v3

    move-object v10, v9

    move/from16 v9, v16

    .line 514
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v4
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2a
    .catchall {:try_start_55 .. :try_end_55} :catchall_32

    const/4 v5, 0x0

    .line 512
    :try_start_56
    invoke-virtual {v15, v10, v4, v5}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2a
    .catchall {:try_start_56 .. :try_end_56} :catchall_31

    goto :goto_83

    :catchall_31
    move-exception v0

    goto :goto_81

    :catchall_32
    move-exception v0

    const/4 v5, 0x0

    :goto_81
    move-object/from16 v2, p0

    move/from16 v13, p2

    move-object v1, v0

    move v14, v3

    move/from16 v81, v5

    move-object v8, v15

    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    const/4 v5, -0x5

    const/16 v47, 0x0

    goto/16 :goto_ec

    :catch_2a
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v1, v46

    move/from16 v6, v56

    const/4 v8, -0x5

    const/16 v45, 0x0

    const/16 v84, 0x0

    :goto_82
    move/from16 v46, v3

    goto/16 :goto_de

    :cond_5d
    move/from16 v3, v16

    :cond_5e
    const/4 v5, 0x0

    :goto_83
    move-object/from16 v4, p0

    :goto_84
    move-object/from16 v6, v82

    .line 518
    :try_start_57
    invoke-direct {v4, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v8
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_40
    .catchall {:try_start_57 .. :try_end_57} :catchall_45

    .line 519
    :try_start_58
    invoke-virtual {v15}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v7, v9, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 520
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_3f
    .catchall {:try_start_58 .. :try_end_58} :catchall_44

    const/16 v6, 0x15

    if-ge v1, v6, :cond_5f

    .line 526
    :try_start_59
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 527
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2b
    .catchall {:try_start_59 .. :try_end_59} :catchall_33

    goto :goto_86

    :catchall_33
    move-exception v0

    move/from16 v13, p2

    move-object v1, v0

    move v14, v3

    move-object v2, v4

    move/from16 v81, v5

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    goto/16 :goto_eb

    :catch_2b
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v84, v8

    move-object/from16 v45, v9

    :goto_85
    move-object/from16 v1, v46

    move/from16 v6, v56

    const/4 v8, -0x5

    goto :goto_82

    :cond_5f
    move-object v1, v9

    move-object v6, v1

    .line 531
    :goto_86
    :try_start_5a
    new-instance v7, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v7}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v10, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move-object/from16 v9, v83

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v5, v75

    move/from16 v10, v85

    invoke-virtual {v7, v5, v10, v9}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_3f
    .catchall {:try_start_5a .. :try_end_5a} :catchall_44

    if-ltz v11, :cond_6a

    .line 533
    :try_start_5b
    iget-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2e
    .catchall {:try_start_5b .. :try_end_5b} :catchall_35

    move-object/from16 v7, p1

    .line 534
    :try_start_5c
    iget-object v9, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_60

    move-object/from16 v9, v74

    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_87

    :cond_60
    move-object/from16 v9, v74

    :goto_87
    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "audio/mpeg"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_61
    const/4 v2, 0x1

    goto :goto_88

    :cond_62
    const/4 v2, 0x0

    .line 536
    :goto_88
    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio/unknown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    const/4 v11, -0x1

    :cond_63
    if-ltz v11, :cond_69

    if-eqz v2, :cond_66

    .line 542
    iget-object v9, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    .line 543
    iget-object v10, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2d
    .catchall {:try_start_5c .. :try_end_5c} :catchall_34

    :try_start_5d
    const-string/jumbo v10, "max-input-size"

    .line 545
    invoke-virtual {v5, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2c
    .catchall {:try_start_5d .. :try_end_5d} :catchall_34

    goto :goto_89

    :catch_2c
    move-exception v0

    move-object v5, v0

    .line 547
    :try_start_5e
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_89
    if-gtz v5, :cond_64

    const/high16 v5, 0x10000

    .line 552
    :cond_64
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move/from16 v23, v5

    move-object/from16 v22, v6

    const-wide/16 v5, 0x0

    cmp-long v24, v12, v5

    if-lez v24, :cond_65

    .line 555
    iget-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v13, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move/from16 v25, v2

    move v6, v9

    move-object/from16 v24, v10

    goto :goto_8a

    .line 557
    :cond_65
    iget-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v25, v2

    move v6, v9

    move-object/from16 v24, v10

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_8a
    move v2, v6

    const/4 v5, 0x0

    goto :goto_8c

    :cond_66
    move/from16 v25, v2

    move-object/from16 v22, v6

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    new-instance v5, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    move-object/from16 v6, v49

    invoke-direct {v5, v6, v11}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;I)V

    move-wide/from16 v9, v57

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_67

    .line 563
    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    :cond_67
    cmp-long v6, v12, v23

    if-lez v6, :cond_68

    .line 566
    invoke-virtual {v5, v12, v13}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    .line 568
    :cond_68
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v5, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 571
    new-instance v5, Lorg/telegram/messenger/video/AudioRecoder;

    move-wide/from16 v57, v9

    move-wide/from16 v9, v30

    invoke-direct {v5, v2, v9, v10}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2d
    .catchall {:try_start_5e .. :try_end_5e} :catchall_34

    .line 572
    :try_start_5f
    iget-object v2, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v6, v5, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v9, 0x1

    invoke-virtual {v2, v6, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_2f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_34

    goto :goto_8b

    :cond_69
    move/from16 v25, v2

    move-object/from16 v22, v6

    const/4 v2, -0x5

    const/4 v5, 0x0

    :goto_8b
    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_8c
    move v6, v2

    move/from16 v2, v25

    goto/16 :goto_90

    :catchall_34
    move-exception v0

    goto :goto_8d

    :catch_2d
    move-exception v0

    goto :goto_8e

    :catchall_35
    move-exception v0

    move-object/from16 v7, p1

    :goto_8d
    move/from16 v13, p2

    move-object v1, v0

    move v14, v3

    move-object v2, v4

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    const/4 v5, -0x5

    goto/16 :goto_d9

    :catch_2e
    move-exception v0

    move-object/from16 v7, p1

    :goto_8e
    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v84, v8

    move-object/from16 v1, v46

    move/from16 v6, v56

    const/4 v8, -0x5

    const/16 v45, 0x0

    goto/16 :goto_82

    :cond_6a
    move-object/from16 v7, p1

    move-object/from16 v22, v6

    move-wide/from16 v9, v30

    .line 575
    :try_start_60
    iget-object v2, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_3f
    .catchall {:try_start_60 .. :try_end_60} :catchall_44

    if-nez v2, :cond_6b

    .line 577
    :try_start_61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    new-instance v5, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v5, v9, v10}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    .line 579
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v5, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 582
    new-instance v5, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v5, v2, v9, v10}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_2d
    .catchall {:try_start_61 .. :try_end_61} :catchall_34

    .line 583
    :try_start_62
    iget-object v2, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v6, v5, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v9, 0x1

    invoke-virtual {v2, v6, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2f
    .catchall {:try_start_62 .. :try_end_62} :catchall_34

    move v6, v2

    const/4 v2, 0x0

    goto :goto_8f

    :catch_2f
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v45, v5

    move-object/from16 v84, v8

    goto/16 :goto_85

    :cond_6b
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x5

    :goto_8f
    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_90
    if-nez v5, :cond_6c

    const/4 v9, 0x1

    goto :goto_91

    :cond_6c
    const/4 v9, 0x0

    .line 590
    :goto_91
    :try_start_63
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_3e
    .catchall {:try_start_63 .. :try_end_63} :catchall_44

    move-wide/from16 v37, v17

    move-object/from16 v41, v22

    move-object/from16 v42, v24

    move-wide/from16 v52, v34

    move-wide/from16 v59, v68

    move-wide/from16 v70, v59

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, -0x5

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v22, v9

    move/from16 v9, v23

    :goto_92
    if-eqz v18, :cond_6e

    if-nez v2, :cond_6d

    if-nez v22, :cond_6d

    goto :goto_93

    :cond_6d
    move/from16 v13, p2

    move-object v2, v4

    move-object/from16 v45, v5

    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v10, v79

    move/from16 v4, v80

    const/4 v7, 0x0

    const/16 v81, 0x0

    move v5, v3

    goto/16 :goto_e0

    .line 594
    :cond_6e
    :goto_93
    :try_start_64
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_3d
    .catchall {:try_start_64 .. :try_end_64} :catchall_43

    if-eqz v5, :cond_6f

    .line 597
    :try_start_65
    iget-object v7, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v7, v6}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v7
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_30
    .catchall {:try_start_65 .. :try_end_65} :catchall_36

    goto :goto_96

    :catchall_36
    move-exception v0

    move/from16 v13, p2

    move-object v1, v0

    move v14, v3

    move-object v2, v4

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v5, v31

    :goto_94
    move/from16 v6, v56

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    goto/16 :goto_d9

    :catch_30
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move-object/from16 v45, v5

    :goto_95
    move-object/from16 v84, v8

    move/from16 v8, v31

    move-object/from16 v1, v46

    move/from16 v6, v56

    goto/16 :goto_82

    :cond_6f
    move/from16 v7, v22

    :goto_96
    if-nez v10, :cond_7e

    move-object/from16 v45, v5

    .line 602
    :try_start_66
    iget-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_32
    .catchall {:try_start_66 .. :try_end_66} :catchall_36

    move/from16 v47, v7

    move/from16 v7, v67

    if-ne v5, v7, :cond_73

    move-wide/from16 v72, v12

    const-wide/16 v12, 0x9c4

    .line 604
    :try_start_67
    invoke-virtual {v8, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_72

    .line 607
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_70

    .line 608
    aget-object v12, v1, v5

    goto :goto_97

    .line 610
    :cond_70
    invoke-virtual {v8, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 612
    :goto_97
    iget-object v13, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v49, v1

    const/4 v1, 0x0

    invoke-virtual {v13, v12, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v25

    if-gez v25, :cond_71

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v8

    move/from16 v23, v5

    .line 614
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v10, 0x1

    goto :goto_98

    :cond_71
    const/16 v24, 0x0

    .line 617
    iget-object v1, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v22, v8

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 618
    iget-object v1, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_98

    :cond_72
    move-object/from16 v49, v1

    :goto_98
    move/from16 v64, v2

    move/from16 v22, v10

    move/from16 v54, v11

    goto/16 :goto_9d

    :catch_31
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    move/from16 v67, v7

    goto :goto_95

    :cond_73
    move-object/from16 v49, v1

    move-wide/from16 v72, v12

    if-eqz v2, :cond_7c

    const/4 v1, -0x1

    if-eq v11, v1, :cond_7b

    if-ne v5, v11, :cond_7c

    .line 622
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_74

    .line 623
    iget-object v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v12

    move/from16 v22, v10

    move/from16 v54, v11

    int-to-long v10, v9

    cmp-long v5, v12, v10

    if-lez v5, :cond_75

    const-wide/16 v9, 0x400

    add-long/2addr v12, v9

    long-to-int v9, v12

    .line 626
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v42

    goto :goto_99

    :cond_74
    move/from16 v22, v10

    move/from16 v54, v11

    :cond_75
    :goto_99
    move-object/from16 v5, v42

    .line 629
    iget-object v10, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v10, 0x15

    if-ge v1, v10, :cond_76

    .line 631
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 632
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 634
    :cond_76
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_77

    .line 635
    iget-object v1, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 636
    iget-object v1, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_9a

    :cond_77
    const/4 v1, 0x0

    .line 638
    iput v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v22, 0x1

    .line 641
    :goto_9a
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_7a

    const-wide/16 v10, 0x0

    cmp-long v1, v57, v10

    if-ltz v1, :cond_78

    iget-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v10, v57

    if-gez v1, :cond_7a

    :cond_78
    const/4 v1, 0x0

    .line 642
    iput v1, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 643
    iget-object v10, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 644
    iget-object v10, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v10, v6, v5, v14, v1}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_7a

    .line 646
    iget-object v1, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_7a

    .line 647
    iget-wide v12, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v23, v12, v72

    cmp-long v23, v23, v29

    if-lez v23, :cond_79

    sub-long v29, v12, v72

    :cond_79
    move-wide/from16 v12, v29

    move/from16 v64, v2

    long-to-float v2, v12

    div-float v2, v2, v50

    div-float v2, v2, v51

    .line 650
    invoke-interface {v1, v10, v11, v2}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v29, v12

    goto :goto_9b

    :cond_7a
    move/from16 v64, v2

    :goto_9b
    move-object/from16 v42, v5

    goto :goto_9d

    :cond_7b
    move/from16 v64, v2

    move/from16 v22, v10

    move/from16 v54, v11

    goto :goto_9c

    :cond_7c
    move/from16 v64, v2

    move/from16 v22, v10

    move/from16 v54, v11

    const/4 v1, -0x1

    :goto_9c
    if-ne v5, v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_9e

    :cond_7d
    :goto_9d
    const/4 v1, 0x0

    :goto_9e
    if-eqz v1, :cond_7f

    const-wide/16 v1, 0x9c4

    .line 658
    invoke-virtual {v8, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v23

    if-ltz v23, :cond_7f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v8

    .line 660
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_31
    .catchall {:try_start_67 .. :try_end_67} :catchall_36

    const/16 v22, 0x1

    goto :goto_9f

    :catch_32
    move-exception v0

    move/from16 v13, p2

    move-object v2, v0

    goto/16 :goto_95

    :cond_7e
    move-object/from16 v49, v1

    move/from16 v64, v2

    move-object/from16 v45, v5

    move/from16 v47, v7

    move/from16 v22, v10

    move/from16 v54, v11

    move-wide/from16 v72, v12

    move/from16 v7, v67

    :cond_7f
    :goto_9f
    xor-int/lit8 v1, v35, 0x1

    move v2, v1

    move/from16 v10, v22

    move/from16 v5, v31

    move-wide/from16 v11, v52

    const/4 v1, 0x1

    :goto_a0
    if-nez v2, :cond_81

    if-eqz v1, :cond_80

    goto :goto_a1

    :cond_80
    move/from16 v31, v5

    move/from16 v67, v7

    move-wide/from16 v52, v11

    move-object/from16 v5, v45

    move/from16 v22, v47

    move-object/from16 v1, v49

    move/from16 v11, v54

    move/from16 v2, v64

    move-wide/from16 v12, v72

    move-object/from16 v7, p1

    goto/16 :goto_92

    .line 669
    :cond_81
    :goto_a1
    :try_start_68
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_3c
    .catchall {:try_start_68 .. :try_end_68} :catchall_42

    move/from16 v13, p2

    if-eqz v13, :cond_82

    const-wide/16 v22, 0x55f0

    move/from16 v24, v6

    move-object/from16 v6, v46

    move-wide/from16 v87, v22

    move/from16 v22, v1

    move/from16 v23, v2

    move-wide/from16 v1, v87

    goto :goto_a2

    :cond_82
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v6, v46

    const-wide/16 v1, 0x9c4

    .line 670
    :goto_a2
    :try_start_69
    invoke-virtual {v6, v14, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_3b
    .catchall {:try_start_69 .. :try_end_69} :catchall_41

    const/4 v2, -0x1

    if-ne v1, v2, :cond_83

    move/from16 v46, v3

    move/from16 v67, v7

    move/from16 v25, v9

    move/from16 v26, v10

    move-wide/from16 v27, v11

    move/from16 v7, v43

    move-object/from16 v10, v55

    move/from16 v11, v86

    const/16 v22, 0x0

    goto/16 :goto_b2

    :cond_83
    const/4 v2, -0x3

    if-ne v1, v2, :cond_85

    .line 674
    :try_start_6a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v25, v9

    const/16 v9, 0x15

    if-ge v2, v9, :cond_84

    .line 675
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v41

    :cond_84
    move/from16 v46, v3

    move/from16 v67, v7

    move/from16 v26, v10

    move-wide/from16 v27, v11

    move/from16 v7, v43

    move-object/from16 v10, v55

    :goto_a3
    move/from16 v11, v86

    :goto_a4
    const/4 v2, -0x1

    goto/16 :goto_b2

    :catchall_37
    move-exception v0

    :goto_a5
    move-object v1, v0

    move v14, v3

    move-object v2, v4

    move-object/from16 v46, v6

    move-object/from16 v47, v8

    move-object v8, v15

    goto/16 :goto_94

    :catch_33
    move-exception v0

    move-object v2, v0

    move/from16 v46, v3

    move-object v1, v6

    move/from16 v67, v7

    goto/16 :goto_cd

    :cond_85
    move/from16 v25, v9

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8b

    .line 678
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v9, -0x5

    if-ne v5, v9, :cond_8a

    if-eqz v2, :cond_8a

    .line 680
    iget-object v9, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move/from16 v26, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_33
    .catchall {:try_start_6a .. :try_end_6a} :catchall_37

    move-object/from16 v9, v48

    .line 681
    :try_start_6b
    invoke-virtual {v2, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-virtual {v2, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_35
    .catchall {:try_start_6b .. :try_end_6b} :catchall_39

    move/from16 v27, v5

    const/4 v5, 0x1

    if-ne v10, v5, :cond_89

    move-object/from16 v10, v55

    .line 682
    :try_start_6c
    invoke-virtual {v2, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v48, v9

    const-string v9, "csd-1"

    .line 683
    invoke-virtual {v2, v9}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v5, :cond_86

    const/4 v5, 0x0

    goto :goto_a6

    .line 684
    :cond_86
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    :goto_a6
    if-nez v2, :cond_87

    const/4 v2, 0x0

    goto :goto_a7

    :cond_87
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_34
    .catchall {:try_start_6c .. :try_end_6c} :catchall_38

    :goto_a7
    add-int/2addr v5, v2

    move/from16 v36, v5

    goto :goto_a8

    :catchall_38
    move-exception v0

    move-object v1, v0

    move v14, v3

    move-object v2, v4

    move-object/from16 v46, v6

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v5, v27

    goto/16 :goto_94

    :catch_34
    move-exception v0

    goto :goto_a9

    :cond_88
    move/from16 v27, v5

    :cond_89
    move-object/from16 v48, v9

    move-object/from16 v10, v55

    :goto_a8
    move/from16 v5, v27

    goto :goto_aa

    :catchall_39
    move-exception v0

    move/from16 v27, v5

    goto :goto_a5

    :catch_35
    move-exception v0

    move/from16 v27, v5

    :goto_a9
    move-object v2, v0

    move/from16 v46, v3

    move-object v1, v6

    move/from16 v67, v7

    move-object/from16 v84, v8

    move/from16 v8, v27

    goto/16 :goto_d0

    :cond_8a
    move/from16 v26, v10

    move-object/from16 v10, v55

    :goto_aa
    move/from16 v46, v3

    move/from16 v67, v7

    move-wide/from16 v27, v11

    move/from16 v7, v43

    goto/16 :goto_a3

    :cond_8b
    move/from16 v26, v10

    move-object/from16 v10, v55

    if-ltz v1, :cond_b2

    .line 691
    :try_start_6d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_3b
    .catchall {:try_start_6d .. :try_end_6d} :catchall_41

    const/16 v9, 0x15

    if-ge v2, v9, :cond_8c

    .line 692
    :try_start_6e
    aget-object v2, v41, v1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_33
    .catchall {:try_start_6e .. :try_end_6e} :catchall_37

    goto :goto_ab

    .line 694
    :cond_8c
    :try_start_6f
    invoke-virtual {v6, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_ab
    if-eqz v2, :cond_b1

    .line 699
    iget v9, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3b
    .catchall {:try_start_6f .. :try_end_6f} :catchall_41

    move/from16 v67, v7

    const/4 v7, 0x1

    if-le v9, v7, :cond_95

    .line 700
    :try_start_70
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_36
    .catchall {:try_start_70 .. :try_end_70} :catchall_3a

    and-int/lit8 v18, v7, 0x2

    if-nez v18, :cond_91

    if-eqz v36, :cond_8d

    and-int/lit8 v18, v7, 0x1

    if-eqz v18, :cond_8d

    move/from16 v46, v3

    .line 702
    :try_start_71
    iget v3, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v3, v3, v36

    iput v3, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v9, v9, v36

    .line 703
    iput v9, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_ac

    :cond_8d
    move/from16 v46, v3

    :goto_ac
    if-eqz v17, :cond_8e

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_8e

    .line 706
    iget-object v3, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v3, v2, v14}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/16 v17, 0x0

    .line 709
    :cond_8e
    iget-object v3, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v2, v14, v7}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v2

    const-wide/16 v27, 0x0

    cmp-long v7, v2, v27

    if-eqz v7, :cond_96

    .line 711
    iget-object v7, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v7, :cond_96

    move-wide/from16 v27, v11

    .line 712
    iget-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v52, v11, v72

    cmp-long v9, v52, v29

    if-lez v9, :cond_8f

    sub-long v29, v11, v72

    :cond_8f
    move-wide/from16 v11, v29

    long-to-float v9, v11

    div-float v9, v9, v50

    div-float v9, v9, v51

    .line 715
    invoke-interface {v7, v2, v3, v9}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v29, v11

    :cond_90
    :goto_ad
    move/from16 v7, v43

    move/from16 v11, v86

    goto/16 :goto_b0

    :cond_91
    move/from16 v46, v3

    move-wide/from16 v27, v11

    const/4 v3, -0x5

    if-ne v5, v3, :cond_90

    .line 719
    new-array v3, v9, [B

    .line 720
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v9

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 721
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 722
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 725
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    :goto_ae
    if-ltz v2, :cond_93

    const/4 v9, 0x3

    if-le v2, v9, :cond_93

    .line 727
    aget-byte v9, v3, v2

    if-ne v9, v7, :cond_92

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v3, v7

    if-nez v7, :cond_92

    add-int/lit8 v7, v2, -0x2

    aget-byte v7, v3, v7

    if-nez v7, :cond_92

    add-int/lit8 v7, v2, -0x3

    aget-byte v9, v3, v7

    if-nez v9, :cond_92

    .line 728
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 729
    iget v9, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v11, 0x0

    .line 730
    invoke-virtual {v2, v3, v11, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 731
    iget v12, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v7

    invoke-virtual {v9, v3, v7, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_af

    :cond_92
    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x1

    goto :goto_ae

    :cond_93
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 739
    :goto_af
    iget-object v3, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move/from16 v7, v43

    move/from16 v11, v86

    invoke-static {v3, v7, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v2, :cond_94

    if-eqz v9, :cond_94

    .line 741
    invoke-virtual {v3, v10, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v2, "csd-1"

    .line 742
    invoke-virtual {v3, v2, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 744
    :cond_94
    iget-object v2, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_37
    .catchall {:try_start_71 .. :try_end_71} :catchall_3b

    move v5, v2

    goto :goto_b0

    :catchall_3a
    move-exception v0

    move/from16 v46, v3

    goto/16 :goto_b5

    :catch_36
    move-exception v0

    goto/16 :goto_cb

    :cond_95
    move/from16 v46, v3

    :cond_96
    move-wide/from16 v27, v11

    goto/16 :goto_ad

    .line 747
    :goto_b0
    :try_start_72
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_97

    const/4 v2, 0x1

    goto :goto_b1

    :cond_97
    const/4 v2, 0x0

    :goto_b1
    const/4 v3, 0x0

    .line 748
    invoke-virtual {v6, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v18, v2

    goto/16 :goto_a4

    :goto_b2
    if-eq v1, v2, :cond_98

    move/from16 v43, v7

    move-object/from16 v55, v10

    move/from16 v86, v11

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v9, v25

    move/from16 v10, v26

    move-wide/from16 v11, v27

    :goto_b3
    move/from16 v3, v46

    move/from16 v7, v67

    move-object/from16 v46, v6

    move/from16 v6, v24

    goto/16 :goto_a0

    :cond_98
    if-nez v35, :cond_af

    const-wide/16 v2, 0x9c4

    .line 755
    invoke-virtual {v8, v14, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_39
    .catchall {:try_start_72 .. :try_end_72} :catchall_3f

    const/4 v9, -0x1

    if-ne v1, v9, :cond_99

    move-object/from16 v55, v10

    move/from16 v86, v11

    move/from16 v10, v26

    move-wide/from16 v11, v27

    move-object/from16 v9, v44

    :goto_b4
    const/4 v2, 0x0

    goto/16 :goto_c5

    :cond_99
    const/4 v12, -0x3

    if-ne v1, v12, :cond_9a

    goto/16 :goto_c4

    :cond_9a
    const/4 v12, -0x2

    if-ne v1, v12, :cond_9b

    .line 761
    :try_start_73
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 762
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_af

    .line 763
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newFormat = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_37
    .catchall {:try_start_73 .. :try_end_73} :catchall_3b

    goto/16 :goto_c4

    :catchall_3b
    move-exception v0

    :goto_b5
    move-object v1, v0

    move-object v2, v4

    goto/16 :goto_c9

    :catch_37
    move-exception v0

    goto/16 :goto_cc

    :cond_9b
    if-ltz v1, :cond_ae

    .line 769
    :try_start_74
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v55, v10

    if-eqz v2, :cond_9c

    const/4 v2, 0x1

    goto :goto_b6

    :cond_9c
    const/4 v2, 0x0

    .line 770
    :goto_b6
    iget-wide v9, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_39
    .catchall {:try_start_74 .. :try_end_74} :catchall_3f

    const-wide/16 v52, 0x0

    cmp-long v3, v57, v52

    if-lez v3, :cond_9d

    cmp-long v3, v9, v57

    if-ltz v3, :cond_9d

    .line 775
    :try_start_75
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_37
    .catchall {:try_start_75 .. :try_end_75} :catchall_3b

    const/4 v2, 0x0

    const/16 v26, 0x1

    const/16 v35, 0x1

    :cond_9d
    const-wide/16 v52, 0x0

    cmp-long v3, v37, v52

    if-ltz v3, :cond_a0

    .line 778
    :try_start_76
    iget v3, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a0

    sub-long v52, v37, v72

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(J)J

    move-result-wide v52

    const v3, 0xf4240

    div-int v3, v3, v80
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_37
    .catchall {:try_start_76 .. :try_end_76} :catchall_3c

    move v12, v2

    int-to-long v2, v3

    cmp-long v2, v52, v2

    if-lez v2, :cond_9f

    const-wide/16 v2, 0x0

    cmp-long v12, v72, v2

    if-lez v12, :cond_9e

    .line 780
    :try_start_77
    iget-object v2, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v86, v11

    move-wide/from16 v11, v72

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v12, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_37
    .catchall {:try_start_77 .. :try_end_77} :catchall_3b

    move-wide/from16 v72, v11

    const/4 v3, 0x0

    goto :goto_b7

    :cond_9e
    move/from16 v86, v11

    move-wide/from16 v11, v72

    .line 782
    :try_start_78
    iget-object v2, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_37
    .catchall {:try_start_78 .. :try_end_78} :catchall_3c

    const/4 v3, 0x0

    const-wide/16 v11, 0x0

    :try_start_79
    invoke-virtual {v2, v11, v12, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_b7
    add-long v33, v27, v19

    .line 790
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v11, -0x5

    and-int/2addr v2, v11

    iput v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 791
    invoke-virtual {v8}, Landroid/media/MediaCodec;->flush()V

    move v12, v3

    move/from16 v26, v12

    move/from16 v35, v26

    move-wide/from16 v57, v37

    move-wide/from16 v37, v68

    const/4 v2, 0x1

    goto :goto_ba

    :cond_9f
    move/from16 v86, v11

    move v2, v12

    goto :goto_b9

    :catchall_3c
    move-exception v0

    const/4 v3, 0x0

    :goto_b8
    move-object v1, v0

    move/from16 v81, v3

    move-object v2, v4

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    goto/16 :goto_d7

    :cond_a0
    move/from16 v86, v11

    :goto_b9
    const/4 v3, 0x0

    const/4 v11, -0x5

    move v12, v2

    move v2, v3

    :goto_ba
    const-wide/16 v52, 0x0

    cmp-long v31, v59, v52

    if-lez v31, :cond_a1

    move/from16 v31, v12

    .line 794
    iget-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v11, v11, v59

    cmp-long v11, v11, v65

    if-gez v11, :cond_a2

    iget v11, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_37
    .catchall {:try_start_79 .. :try_end_79} :catchall_3d

    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_a2

    move/from16 v31, v3

    goto :goto_bb

    :catchall_3d
    move-exception v0

    goto :goto_b8

    :cond_a1
    move/from16 v31, v12

    :cond_a2
    :goto_bb
    const-wide/16 v11, 0x0

    cmp-long v43, v37, v11

    if-ltz v43, :cond_a3

    move-wide/from16 v3, v37

    goto :goto_bc

    :cond_a3
    move-wide/from16 v3, v72

    :goto_bc
    cmp-long v52, v3, v11

    if-lez v52, :cond_a7

    cmp-long v11, v70, v68

    if-nez v11, :cond_a7

    cmp-long v9, v9, v3

    if-gez v9, :cond_a5

    .line 801
    :try_start_7a
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_a4

    .line 802
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drop frame startTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " present time = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a4
    const/4 v3, 0x0

    goto :goto_be

    .line 805
    :cond_a5
    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v9, -0x80000000

    cmp-long v9, v27, v9

    if-eqz v9, :cond_a6

    sub-long v33, v33, v3

    :cond_a6
    move-wide/from16 v70, v3

    goto :goto_bd

    :catchall_3e
    move-exception v0

    goto/16 :goto_c8

    :cond_a7
    :goto_bd
    move/from16 v3, v31

    :goto_be
    if-eqz v2, :cond_a8

    move-wide/from16 v70, v68

    const-wide/16 v9, 0x0

    goto :goto_bf

    :cond_a8
    cmp-long v2, v37, v68

    const-wide/16 v9, 0x0

    if-nez v2, :cond_a9

    cmp-long v2, v33, v9

    if-eqz v2, :cond_a9

    .line 815
    iget-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v11, v11, v33

    iput-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_37
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3e

    .line 817
    :cond_a9
    :try_start_7b
    invoke-virtual {v8, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_bf
    if-eqz v3, :cond_ac

    .line 820
    iget-wide v1, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_39
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3f

    move-wide/from16 v3, v27

    if-ltz v43, :cond_aa

    .line 822
    :try_start_7c
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_37
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3e

    goto :goto_c0

    :cond_aa
    move-wide v11, v3

    .line 826
    :goto_c0
    :try_start_7d
    invoke-virtual {v15}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_38
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3e

    const/4 v3, 0x0

    goto :goto_c1

    :catch_38
    move-exception v0

    move-object v3, v0

    .line 829
    :try_start_7e
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    :goto_c1
    if-nez v3, :cond_ab

    .line 832
    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v27, 0x3e8

    mul-long v3, v3, v27

    invoke-virtual {v15, v3, v4}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V

    .line 833
    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_39
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3f

    const-wide/16 v27, 0x3e8

    mul-long v3, v3, v27

    move-object/from16 v9, v44

    :try_start_7f
    invoke-virtual {v9, v3, v4}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 834
    invoke-virtual {v9}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_c2

    :cond_ab
    move-object/from16 v9, v44

    :goto_c2
    move-wide/from16 v59, v1

    goto :goto_c3

    :cond_ac
    move-wide/from16 v3, v27

    move-object/from16 v9, v44

    move-wide v11, v3

    .line 837
    :goto_c3
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b0

    .line 839
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_ad

    const-string v1, "decoder stream end"

    .line 840
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 842
    :cond_ad
    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v10, v26

    goto/16 :goto_b4

    :cond_ae
    move-object/from16 v9, v44

    .line 767
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3f
    move-exception v0

    goto/16 :goto_c6

    :catch_39
    move-exception v0

    goto/16 :goto_c7

    :cond_af
    :goto_c4
    move-object/from16 v55, v10

    move/from16 v86, v11

    move-wide/from16 v3, v27

    move-object/from16 v9, v44

    move-wide v11, v3

    :cond_b0
    move/from16 v2, v23

    move/from16 v10, v26

    :goto_c5
    move-object/from16 v4, p0

    move/from16 v43, v7

    move-object/from16 v44, v9

    move/from16 v1, v22

    move/from16 v9, v25

    goto/16 :goto_b3

    :cond_b1
    move/from16 v46, v3

    move/from16 v67, v7

    move-object/from16 v9, v44

    .line 697
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b2
    move/from16 v46, v3

    move/from16 v67, v7

    move-object/from16 v9, v44

    .line 688
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_3a
    .catchall {:try_start_7f .. :try_end_7f} :catchall_40

    :catchall_40
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v47, v8

    move-object/from16 v44, v9

    goto :goto_ca

    :catch_3a
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v84, v8

    move-object/from16 v44, v9

    goto :goto_ce

    :catchall_41
    move-exception v0

    move/from16 v46, v3

    :goto_c6
    move-object/from16 v9, v44

    goto :goto_c8

    :catch_3b
    move-exception v0

    move/from16 v46, v3

    move/from16 v67, v7

    :goto_c7
    move-object/from16 v9, v44

    goto :goto_cc

    :catchall_42
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    :goto_c8
    move-object/from16 v2, p0

    move-object v1, v0

    :goto_c9
    move-object/from16 v47, v8

    :goto_ca
    move-object v8, v15

    goto :goto_cf

    :catch_3c
    move-exception v0

    move/from16 v13, p2

    move/from16 v67, v7

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    :goto_cb
    move/from16 v46, v3

    :goto_cc
    move-object v2, v0

    move-object v1, v6

    :goto_cd
    move-object/from16 v84, v8

    :goto_ce
    move/from16 v6, v56

    move v8, v5

    goto/16 :goto_de

    :catchall_43
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v5, v31

    :goto_cf
    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    goto/16 :goto_d6

    :catch_3d
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v45, v5

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v84, v8

    move/from16 v8, v31

    :goto_d0
    move/from16 v6, v56

    goto/16 :goto_de

    :catch_3e
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v45, v5

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v84, v8

    move/from16 v6, v56

    const/4 v8, -0x5

    goto/16 :goto_de

    :catchall_44
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    const/4 v5, -0x5

    goto/16 :goto_d6

    :catch_3f
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v84, v8

    move/from16 v6, v56

    const/4 v8, -0x5

    const/16 v45, 0x0

    goto/16 :goto_de

    :catchall_45
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object/from16 v2, p0

    move-object v1, v0

    move-object v8, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    const/4 v5, -0x5

    goto/16 :goto_d3

    :catch_40
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v3

    move-object v2, v0

    move-object v1, v6

    move/from16 v6, v56

    const/4 v8, -0x5

    goto/16 :goto_d4

    :catchall_46
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v21, v9

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v7

    move-object/from16 v2, p0

    move-object v1, v0

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    move/from16 v4, v80

    goto :goto_d1

    :catch_41
    move-exception v0

    move/from16 v13, p2

    move-object/from16 v21, v9

    move-object/from16 v9, v44

    move-object/from16 v6, v46

    move/from16 v46, v7

    move-object v2, v0

    move-object v1, v6

    goto :goto_d2

    :catchall_47
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v79, v17

    move-object v9, v2

    move-object/from16 v2, p0

    move-object v1, v0

    move-object/from16 v44, v9

    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    :goto_d1
    const/4 v5, -0x5

    const/4 v8, 0x0

    goto :goto_d3

    :catch_42
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v9, v2

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v44, v9

    :goto_d2
    move/from16 v6, v56

    const/4 v8, -0x5

    const/4 v15, 0x0

    goto :goto_d4

    :catchall_48
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v44, 0x0

    :goto_d3
    const/16 v47, 0x0

    goto/16 :goto_d6

    :catch_43
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    move-object v1, v6

    move/from16 v6, v56

    const/4 v8, -0x5

    const/4 v15, 0x0

    const/16 v44, 0x0

    :goto_d4
    const/16 v45, 0x0

    goto/16 :goto_dd

    :catchall_49
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    const/4 v5, -0x5

    const/4 v8, 0x0

    goto :goto_d5

    :catch_44
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move-object/from16 v21, v9

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    move-object v1, v6

    move/from16 v6, v56

    const/4 v8, -0x5

    const/4 v15, 0x0

    goto/16 :goto_dc

    :catchall_4a
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_d5
    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    :goto_d6
    const/16 v81, 0x0

    :goto_d7
    move-object/from16 v46, v6

    move/from16 v6, v56

    goto/16 :goto_ec

    :catch_45
    move-exception v0

    move/from16 v13, p2

    move-object v6, v8

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    move-object v1, v6

    move/from16 v6, v56

    goto/16 :goto_db

    :catchall_4b
    move-exception v0

    move/from16 v13, p2

    move v5, v6

    move-object v6, v8

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    const/16 v81, 0x0

    move-object/from16 v46, v6

    move v6, v5

    goto/16 :goto_eb

    :catch_46
    move-exception v0

    move/from16 v13, p2

    move v5, v6

    move-object v6, v8

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    move-object v1, v6

    const/4 v8, -0x5

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v78, 0x0

    const/16 v84, 0x0

    move v6, v5

    goto :goto_de

    :catchall_4c
    move-exception v0

    move/from16 v13, p2

    move v5, v6

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    goto :goto_d8

    :catch_47
    move-exception v0

    move/from16 v13, p2

    move v5, v6

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    goto :goto_da

    :catchall_4d
    move-exception v0

    move/from16 v13, p2

    move/from16 v79, v17

    move-object/from16 v2, p0

    move-object v1, v0

    move v6, v14

    :goto_d8
    move v4, v15

    move/from16 v14, v46

    move-object/from16 v9, v63

    move/from16 v15, v79

    const/4 v5, -0x5

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    :goto_d9
    const/16 v81, 0x0

    goto/16 :goto_ec

    :catch_48
    move-exception v0

    move/from16 v13, p2

    move/from16 v67, v5

    move/from16 v80, v15

    move/from16 v79, v17

    move-object v2, v0

    move v6, v14

    :goto_da
    const/4 v1, 0x0

    :goto_db
    const/4 v8, -0x5

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_dc
    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v78, 0x0

    :goto_dd
    const/16 v84, 0x0

    .line 852
    :goto_de
    :try_start_80
    instance-of v3, v2, Ljava/lang/IllegalStateException;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_54

    if-eqz v3, :cond_b3

    if-nez v13, :cond_b3

    const/4 v7, 0x1

    goto :goto_df

    :cond_b3
    const/4 v7, 0x0

    .line 855
    :goto_df
    :try_start_81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framerate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_53

    move/from16 v4, v80

    :try_start_82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_52

    move/from16 v5, v46

    :try_start_83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_51

    move-object/from16 v9, v63

    :try_start_84
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_50

    move/from16 v10, v79

    :try_start_85
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 856
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_4f

    move-object/from16 v2, p0

    move-object/from16 v46, v1

    move/from16 v81, v7

    move/from16 v31, v8

    move-object/from16 v8, v84

    const/4 v7, 0x1

    .line 860
    :goto_e0
    :try_start_86
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v3, v67

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v8, :cond_b4

    .line 862
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 863
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_4e

    :cond_b4
    move-object v3, v8

    move-object v8, v15

    move/from16 v1, v81

    move/from16 v81, v7

    goto/16 :goto_e6

    :catchall_4e
    move-exception v0

    move-object v1, v0

    move v14, v5

    move-object/from16 v47, v8

    move-object v8, v15

    move/from16 v5, v31

    goto :goto_e5

    :catchall_4f
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_e3

    :catchall_50
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_e2

    :catchall_51
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_e1

    :catchall_52
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v5, v46

    :goto_e1
    move-object/from16 v9, v63

    :goto_e2
    move/from16 v10, v79

    goto :goto_e3

    :catchall_53
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v5, v46

    move-object/from16 v9, v63

    move/from16 v10, v79

    move/from16 v4, v80

    :goto_e3
    move-object/from16 v46, v1

    move v14, v5

    move/from16 v81, v7

    move v5, v8

    move-object v8, v15

    move-object/from16 v47, v84

    goto :goto_e4

    :catchall_54
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v5, v46

    move-object/from16 v9, v63

    move/from16 v10, v79

    move/from16 v4, v80

    move-object/from16 v46, v1

    move v14, v5

    move v5, v8

    move-object v8, v15

    move-object/from16 v47, v84

    const/16 v81, 0x0

    :goto_e4
    move-object v1, v0

    :goto_e5
    move v15, v10

    goto/16 :goto_ec

    :cond_b5
    move-object v2, v13

    move v4, v15

    move/from16 v10, v17

    move/from16 v5, v46

    move-object/from16 v9, v63

    move/from16 v13, p2

    move v6, v14

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v31, -0x5

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v78, 0x0

    const/16 v81, 0x0

    :goto_e6
    if-eqz v8, :cond_b6

    .line 867
    :try_start_87
    invoke-virtual {v8}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v8, 0x0

    goto :goto_e7

    :catchall_55
    move-exception v0

    move/from16 v81, v1

    move-object/from16 v47, v3

    move v14, v5

    move v15, v10

    move/from16 v5, v31

    goto/16 :goto_5d

    :cond_b6
    :goto_e7
    if-eqz v44, :cond_b7

    .line 871
    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v44, 0x0

    :cond_b7
    if-eqz v46, :cond_b8

    .line 875
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->stop()V

    .line 876
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->release()V

    const/16 v46, 0x0

    :cond_b8
    if-eqz v45, :cond_b9

    .line 880
    invoke-virtual/range {v45 .. v45}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 882
    :cond_b9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_55

    move-object/from16 v47, v3

    move-object v14, v8

    move v15, v10

    move-object/from16 v61, v21

    move/from16 v8, v31

    move/from16 v7, v81

    .line 893
    :goto_e8
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_ba

    .line 894
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 896
    :cond_ba
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_bb

    .line 898
    :try_start_88
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 899
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_56

    goto :goto_e9

    :catchall_56
    move-exception v0

    move-object v3, v0

    .line 901
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_bb
    :goto_e9
    if-eqz v46, :cond_bc

    .line 906
    :try_start_89
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->release()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_49

    :catch_49
    :cond_bc
    if-eqz v47, :cond_bd

    .line 913
    :try_start_8a
    invoke-virtual/range {v47 .. v47}, Landroid/media/MediaCodec;->release()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_4a

    :catch_4a
    :cond_bd
    if-eqz v14, :cond_be

    .line 920
    :try_start_8b
    invoke-virtual {v14}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_4b

    :catch_4b
    :cond_be
    if-eqz v44, :cond_bf

    .line 927
    :try_start_8c
    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_4c

    :catch_4c
    :cond_bf
    move-object/from16 v3, v61

    goto/16 :goto_ee

    :catchall_57
    move-exception v0

    move-object v2, v13

    move v5, v14

    move v10, v15

    move/from16 v62, v34

    move/from16 v4, v35

    move-object/from16 v32, v52

    move-object/from16 v9, v53

    goto :goto_ea

    :catchall_58
    move-exception v0

    move-object v9, v12

    move-object v2, v13

    move v5, v14

    move v10, v15

    move/from16 v62, v34

    move/from16 v4, v35

    move-object/from16 v32, v52

    goto :goto_ea

    :catchall_59
    move-exception v0

    move-object/from16 v32, v10

    move-object v9, v12

    move-object v2, v13

    move v5, v14

    move v10, v15

    move/from16 v62, v34

    move/from16 v4, v35

    :goto_ea
    move/from16 v13, p2

    move v14, v6

    move-object v1, v0

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v78, 0x0

    const/16 v81, 0x0

    move v14, v5

    :goto_eb
    const/4 v5, -0x5

    .line 890
    :goto_ec
    :try_start_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bitrate: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " framerate: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 891
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_5b

    .line 893
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_c0

    .line 894
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 896
    :cond_c0
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_c1

    .line 898
    :try_start_8e
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 899
    iget-object v1, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_5a

    goto :goto_ed

    :catchall_5a
    move-exception v0

    move-object v1, v0

    .line 901
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c1
    :goto_ed
    if-eqz v46, :cond_c2

    .line 906
    :try_start_8f
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->release()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_4d

    :catch_4d
    :cond_c2
    if-eqz v47, :cond_c3

    .line 913
    :try_start_90
    invoke-virtual/range {v47 .. v47}, Landroid/media/MediaCodec;->release()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_4e

    :catch_4e
    :cond_c3
    if-eqz v8, :cond_c4

    .line 920
    :try_start_91
    invoke-virtual {v8}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_4f

    :catch_4f
    :cond_c4
    if-eqz v44, :cond_c5

    .line 927
    :try_start_92
    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_50

    :catch_50
    :cond_c5
    move v5, v14

    move-object/from16 v3, v21

    move/from16 v1, v81

    const/4 v7, 0x1

    :goto_ee
    if-eqz v1, :cond_c6

    move/from16 v1, p3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    move-object/from16 v8, p1

    .line 935
    invoke-direct {v2, v8, v4, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    :cond_c6
    move-object/from16 v8, p1

    move/from16 v1, p3

    const/4 v4, 0x1

    if-eqz v7, :cond_c7

    if-eqz v78, :cond_c7

    const/4 v9, 0x3

    if-ge v1, v9, :cond_c7

    add-int/2addr v1, v4

    .line 939
    invoke-direct {v2, v8, v13, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    .line 942
    :cond_c7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v39

    .line 943
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_c8

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compression completed time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " needCompress="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v62

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bitrate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " file size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " encoder_name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c8
    return v7

    :catchall_5b
    move-exception v0

    move-object v1, v0

    .line 893
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_c9

    .line 894
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 896
    :cond_c9
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_ca

    .line 898
    :try_start_93
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 899
    iget-object v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_5c

    goto :goto_ef

    :catchall_5c
    move-exception v0

    move-object v3, v0

    .line 901
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ef
    if-eqz v46, :cond_cb

    .line 906
    :try_start_94
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaCodec;->release()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_51

    :catch_51
    :cond_cb
    if-eqz v47, :cond_cc

    .line 913
    :try_start_95
    invoke-virtual/range {v47 .. v47}, Landroid/media/MediaCodec;->release()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_52

    :catch_52
    :cond_cc
    if-eqz v8, :cond_cd

    .line 920
    :try_start_96
    invoke-virtual {v8}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_53

    :catch_53
    :cond_cd
    if-eqz v44, :cond_ce

    .line 927
    :try_start_97
    invoke-virtual/range {v44 .. v44}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_54

    .line 932
    :catch_54
    :cond_ce
    throw v1
.end method

.method private createEncoderForMimeType()Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "video/avc"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 972
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 977
    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 978
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 1002
    iget-object v3, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 1004
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static createFragmentShader(IIIIZI)Ljava/lang/String;
    .locals 3

    .line 1235
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

    .line 1237
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1240
    :cond_0
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1241
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

    .line 1243
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

    .line 1262
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

    .line 1011
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1014
    :goto_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 1015
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v2, [B

    .line 1017
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    const/16 v3, 0x60

    if-ge p1, v3, :cond_2

    .line 1020
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

    .line 1023
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1024
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

    .line 1295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "mime"

    .line 1296
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "video/dolby-vision"

    .line 1298
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "video/hevc"

    .line 1299
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "video/avc"

    .line 1300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 1303
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 1305
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1306
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
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

    .line 1314
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1293
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getDecoderByFormat: format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    .line 1203
    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result p0

    const/4 p1, 0x1

    const/4 p4, 0x0

    if-ne p0, p1, :cond_0

    .line 1204
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_hlg2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1206
    :cond_0
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_pq2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 1208
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

    .line 1209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$dstHeight"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1211
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

    .line 1033
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

    .line 1038
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 1039
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

    .line 1049
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1050
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1051
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 1053
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 1055
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 1059
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 1061
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

    .line 1065
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1066
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v8, "mime"

    .line 1068
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 1071
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 1073
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

    .line 1075
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 1078
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 1080
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 1087
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 1090
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 1092
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 1095
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 1099
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

    .line 1102
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1103
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

    .line 1113
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1114
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 1117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 1120
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

    .line 1123
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

    .line 1126
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 1127
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 1128
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 1129
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

    .line 1138
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 1141
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 1145
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

    .line 1147
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 1149
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

    .line 1150
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1152
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 1154
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 1155
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

    .line 1158
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 1166
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

    .line 1171
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

    .line 1178
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 1181
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
