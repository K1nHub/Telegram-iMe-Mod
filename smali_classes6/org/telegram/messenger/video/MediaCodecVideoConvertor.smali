.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.super Ljava/lang/Object;
.source "MediaCodecVideoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.method private checkConversionCanceled()V
    .locals 1

    .line 1149
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1150
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLjava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;I)Z
    .locals 75
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "IZIIIIIIIJJJJZZ",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;Z",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v11, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move-wide/from16 v3, p12

    move-wide/from16 v1, p16

    move-wide/from16 v3, p18

    move/from16 v14, p20

    move-object/from16 v6, p26

    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "convertVideoInternal original="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "x"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  result="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-object/from16 v35, v13

    const-wide/16 v13, 0x0

    cmp-long v9, v1, v13

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const-string/jumbo v13, "video/hevc"

    if-eqz p31, :cond_1

    move-object v14, v13

    goto :goto_1

    :cond_1
    const-string/jumbo v16, "video/avc"

    move-object/from16 v14, v16

    .line 106
    :goto_1
    iput-object v14, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-wide/16 v39, -0x1

    .line 114
    :try_start_0
    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 115
    new-instance v11, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v11}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v2, p2

    .line 116
    invoke-virtual {v11, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_68

    const/4 v1, 0x0

    .line 117
    :try_start_1
    invoke-virtual {v11, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_67

    .line 118
    :try_start_2
    invoke-virtual {v11, v10, v7}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    long-to-float v1, v3

    const/high16 v43, 0x447a0000    # 1000.0f

    div-float v44, v1, v43

    const-wide/16 v16, 0x3e8

    mul-long v1, v3, v16

    .line 124
    iput-wide v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 125
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_68

    const-string v2, "csd-0"

    const-string/jumbo v1, "prepend-sps-pps-to-idr-frames"

    move-object/from16 v45, v2

    if-eqz p25, :cond_30

    if-eqz v9, :cond_4

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpg-float v5, v44, v5

    if-gtz v5, :cond_2

    const v5, 0x27ac40

    goto :goto_2

    :cond_2
    const v5, 0x459c4000    # 5000.0f

    cmpg-float v5, v44, v5

    if-gtz v5, :cond_3

    const v5, 0x2191c0

    goto :goto_2

    :cond_3
    const v5, 0x17cdc0

    goto :goto_2

    :cond_4
    if-gtz v5, :cond_5

    const v5, 0xe1000

    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    .line 145
    :try_start_3
    iget-object v9, v6, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    move v2, v10

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move v2, v10

    move-object v6, v15

    move-object/from16 v12, v35

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_3
    move v10, v8

    const/4 v8, -0x5

    goto/16 :goto_100

    :catch_0
    move-exception v0

    move-object v4, v0

    move/from16 v25, v5

    move v2, v10

    goto/16 :goto_37

    .line 146
    :cond_7
    :goto_4
    :try_start_4
    rem-int/lit8 v9, v10, 0x10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v9, :cond_9

    .line 147
    :try_start_5
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_8

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing width from "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, v10

    div-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    int-to-float v2, v10

    div-float v2, v2, v16

    .line 150
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    mul-int/lit8 v2, v2, 0x10

    goto :goto_5

    :cond_9
    move v2, v10

    .line 152
    :goto_5
    :try_start_6
    rem-int/lit8 v3, v7, 0x10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    if-eqz v3, :cond_b

    .line 153
    :try_start_7
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changing height from "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v9, v7

    div-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a
    int-to-float v3, v7

    div-float v3, v3, v16

    .line 156
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    mul-int/lit8 v3, v3, 0x10

    move v7, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_6
    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move v10, v8

    goto/16 :goto_32

    :catch_1
    move-exception v0

    :goto_7
    move-object v4, v0

    move/from16 v25, v5

    goto/16 :goto_37

    .line 160
    :cond_b
    :goto_8
    :try_start_8
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16
    .catchall {:try_start_8 .. :try_end_8} :catchall_16

    if-eqz v3, :cond_c

    .line 161
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo encoder "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " duration = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v46, v11

    move-wide/from16 v10, p18

    :try_start_a
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-wide/from16 v10, p18

    goto :goto_6

    :catch_2
    move-exception v0

    move-wide/from16 v10, p18

    goto :goto_7

    :cond_c
    move-object/from16 v46, v11

    move-wide/from16 v10, p18

    .line 165
    :goto_9
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    .line 168
    :try_start_c
    iget-object v9, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v9, v2, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    const-string v4, "color-format"

    const v10, 0x7f000789

    .line 169
    invoke-virtual {v9, v4, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "bitrate"

    .line 170
    invoke-virtual {v9, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    const/16 v10, 0x1e

    .line 171
    invoke-virtual {v9, v4, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    const/4 v10, 0x1

    .line 172
    invoke-virtual {v9, v4, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_15

    :try_start_d
    const-string v10, "c2.qti.avc.encoder"

    .line 175
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_14

    .line 176
    :try_start_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    move/from16 p10, v10

    :try_start_f
    const-string/jumbo v10, "selected encoder "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 178
    invoke-virtual {v3, v9, v10, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 179
    new-instance v9, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    .line 180
    :try_start_10
    invoke-virtual {v9}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 181
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 183
    new-instance v10, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    if-eqz v6, :cond_d

    :try_start_11
    iget-object v11, v6, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v11, :cond_d

    move-object/from16 v21, v6

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object/from16 v17, v4

    move v10, v8

    move-object/from16 v67, v9

    move-object v6, v15

    move-object/from16 v12, v35

    const/4 v8, -0x5

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v64, 0x0

    goto/16 :goto_3e

    :catch_3
    move-exception v0

    move/from16 v1, p10

    move-object/from16 v16, v4

    move/from16 v25, v5

    move-object/from16 v24, v9

    const/4 v14, -0x5

    const/16 v27, 0x0

    move-object v4, v0

    goto/16 :goto_3b

    :cond_d
    const/16 v21, 0x0

    :goto_a
    int-to-float v11, v8

    move/from16 v27, v11

    const/16 v28, 0x1

    const/16 v31, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, p22

    move-object/from16 v18, p1

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    move/from16 v22, v2

    move/from16 v23, v7

    move/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p3

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v32, p33

    :try_start_12
    invoke-direct/range {v16 .. v32}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 187
    :try_start_13
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    move-object/from16 v16, v4

    const/16 v4, 0x15

    if-ge v11, v4, :cond_e

    .line 188
    :try_start_14
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v67, v9

    move-object/from16 v64, v10

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v12, v35

    const/16 v38, 0x0

    const/16 v42, 0x0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move/from16 v1, p10

    move-object v4, v0

    move/from16 v25, v5

    move-object/from16 v24, v9

    move-object/from16 v27, v10

    goto/16 :goto_2d

    :cond_e
    const/4 v4, 0x0

    .line 193
    :goto_b
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 195
    new-instance v11, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v11}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v6, v46

    invoke-virtual {v11, v6, v12, v4}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-object/from16 v4, v17

    const/4 v6, 0x1

    const/4 v11, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x5

    :goto_c
    if-nez v11, :cond_2b

    .line 197
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    xor-int/lit8 v23, v19, 0x1

    move/from16 v12, v22

    const/16 v22, 0x1

    move/from16 v73, v21

    move/from16 v21, v11

    move/from16 v11, v73

    :goto_d
    if-nez v23, :cond_10

    if-eqz v22, :cond_f

    goto :goto_e

    :cond_f
    move/from16 v22, v12

    move/from16 v12, p4

    move/from16 v73, v21

    move/from16 v21, v11

    move/from16 v11, v73

    goto :goto_c

    .line 202
    :cond_10
    :goto_e
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    if-eqz p21, :cond_11

    const-wide/16 v24, 0x55f0

    move-wide/from16 v73, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v73

    goto :goto_f

    :cond_11
    move-object/from16 v24, v9

    const-wide/16 v8, 0x9c4

    .line 203
    :goto_f
    :try_start_18
    invoke-virtual {v3, v14, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    const/4 v9, -0x1

    if-ne v8, v9, :cond_12

    move/from16 v25, v5

    move-object/from16 v27, v10

    move/from16 v26, v11

    move-object/from16 v11, v45

    const/16 v22, 0x0

    move-object/from16 v45, v1

    move v1, v9

    goto/16 :goto_1f

    :cond_12
    const/4 v9, -0x3

    if-ne v8, v9, :cond_14

    .line 207
    :try_start_19
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move/from16 v25, v5

    const/16 v5, 0x15

    if-ge v9, v5, :cond_13

    .line 208
    :try_start_1a
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    :cond_13
    move-object/from16 v27, v10

    move/from16 v26, v11

    move-object/from16 v11, v45

    move-object/from16 v45, v1

    :goto_10
    const/4 v1, -0x1

    goto/16 :goto_1f

    :catchall_5
    move-exception v0

    move/from16 v25, v5

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v64, v10

    move v8, v12

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    :goto_11
    move-object/from16 v12, v35

    const/16 v38, 0x0

    const/16 v42, 0x0

    move/from16 v10, p9

    goto/16 :goto_100

    :catch_5
    move-exception v0

    move/from16 v25, v5

    :goto_12
    move/from16 v1, p10

    move-object v4, v0

    move-object/from16 v27, v10

    goto/16 :goto_28

    :cond_14
    move/from16 v25, v5

    const/4 v5, -0x2

    if-ne v8, v5, :cond_19

    .line 211
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 212
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_15

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v11

    const-string/jumbo v11, "photo encoder new format "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_13

    :cond_15
    move/from16 v26, v11

    :goto_13
    const/4 v9, -0x5

    if-ne v12, v9, :cond_18

    if-eqz v5, :cond_18

    .line 216
    iget-object v9, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v12

    .line 217
    invoke-virtual {v5, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v5, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_18

    move-object/from16 v11, v45

    .line 218
    invoke-virtual {v5, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object/from16 v45, v1

    const-string v1, "csd-1"

    .line 219
    invoke-virtual {v5, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v9, :cond_16

    const/4 v5, 0x0

    goto :goto_14

    .line 220
    :cond_16
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    :goto_14
    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_15

    :cond_17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :goto_15
    add-int v20, v5, v1

    goto :goto_16

    :cond_18
    move-object/from16 v11, v45

    move-object/from16 v45, v1

    :goto_16
    move-object/from16 v27, v10

    goto/16 :goto_10

    :catchall_6
    move-exception v0

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v64, v10

    move v8, v12

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    move/from16 v5, v25

    goto/16 :goto_11

    :catch_6
    move-exception v0

    goto/16 :goto_12

    :cond_19
    move/from16 v26, v11

    move-object/from16 v11, v45

    move-object/from16 v45, v1

    if-ltz v8, :cond_2a

    .line 227
    :try_start_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    const/16 v5, 0x15

    if-ge v1, v5, :cond_1a

    .line 228
    :try_start_1c
    aget-object v1, v4, v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto :goto_17

    .line 230
    :cond_1a
    :try_start_1d
    invoke-virtual {v3, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_29

    .line 235
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const/4 v9, 0x1

    if-le v5, v9, :cond_24

    .line 236
    :try_start_1e
    iget v9, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    and-int/lit8 v21, v9, 0x2

    if-nez v21, :cond_1e

    if-eqz v20, :cond_1b

    and-int/lit8 v21, v9, 0x1

    if-eqz v21, :cond_1b

    move-object/from16 v21, v4

    .line 238
    :try_start_1f
    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v4, v4, v20

    iput v4, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v5, v5, v20

    .line 239
    iput v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_18

    :cond_1b
    move-object/from16 v21, v4

    :goto_18
    if-eqz v6, :cond_1c

    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_1c

    .line 242
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v4, v1, v14}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    const/4 v6, 0x0

    .line 245
    :cond_1c
    :try_start_20
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    move-object/from16 v27, v10

    const/4 v5, 0x1

    :try_start_21
    invoke-virtual {v4, v12, v1, v14, v5}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    cmp-long v1, v9, v4

    if-eqz v1, :cond_23

    .line 247
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_23

    .line 248
    iget-wide v4, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v28, v4, v17

    if-lez v28, :cond_1d

    goto :goto_19

    :cond_1d
    move-wide/from16 v4, v17

    :goto_19
    move/from16 v28, v6

    long-to-float v6, v4

    div-float v6, v6, v43

    div-float v6, v6, v43

    div-float v6, v6, v44

    .line 251
    invoke-interface {v1, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v17, v4

    goto/16 :goto_1d

    :cond_1e
    move-object/from16 v21, v4

    move-object/from16 v27, v10

    const/4 v4, -0x5

    if-ne v12, v4, :cond_23

    .line 255
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 258
    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v5, v4, [B

    .line 259
    iget v9, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v9, v4

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 260
    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_1a
    if-ltz v1, :cond_20

    const/4 v9, 0x3

    if-le v1, v9, :cond_20

    .line 266
    aget-byte v9, v5, v1

    if-ne v9, v4, :cond_1f

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v5, v4

    if-nez v4, :cond_1f

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, v5, v4

    if-nez v4, :cond_1f

    add-int/lit8 v4, v1, -0x3

    aget-byte v9, v5, v4

    if-nez v9, :cond_1f

    .line 267
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 268
    iget v9, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move/from16 v28, v6

    const/4 v10, 0x0

    .line 269
    invoke-virtual {v1, v5, v10, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v6, v4

    invoke-virtual {v9, v5, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1b

    :cond_1f
    move/from16 v28, v6

    add-int/lit8 v1, v1, -0x1

    move/from16 v6, v28

    const/4 v4, 0x1

    goto :goto_1a

    :cond_20
    move/from16 v28, v6

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 278
    :goto_1b
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v4, v2, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v1, :cond_21

    if-eqz v9, :cond_21

    .line 280
    invoke-virtual {v4, v11, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v1, "csd-1"

    .line 281
    invoke-virtual {v4, v1, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 283
    :cond_21
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v12

    goto :goto_1d

    .line 256
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unsupported!!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    goto/16 :goto_25

    :cond_23
    move/from16 v28, v6

    goto :goto_1d

    :catchall_8
    move-exception v0

    move-object/from16 v27, v10

    :goto_1c
    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move v8, v12

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    goto/16 :goto_29

    :catch_8
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_25

    :cond_24
    move-object/from16 v21, v4

    move/from16 v28, v6

    move-object/from16 v27, v10

    :goto_1d
    move/from16 v6, v28

    .line 286
    :try_start_22
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_1e

    :cond_25
    const/4 v1, 0x0

    :goto_1e
    const/4 v4, 0x0

    .line 287
    invoke-virtual {v3, v8, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v4, v21

    move/from16 v21, v1

    goto/16 :goto_10

    :goto_1f
    if-eq v8, v1, :cond_26

    move/from16 v8, p9

    move-object/from16 v9, v24

    move/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v1, v45

    move-object/from16 v45, v11

    move/from16 v11, v26

    goto/16 :goto_d

    :cond_26
    if-nez v19, :cond_27

    .line 294
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move/from16 v1, v26

    int-to-float v5, v1

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v5, v8

    mul-float v5, v5, v43

    mul-float v5, v5, v43

    mul-float v5, v5, v43

    float-to-long v8, v5

    move-object/from16 v5, v24

    .line 296
    :try_start_23
    invoke-virtual {v5, v8, v9}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 297
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    const/high16 v9, 0x41f00000    # 30.0f

    mul-float v9, v9, v44

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_28

    .line 303
    invoke-virtual {v3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v19, 0x1

    const/16 v23, 0x0

    goto :goto_20

    :catchall_9
    move-exception v0

    goto :goto_22

    :catch_9
    move-exception v0

    goto/16 :goto_24

    :cond_27
    move-object/from16 v5, v24

    move/from16 v1, v26

    :cond_28
    :goto_20
    move/from16 v8, p9

    move-object v9, v5

    move/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v73, v11

    move v11, v1

    move-object/from16 v1, v45

    move-object/from16 v45, v73

    goto/16 :goto_d

    :cond_29
    move-object/from16 v27, v10

    move-object/from16 v5, v24

    .line 233
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_a
    move-exception v0

    goto :goto_21

    :catch_a
    move-exception v0

    goto :goto_23

    :cond_2a
    move-object/from16 v27, v10

    move-object/from16 v5, v24

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_26

    :catch_b
    move-exception v0

    goto :goto_27

    :catchall_c
    move-exception v0

    move/from16 v25, v5

    :goto_21
    move-object/from16 v27, v10

    :goto_22
    move-object/from16 v5, v24

    goto :goto_26

    :catch_c
    move-exception v0

    move/from16 v25, v5

    :goto_23
    move-object/from16 v27, v10

    :goto_24
    move-object/from16 v5, v24

    :goto_25
    move/from16 v1, p10

    move-object v4, v0

    goto :goto_28

    :catchall_d
    move-exception v0

    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    :goto_26
    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v67, v5

    move v8, v12

    move-object v6, v15

    move-object/from16 v17, v16

    goto :goto_29

    :catch_d
    move-exception v0

    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    :goto_27
    move/from16 v1, p10

    move-object v4, v0

    move-object/from16 v24, v5

    :goto_28
    move v14, v12

    goto/16 :goto_3b

    :catchall_e
    move-exception v0

    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v67, v5

    move-object v6, v15

    move-object/from16 v17, v16

    move/from16 v8, v22

    :goto_29
    move/from16 v5, v25

    move-object/from16 v64, v27

    move-object/from16 v12, v35

    goto :goto_2b

    :catch_e
    move-exception v0

    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    move/from16 v1, p10

    move-object v4, v0

    move-object/from16 v24, v5

    move/from16 v14, v22

    goto/16 :goto_3b

    :cond_2b
    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    move/from16 v8, p9

    move/from16 v1, p10

    move-object/from16 v4, v16

    move/from16 v6, v25

    move-object/from16 v12, v35

    const/4 v14, 0x0

    const/16 v38, 0x0

    goto/16 :goto_3d

    :catchall_f
    move-exception v0

    goto :goto_2a

    :catch_f
    move-exception v0

    goto :goto_2c

    :catchall_10
    move-exception v0

    move-object/from16 v16, v4

    :goto_2a
    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v67, v5

    move-object v6, v15

    move-object/from16 v17, v16

    move/from16 v5, v25

    move-object/from16 v64, v27

    move-object/from16 v12, v35

    const/4 v8, -0x5

    :goto_2b
    const/16 v38, 0x0

    const/16 v42, 0x0

    goto/16 :goto_100

    :catch_10
    move-exception v0

    move-object/from16 v16, v4

    :goto_2c
    move/from16 v25, v5

    move-object v5, v9

    move-object/from16 v27, v10

    move/from16 v1, p10

    move-object v4, v0

    move-object/from16 v24, v5

    :goto_2d
    const/4 v14, -0x5

    goto/16 :goto_3b

    :catchall_11
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move-object v5, v9

    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v67, v5

    move-object v6, v15

    move-object/from16 v17, v16

    move/from16 v5, v25

    move-object/from16 v12, v35

    const/4 v8, -0x5

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v64, 0x0

    goto/16 :goto_100

    :catch_11
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move-object v5, v9

    move/from16 v1, p10

    move-object v4, v0

    move-object/from16 v24, v5

    const/4 v14, -0x5

    goto/16 :goto_3a

    :catchall_12
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    goto :goto_2e

    :catch_12
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    goto :goto_2f

    :catchall_13
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move/from16 p10, v10

    :goto_2e
    move/from16 v10, p9

    move/from16 v61, p10

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v12, v35

    const/4 v8, -0x5

    const/16 v38, 0x0

    goto/16 :goto_fe

    :catch_13
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move/from16 p10, v10

    :goto_2f
    move/from16 v1, p10

    move-object v4, v0

    goto :goto_30

    :catchall_14
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move/from16 v10, p9

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v12, v35

    const/4 v8, -0x5

    goto :goto_35

    :catch_14
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v25, v5

    move-object v4, v0

    const/4 v1, 0x0

    :goto_30
    const/4 v14, -0x5

    goto :goto_39

    :catchall_15
    move-exception v0

    move/from16 v25, v5

    move/from16 v10, p9

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object v4, v3

    move-object v6, v15

    move-object/from16 v12, v35

    goto :goto_34

    :catch_15
    move-exception v0

    move/from16 v25, v5

    move-object v4, v0

    const/4 v1, 0x0

    goto :goto_38

    :catchall_16
    move-exception v0

    move/from16 v25, v5

    goto :goto_31

    :catch_16
    move-exception v0

    move/from16 v25, v5

    goto :goto_36

    :catchall_17
    move-exception v0

    move/from16 v25, v5

    move/from16 v2, p7

    :goto_31
    move/from16 v10, p9

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    :goto_32
    move-object v6, v15

    move-object/from16 v12, v35

    :goto_33
    const/4 v4, 0x0

    :goto_34
    const/4 v8, -0x5

    const/16 v17, 0x0

    :goto_35
    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    goto/16 :goto_ff

    :catch_17
    move-exception v0

    move/from16 v25, v5

    move/from16 v2, p7

    :goto_36
    move-object v4, v0

    :goto_37
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_38
    const/4 v14, -0x5

    const/16 v16, 0x0

    :goto_39
    const/16 v24, 0x0

    :goto_3a
    const/16 v27, 0x0

    .line 312
    :goto_3b
    :try_start_24
    instance-of v5, v4, Ljava/lang/IllegalStateException;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1d

    if-eqz v5, :cond_2c

    if-nez p21, :cond_2c

    const/16 v38, 0x1

    goto :goto_3c

    :cond_2c
    const/16 v38, 0x0

    .line 315
    :goto_3c
    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1c

    move/from16 v6, v25

    :try_start_26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " framerate: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1b

    move/from16 v8, p9

    :try_start_27
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1a

    move-object/from16 v12, v35

    :try_start_28
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 316
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    move/from16 v22, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v24

    const/4 v14, 0x1

    :goto_3d
    if-eqz v27, :cond_2d

    .line 321
    :try_start_29
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/16 v27, 0x0

    goto :goto_3f

    :catchall_18
    move-exception v0

    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object/from16 v17, v4

    move-object/from16 v67, v5

    move v5, v6

    move v10, v8

    move-object v6, v15

    move/from16 v8, v22

    move-object/from16 v64, v27

    const/16 v42, 0x0

    move-object v1, v0

    :goto_3e
    move-object v4, v3

    goto/16 :goto_100

    :cond_2d
    :goto_3f
    if-eqz v5, :cond_2e

    .line 325
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/4 v5, 0x0

    :cond_2e
    if-eqz v3, :cond_2f

    .line 329
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 330
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    const/4 v3, 0x0

    .line 333
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_18

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object/from16 v62, v3

    move-object/from16 v17, v4

    move/from16 v16, v6

    move v10, v8

    move v3, v14

    move-object v6, v15

    move/from16 v1, v22

    move-object/from16 v64, v27

    const/16 v42, 0x0

    move-wide/from16 v13, p14

    move v15, v2

    goto/16 :goto_f7

    :catchall_19
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object v4, v3

    move v5, v6

    move v10, v8

    move v8, v14

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    move-object/from16 v64, v27

    goto :goto_42

    :catchall_1a
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object v4, v3

    move v5, v6

    move v10, v8

    goto :goto_41

    :catchall_1b
    move-exception v0

    goto :goto_40

    :catchall_1c
    move-exception v0

    move/from16 v6, v25

    :goto_40
    move/from16 v10, p9

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object v4, v3

    move v5, v6

    :goto_41
    move v8, v14

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    move-object/from16 v64, v27

    move-object/from16 v12, v35

    goto :goto_42

    :catchall_1d
    move-exception v0

    move/from16 v6, v25

    move/from16 v10, p9

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move/from16 v61, v1

    move-object v4, v3

    move v5, v6

    move v8, v14

    move-object v6, v15

    move-object/from16 v17, v16

    move-object/from16 v67, v24

    move-object/from16 v64, v27

    move-object/from16 v12, v35

    const/16 v38, 0x0

    :goto_42
    const/16 v42, 0x0

    :goto_43
    move-wide/from16 v13, p14

    :goto_44
    move-object v1, v0

    goto/16 :goto_100

    :cond_30
    move-object v6, v11

    move-object/from16 v12, v35

    move-object/from16 v11, v45

    const-wide/16 v3, 0x9c4

    move-object/from16 v45, v1

    .line 335
    :try_start_2a
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v10, p1

    .line 336
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 338
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_66

    const/4 v2, 0x0

    :try_start_2b
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_65

    const/4 v2, -0x1

    if-eq v5, v2, :cond_31

    if-nez p30, :cond_31

    .line 339
    :try_start_2c
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1e

    move v4, v2

    goto :goto_46

    :catchall_1e
    move-exception v0

    move/from16 v2, p7

    :goto_45
    move-wide/from16 v13, p14

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move v10, v8

    move-object v6, v15

    goto/16 :goto_33

    :cond_31
    const/4 v4, -0x1

    :goto_46
    const-string v3, "mime"

    if-ltz v1, :cond_32

    .line 341
    :try_start_2d
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v3

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1e

    if-nez v2, :cond_33

    const/4 v2, 0x1

    goto :goto_47

    :cond_32
    move-object/from16 v35, v3

    :cond_33
    const/4 v2, 0x0

    :goto_47
    if-nez p20, :cond_36

    if-eqz v2, :cond_34

    goto/16 :goto_49

    .line 859
    :cond_34
    :try_start_2e
    new-instance v1, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v1}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move/from16 v13, p4

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v13, v2}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 860
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1f

    const/4 v1, -0x1

    if-eq v5, v1, :cond_35

    if-nez p30, :cond_35

    const/16 v16, 0x1

    goto :goto_48

    :cond_35
    const/16 v16, 0x0

    :goto_48
    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v14, p11

    move-object/from16 v11, p26

    move-wide/from16 v5, p12

    move v9, v7

    move v14, v8

    move-wide/from16 v7, p14

    move v13, v9

    move-wide/from16 v9, p18

    move-object v13, v11

    move-object/from16 v11, p2

    move-object/from16 v50, v12

    move/from16 v12, v16

    :try_start_2f
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_20

    move/from16 v7, p8

    move/from16 v16, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move v10, v14

    move-object v6, v15

    const/4 v1, -0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    move/from16 v15, p7

    move-wide/from16 v13, p14

    goto/16 :goto_f7

    :catchall_1f
    move-exception v0

    move-object/from16 v13, p26

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v5, p10

    goto/16 :goto_45

    :cond_36
    :goto_49
    move-object/from16 v50, v12

    move-object v7, v14

    const/4 v5, -0x1

    move/from16 v12, p11

    move v14, v8

    move-object v8, v13

    move-object/from16 v13, p26

    if-ltz v1, :cond_ab

    const-wide/32 v46, -0x80000000

    const/16 v2, 0x3e8

    .line 361
    :try_start_30
    div-int v3, v2, v14
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_65
    .catchall {:try_start_30 .. :try_end_30} :catchall_5d

    mul-int/2addr v3, v2

    move-object v10, v6

    int-to-long v5, v3

    const/16 v3, 0x1e

    if-ge v14, v3, :cond_37

    add-int/lit8 v3, v14, 0x5

    .line 364
    :try_start_31
    div-int v3, v2, v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_18
    .catchall {:try_start_31 .. :try_end_31} :catchall_20

    :goto_4a
    mul-int/2addr v3, v2

    int-to-long v2, v3

    goto :goto_50

    :catchall_20
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v5, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v4, 0x0

    const/4 v8, -0x5

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_4b
    move-wide/from16 v13, p14

    goto/16 :goto_100

    :catch_18
    move-exception v0

    move/from16 v2, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v5, v0

    move/from16 v66, v1

    move v10, v14

    :goto_4c
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4d
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_4e
    const/16 v41, -0x5

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_4f
    move-wide/from16 v13, p14

    goto/16 :goto_f1

    :cond_37
    add-int/lit8 v3, v14, 0x1

    .line 366
    :try_start_32
    div-int v3, v2, v3

    goto :goto_4a

    :goto_50
    move-wide/from16 v52, v2

    .line 369
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 370
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_65
    .catchall {:try_start_32 .. :try_end_32} :catchall_5d

    if-eqz v9, :cond_3b

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float v2, v44, v2

    if-gtz v2, :cond_38

    const v2, 0x27ac40

    :goto_51
    move/from16 v54, v1

    goto :goto_52

    :cond_38
    const v2, 0x459c4000    # 5000.0f

    cmpg-float v2, v44, v2

    if-gtz v2, :cond_39

    const v2, 0x2191c0

    goto :goto_51

    :cond_39
    const v2, 0x17cdc0

    goto :goto_51

    :goto_52
    const v1, 0xe4e1c0

    if-lt v12, v1, :cond_3a

    :try_start_33
    const-string v1, "OMX.google.h264.encoder"
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_19
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    goto :goto_53

    :catchall_21
    move-exception v0

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move v5, v2

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v4, 0x0

    const/4 v8, -0x5

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    goto :goto_56

    :catch_19
    move-exception v0

    move-object/from16 v11, p32

    move-object v5, v0

    move v10, v14

    move/from16 v66, v54

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    goto :goto_4e

    :cond_3a
    const/4 v1, 0x0

    :goto_53
    const-wide/16 v17, 0x0

    goto :goto_54

    :cond_3b
    move/from16 v54, v1

    if-gtz p10, :cond_3c

    move-wide/from16 v17, p16

    const/4 v1, 0x0

    const v2, 0xe1000

    goto :goto_54

    :cond_3c
    move/from16 v2, p10

    move-wide/from16 v17, p16

    const/4 v1, 0x0

    :goto_54
    if-lez v12, :cond_3d

    .line 389
    :try_start_34
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1a
    .catchall {:try_start_34 .. :try_end_34} :catchall_22

    goto :goto_59

    :catchall_22
    move-exception v0

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move v5, v2

    move v10, v14

    move-object v6, v15

    move-wide/from16 v20, v17

    :goto_55
    move-object/from16 v12, v50

    const/4 v4, 0x0

    const/4 v8, -0x5

    const/16 v17, 0x0

    :goto_56
    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_57
    move/from16 v2, p7

    goto/16 :goto_4b

    :catch_1a
    move-exception v0

    move-object/from16 v11, p32

    move-object v5, v0

    move v10, v14

    move-wide/from16 v20, v17

    :goto_58
    move/from16 v66, v54

    goto/16 :goto_4c

    :cond_3d
    :goto_59
    const-wide/16 v19, 0x0

    cmp-long v21, v17, v19

    move-wide/from16 v55, v5

    if-ltz v21, :cond_3e

    move-wide/from16 v5, v39

    goto :goto_5a

    :cond_3e
    move-wide/from16 v5, v17

    :goto_5a
    cmp-long v17, v5, v19

    if-ltz v17, :cond_3f

    move/from16 v57, v4

    .line 398
    :try_start_35
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v58, v10

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1b
    .catchall {:try_start_35 .. :try_end_35} :catchall_23

    move-wide/from16 p16, v5

    goto/16 :goto_5e

    :catchall_23
    move-exception v0

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move-wide/from16 v20, v5

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v4, 0x0

    const/4 v8, -0x5

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    move-wide/from16 v13, p14

    move v5, v2

    :goto_5b
    move/from16 v2, p7

    goto/16 :goto_100

    :catch_1b
    move-exception v0

    move-object/from16 v11, p32

    move-wide/from16 v20, v5

    move v10, v14

    move/from16 v66, v54

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v41, -0x5

    const/16 v64, 0x0

    const/16 v67, 0x0

    move-wide/from16 v13, p14

    move-object v5, v0

    goto/16 :goto_f1

    :cond_3f
    move/from16 v57, v4

    move-wide/from16 p16, v5

    move-object/from16 v58, v10

    const-wide/16 v17, 0x0

    move-wide/from16 v5, p12

    cmp-long v4, v5, v17

    if-lez v4, :cond_40

    .line 400
    :try_start_36
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1c
    .catchall {:try_start_36 .. :try_end_36} :catchall_24

    goto :goto_5e

    :catchall_24
    move-exception v0

    :goto_5c
    move/from16 v7, p8

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move v5, v2

    move v10, v14

    move-object v6, v15

    goto/16 :goto_55

    :catch_1c
    move-exception v0

    :goto_5d
    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v5, v0

    move v10, v14

    goto/16 :goto_58

    .line 402
    :cond_40
    :try_start_37
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_64
    .catchall {:try_start_37 .. :try_end_37} :catchall_5c

    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    :try_start_38
    invoke-virtual {v4, v5, v6, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_63
    .catchall {:try_start_38 .. :try_end_38} :catchall_5b

    :goto_5e
    if-eqz v13, :cond_43

    .line 407
    :try_start_39
    iget-object v4, v13, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1d
    .catchall {:try_start_39 .. :try_end_39} :catchall_25

    if-nez v4, :cond_43

    const/16 v4, 0x5a

    move/from16 v10, p3

    move/from16 v6, p20

    if-eq v10, v4, :cond_42

    const/16 v4, 0x10e

    if-ne v10, v4, :cond_41

    goto :goto_5f

    .line 412
    :cond_41
    :try_start_3a
    iget v4, v13, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 413
    iget v5, v13, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_60

    .line 409
    :cond_42
    :goto_5f
    iget v4, v13, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 410
    iget v5, v13, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1c
    .catchall {:try_start_3a .. :try_end_3a} :catchall_24

    goto :goto_60

    :catchall_25
    move-exception v0

    move/from16 v10, p3

    move/from16 v6, p20

    goto :goto_5c

    :catch_1d
    move-exception v0

    move/from16 v10, p3

    move/from16 v6, p20

    goto :goto_5d

    :cond_43
    move/from16 v10, p3

    move/from16 v6, p20

    move/from16 v4, p7

    move/from16 v5, p8

    :goto_60
    if-eqz v1, :cond_44

    .line 422
    :try_start_3b
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1e
    .catchall {:try_start_3b .. :try_end_3b} :catchall_24

    goto :goto_61

    :catch_1e
    :cond_44
    const/4 v1, 0x0

    :goto_61
    if-nez v1, :cond_45

    .line 429
    :try_start_3c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1f
    .catchall {:try_start_3c .. :try_end_3c} :catchall_26

    goto :goto_63

    :catchall_26
    move-exception v0

    move/from16 v7, p8

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v4, v1

    move v5, v2

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v8, -0x5

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_62
    move/from16 v2, p7

    goto/16 :goto_43

    :catch_1f
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v5, v0

    move-object v4, v1

    move v10, v14

    move/from16 v66, v54

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4d

    .line 432
    :cond_45
    :goto_63
    :try_start_3d
    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_62
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5a

    if-eqz v17, :cond_46

    .line 433
    :try_start_3e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create encoder with w = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " h = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bitrate = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1f
    .catchall {:try_start_3e .. :try_end_3e} :catchall_26

    .line 435
    :cond_46
    :try_start_3f
    iget-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v10, "color-format"

    move-object/from16 v59, v11

    const v11, 0x7f000789

    .line 436
    invoke-virtual {v6, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "bitrate"

    .line 437
    invoke-virtual {v6, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_62
    .catchall {:try_start_3f .. :try_end_3f} :catchall_5a

    if-eqz v9, :cond_47

    .line 438
    :try_start_40
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_47

    const-string v10, "bitrate-mode"

    const/4 v11, 0x2

    .line 440
    invoke-virtual {v6, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1f
    .catchall {:try_start_40 .. :try_end_40} :catchall_26

    :cond_47
    :try_start_41
    const-string v10, "max-bitrate"

    .line 442
    invoke-virtual {v6, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "frame-rate"

    .line 443
    invoke-virtual {v6, v10, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v10, "i-frame-interval"

    const/4 v11, 0x1

    .line 444
    invoke-virtual {v6, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 448
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_62
    .catchall {:try_start_41 .. :try_end_41} :catchall_5a

    const/16 v11, 0x18

    if-lt v10, v11, :cond_4d

    :try_start_42
    const-string v11, "color-transfer"

    .line 449
    invoke-virtual {v3, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_48

    const-string v11, "color-transfer"

    .line 450
    invoke-virtual {v3, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    goto :goto_64

    :cond_48
    const/4 v11, 0x0

    :goto_64
    const-string v12, "color-standard"

    .line 452
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_49

    const-string v12, "color-standard"

    .line 453
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    goto :goto_65

    :cond_49
    const/4 v12, 0x0

    :goto_65
    const-string v13, "color-range"

    .line 455
    invoke-virtual {v3, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4a

    const-string v13, "color-range"

    .line 456
    invoke-virtual {v3, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    :cond_4a
    const/4 v13, 0x6

    if-eq v11, v13, :cond_4b

    const/4 v13, 0x7

    if-ne v11, v13, :cond_4c

    :cond_4b
    const/4 v13, 0x6

    if-ne v12, v13, :cond_4c

    move v13, v12

    move v12, v11

    const/4 v11, 0x1

    goto :goto_66

    :cond_4c
    move v13, v12

    move v12, v11

    const/4 v11, 0x0

    goto :goto_66

    :cond_4d
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_66
    move-object/from16 v60, v3

    const/16 v3, 0x17

    if-ge v10, v3, :cond_4f

    .line 463
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 p10, v4

    const/16 v4, 0x1e0

    if-gt v3, v4, :cond_50

    if-nez v9, :cond_50

    const v3, 0xe1000

    if-le v2, v3, :cond_4e

    move v2, v3

    :cond_4e
    const-string v3, "bitrate"

    .line 467
    invoke-virtual {v6, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1f
    .catchall {:try_start_42 .. :try_end_42} :catchall_26

    goto :goto_67

    :cond_4f
    move/from16 p10, v4

    :cond_50
    :goto_67
    move v9, v2

    .line 470
    :try_start_43
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_61
    .catchall {:try_start_43 .. :try_end_43} :catchall_59

    :try_start_44
    const-string v2, "c2.qti.avc.encoder"

    .line 471
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_60
    .catchall {:try_start_44 .. :try_end_44} :catchall_58

    .line 472
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected encoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 473
    invoke-virtual {v1, v6, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 474
    new-instance v3, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_5f
    .catchall {:try_start_45 .. :try_end_45} :catchall_57

    .line 475
    :try_start_46
    invoke-virtual {v3}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 476
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 478
    new-instance v2, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_5e
    .catchall {:try_start_46 .. :try_end_46} :catchall_56

    const/16 v18, 0x0

    move-object/from16 v62, v1

    int-to-float v1, v14

    move/from16 v27, v1

    const/16 v28, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p22

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    move-object/from16 v21, p26

    move/from16 v22, p7

    move/from16 v23, p8

    move/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p3

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p32

    move-object/from16 v32, p33

    :try_start_47
    invoke-direct/range {v16 .. v32}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_5d
    .catchall {:try_start_47 .. :try_end_47} :catchall_55

    if-nez p32, :cond_52

    .line 479
    :try_start_48
    invoke-virtual {v2}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v1

    if-eqz v1, :cond_52

    if-eqz v11, :cond_52

    .line 480
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_21
    .catchall {:try_start_48 .. :try_end_48} :catchall_28

    .line 481
    :try_start_49
    iput v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 482
    iput v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_51

    const-string v11, "color-transfer"

    const/4 v12, 0x3

    .line 485
    invoke-virtual {v6, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_20
    .catchall {:try_start_49 .. :try_end_49} :catchall_27

    :cond_51
    move-object v11, v1

    goto/16 :goto_6c

    :catchall_27
    move-exception v0

    move/from16 v7, p8

    move-wide/from16 v20, p16

    move-object v11, v1

    move-object/from16 v64, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move v5, v9

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    move-object/from16 v4, v62

    const/4 v8, -0x5

    const/16 v38, 0x0

    const/16 v42, 0x0

    goto/16 :goto_62

    :catch_20
    move-exception v0

    move-wide/from16 v20, p16

    move-object v5, v0

    move-object v11, v1

    goto :goto_68

    :catchall_28
    move-exception v0

    move/from16 v7, p8

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move-object/from16 v64, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move v5, v9

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    move-object/from16 v4, v62

    const/4 v8, -0x5

    const/16 v38, 0x0

    const/16 v42, 0x0

    goto/16 :goto_57

    :catch_21
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v5, v0

    :goto_68
    move-object/from16 v64, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move v2, v9

    move v10, v14

    move/from16 v66, v54

    move/from16 v1, v61

    move-object/from16 v4, v62

    :goto_69
    const/4 v3, 0x0

    :goto_6a
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6b
    const/16 v41, -0x5

    goto/16 :goto_4f

    :cond_52
    move-object/from16 v11, p32

    :goto_6c
    const/16 v1, 0x18

    if-lt v10, v1, :cond_53

    if-eqz v11, :cond_53

    .line 488
    :try_start_4a
    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {v2}, Lorg/telegram/messenger/video/OutputSurface;->supportsEXTYUV()Z

    move-result v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_24
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2b

    if-eqz v1, :cond_53

    const/4 v6, 0x1

    move-object/from16 v63, v45

    move/from16 v12, v54

    move-object/from16 v13, v62

    move/from16 v1, p5

    move-object/from16 v64, v2

    move-object/from16 v65, v59

    move/from16 v2, p6

    move-object/from16 v67, v3

    move-object/from16 v68, v35

    move-object/from16 v66, v60

    move/from16 v3, p7

    move/from16 v69, p10

    move-object/from16 v17, v4

    move/from16 v16, v9

    move/from16 v9, v57

    const/16 v14, 0x15

    move/from16 v4, p8

    move-wide/from16 v20, p16

    move/from16 v70, v5

    move-wide/from16 v18, v55

    move v5, v6

    move-object/from16 v71, v58

    move-object v6, v11

    .line 490
    :try_start_4b
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move-object v14, v6

    move-object v6, v11

    .line 491
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_23
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2a

    move-object/from16 v6, v64

    const/4 v2, 0x1

    .line 489
    :try_start_4c
    invoke-virtual {v6, v14, v1, v2}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_22
    .catchall {:try_start_4c .. :try_end_4c} :catchall_29

    goto/16 :goto_77

    :catchall_29
    move-exception v0

    goto :goto_6e

    :catch_22
    move-exception v0

    move/from16 v10, p9

    move-object v5, v0

    move-object/from16 v64, v6

    goto :goto_6d

    :catchall_2a
    move-exception v0

    move-object/from16 v6, v64

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object v1, v0

    goto :goto_6f

    :catch_23
    move-exception v0

    move-object/from16 v6, v64

    move/from16 v10, p9

    move-object v5, v0

    :goto_6d
    move/from16 v66, v12

    move-object v4, v13

    goto/16 :goto_75

    :catchall_2b
    move-exception v0

    move-wide/from16 v20, p16

    move-object v6, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move/from16 v16, v9

    move-object/from16 v13, v62

    :goto_6e
    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object v1, v0

    move-object/from16 v64, v6

    :goto_6f
    move-object v4, v13

    goto/16 :goto_73

    :catch_24
    move-exception v0

    move-wide/from16 v20, p16

    move-object v6, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move/from16 v16, v9

    move-object/from16 v13, v62

    move/from16 v10, p9

    move-object v5, v0

    move-object/from16 v64, v6

    move-object v4, v13

    move/from16 v2, v16

    move/from16 v66, v54

    goto/16 :goto_76

    :cond_53
    move/from16 v69, p10

    move-wide/from16 v20, p16

    move-object v6, v2

    move-object/from16 v67, v3

    move-object/from16 v17, v4

    move/from16 v70, v5

    move/from16 v16, v9

    move-object/from16 v68, v35

    move-object/from16 v63, v45

    move/from16 v12, v54

    move-wide/from16 v18, v55

    move/from16 v9, v57

    move-object/from16 v71, v58

    move-object/from16 v65, v59

    move-object/from16 v66, v60

    move-object/from16 v13, v62

    if-nez p27, :cond_56

    move/from16 v1, p8

    .line 494
    :try_start_4d
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move/from16 v14, p5

    move/from16 v5, p6

    move v4, v1

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_27
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2d

    int-to-float v1, v1

    div-float/2addr v2, v1

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_56

    const/16 v22, 0x1

    if-eqz p31, :cond_54

    const/16 v23, 0x0

    goto :goto_70

    :cond_54
    const/16 v23, 0x3

    :goto_70
    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 p10, v11

    move v11, v4

    move/from16 v4, p8

    move/from16 v5, v22

    move-object v14, v6

    move/from16 v6, v23

    .line 496
    :try_start_4e
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz p31, :cond_55

    const/16 v22, 0x0

    goto :goto_71

    :cond_55
    const/16 v22, 0x3

    :goto_71
    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move-object v11, v6

    move/from16 v6, v22

    .line 497
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_26
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2c

    const/4 v2, 0x0

    .line 495
    :try_start_4f
    invoke-virtual {v14, v11, v1, v2}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_25
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2c

    goto/16 :goto_78

    :catch_25
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move v3, v2

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move/from16 v2, v16

    move/from16 v1, v61

    goto/16 :goto_6a

    :catchall_2c
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    goto :goto_72

    :catch_26
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    goto :goto_74

    :catchall_2d
    move-exception v0

    move-object v14, v6

    move-object/from16 p10, v11

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    :goto_72
    move-object v1, v0

    move-object v4, v13

    move-object/from16 v64, v14

    :goto_73
    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    const/16 v38, 0x0

    const/16 v42, 0x0

    goto/16 :goto_4b

    :catch_27
    move-exception v0

    move-object v14, v6

    move-object/from16 p10, v11

    move/from16 v10, p9

    :goto_74
    move-object v5, v0

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    :goto_75
    move/from16 v2, v16

    :goto_76
    move/from16 v1, v61

    goto/16 :goto_69

    :cond_56
    :goto_77
    move-object v14, v6

    move-object/from16 p10, v11

    :goto_78
    move-object/from16 v1, v66

    .line 501
    :try_start_50
    invoke-direct {v15, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_5c
    .catchall {:try_start_50 .. :try_end_50} :catchall_54

    .line 502
    :try_start_51
    invoke-virtual {v14}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_5b
    .catchall {:try_start_51 .. :try_end_51} :catchall_53

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_52
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_5a
    .catchall {:try_start_52 .. :try_end_52} :catchall_52

    .line 503
    :try_start_53
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_5b
    .catchall {:try_start_53 .. :try_end_53} :catchall_53

    const/16 v1, 0x15

    if-ge v10, v1, :cond_57

    .line 509
    :try_start_54
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 510
    invoke-virtual {v13}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_28
    .catchall {:try_start_54 .. :try_end_54} :catchall_2e

    goto :goto_7a

    :catchall_2e
    move-exception v0

    :goto_79
    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v2

    move-object v4, v13

    move-object/from16 v64, v14

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    const/16 v38, 0x0

    goto/16 :goto_57

    :catch_28
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move-object v8, v4

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move/from16 v2, v16

    move/from16 v1, v61

    const/4 v3, 0x0

    goto/16 :goto_6b

    :cond_57
    move-object v1, v4

    move-object v10, v1

    .line 514
    :goto_7a
    :try_start_55
    new-instance v3, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v3}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v6, p4

    move-object/from16 v8, v71

    invoke-virtual {v3, v8, v6, v5}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v3

    iput-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_5b
    .catchall {:try_start_55 .. :try_end_55} :catchall_53

    if-ltz v9, :cond_60

    .line 516
    :try_start_56
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    move-object/from16 v5, v68

    .line 517
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "audio/mp4a-latm"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_35
    .catchall {:try_start_56 .. :try_end_56} :catchall_35

    if-nez v8, :cond_59

    :try_start_57
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "audio/mpeg"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_28
    .catchall {:try_start_57 .. :try_end_57} :catchall_2e

    if-eqz v8, :cond_58

    goto :goto_7b

    :cond_58
    const/4 v8, 0x0

    goto :goto_7c

    :cond_59
    :goto_7b
    const/4 v8, 0x1

    .line 519
    :goto_7c
    :try_start_58
    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "audio/unknown"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_35
    .catchall {:try_start_58 .. :try_end_58} :catchall_35

    if-eqz v5, :cond_5a

    const/4 v9, -0x1

    :cond_5a
    if-ltz v9, :cond_5f

    if-eqz v8, :cond_5d

    .line 525
    :try_start_59
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v11, 0x1

    invoke-virtual {v5, v3, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    .line 526
    iget-object v11, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2d
    .catchall {:try_start_59 .. :try_end_59} :catchall_2f

    :try_start_5a
    const-string v11, "max-input-size"

    .line 528
    invoke-virtual {v3, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_29
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2e

    goto :goto_7d

    :catch_29
    move-exception v0

    move-object v3, v0

    .line 530
    :try_start_5b
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_7d
    if-gtz v3, :cond_5b

    const/high16 v3, 0x10000

    .line 535
    :cond_5b
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2d
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2f

    move/from16 p16, v5

    const-wide/16 v22, 0x0

    move-wide/from16 v5, p12

    cmp-long v24, v5, v22

    if-lez v24, :cond_5c

    .line 538
    :try_start_5c
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2e

    move-object/from16 p17, v1

    const/4 v1, 0x0

    :try_start_5d
    invoke-virtual {v4, v5, v6, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2a
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2e

    move/from16 p32, v3

    move/from16 v22, v8

    goto :goto_7e

    :catch_2a
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move v3, v1

    move-object v9, v2

    goto :goto_7f

    :cond_5c
    move-object/from16 p17, v1

    .line 540
    :try_start_5e
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2c
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2e

    move/from16 p32, v3

    move/from16 v22, v8

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    :try_start_5f
    invoke-virtual {v1, v3, v4, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_2b
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2e

    :goto_7e
    move-object/from16 v4, p1

    move/from16 v1, p16

    move-object/from16 v62, v13

    move-object/from16 v64, v14

    move/from16 v3, v22

    const/4 v8, 0x0

    move-wide/from16 v13, p14

    move/from16 v22, p32

    goto/16 :goto_8d

    :catch_2b
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move v3, v8

    :goto_7f
    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move/from16 v2, v16

    move/from16 v1, v61

    goto :goto_81

    :catch_2c
    move-exception v0

    goto :goto_80

    :catchall_2f
    move-exception v0

    move-wide/from16 v5, p12

    goto/16 :goto_79

    :catch_2d
    move-exception v0

    move-wide/from16 v5, p12

    :goto_80
    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move/from16 v2, v16

    move/from16 v1, v61

    const/4 v3, 0x0

    :goto_81
    const/4 v8, 0x0

    goto/16 :goto_6b

    :cond_5d
    move-wide/from16 v5, p12

    move-object/from16 p17, v1

    move/from16 v22, v8

    .line 543
    :try_start_60
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_34
    .catchall {:try_start_60 .. :try_end_60} :catchall_34

    move-object/from16 v4, p1

    .line 544
    :try_start_61
    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_33
    .catchall {:try_start_61 .. :try_end_61} :catchall_33

    move-object/from16 v62, v13

    move-object/from16 v64, v14

    const-wide/16 v13, 0x0

    cmp-long v8, v5, v13

    if-lez v8, :cond_5e

    const/4 v8, 0x0

    .line 548
    :try_start_62
    invoke-virtual {v1, v5, v6, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2e
    .catchall {:try_start_62 .. :try_end_62} :catchall_30

    goto :goto_82

    :catchall_30
    move-exception v0

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v13, p14

    move-object v1, v0

    move-object/from16 v42, v2

    move/from16 v38, v8

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    move-object/from16 v4, v62

    const/4 v8, -0x5

    goto/16 :goto_5b

    :catch_2e
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v13, p14

    goto :goto_84

    :cond_5e
    const/4 v8, 0x0

    .line 550
    :try_start_63
    invoke-virtual {v1, v13, v14, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_32
    .catchall {:try_start_63 .. :try_end_63} :catchall_32

    .line 553
    :goto_82
    :try_start_64
    new-instance v8, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v8, v3, v1, v9}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_31
    .catchall {:try_start_64 .. :try_end_64} :catchall_32

    .line 554
    :try_start_65
    iput-wide v5, v8, Lorg/telegram/messenger/video/AudioRecoder;->startTime:J
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_30
    .catchall {:try_start_65 .. :try_end_65} :catchall_32

    move-wide/from16 v13, p14

    .line 555
    :try_start_66
    iput-wide v13, v8, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    .line 556
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v3, v8, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v11, 0x1

    invoke-virtual {v1, v3, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_2f
    .catchall {:try_start_66 .. :try_end_66} :catchall_31

    move/from16 v3, v22

    goto/16 :goto_8c

    :catchall_31
    move-exception v0

    goto/16 :goto_87

    :catch_2f
    move-exception v0

    goto :goto_83

    :catch_30
    move-exception v0

    move-wide/from16 v13, p14

    :goto_83
    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move/from16 v66, v12

    move/from16 v2, v16

    move/from16 v1, v61

    move-object/from16 v4, v62

    const/4 v3, 0x0

    goto/16 :goto_e6

    :catch_31
    move-exception v0

    goto/16 :goto_8a

    :catchall_32
    move-exception v0

    goto :goto_86

    :catch_32
    move-exception v0

    move-wide/from16 v13, p14

    move/from16 v10, p9

    move-object/from16 v11, p10

    :goto_84
    move-object v5, v0

    move-object v9, v2

    move v3, v8

    move/from16 v66, v12

    move/from16 v2, v16

    move/from16 v1, v61

    move-object/from16 v4, v62

    goto/16 :goto_e5

    :catchall_33
    move-exception v0

    goto :goto_85

    :catch_33
    move-exception v0

    goto :goto_89

    :catchall_34
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_85

    :catch_34
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_89

    :cond_5f
    move-object/from16 v4, p1

    move-wide/from16 v5, p12

    move-object/from16 p17, v1

    move/from16 v22, v8

    move-object/from16 v62, v13

    move-object/from16 v64, v14

    move-wide/from16 v13, p14

    move/from16 v3, v22

    const/4 v1, -0x5

    goto :goto_8b

    :catchall_35
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p12

    :goto_85
    move-object/from16 v62, v13

    move-object/from16 v64, v14

    :goto_86
    move-wide/from16 v13, p14

    :goto_87
    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v2

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    move-object/from16 v4, v62

    const/4 v8, -0x5

    :goto_88
    const/16 v38, 0x0

    goto/16 :goto_5b

    :catch_35
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p12

    :goto_89
    move-object/from16 v62, v13

    move-object/from16 v64, v14

    :goto_8a
    move-wide/from16 v13, p14

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move/from16 v66, v12

    move/from16 v2, v16

    move/from16 v1, v61

    move-object/from16 v4, v62

    const/4 v3, 0x0

    goto/16 :goto_e5

    :cond_60
    move-object/from16 v4, p1

    move-wide/from16 v5, p12

    move-object/from16 p17, v1

    move-object/from16 v62, v13

    move-object/from16 v64, v14

    move-wide/from16 v13, p14

    const/4 v1, -0x5

    const/4 v3, 0x1

    :goto_8b
    const/4 v8, 0x0

    :goto_8c
    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_8d
    if-gez v9, :cond_61

    const/16 v23, 0x1

    goto :goto_8e

    :cond_61
    const/16 v23, 0x0

    .line 565
    :goto_8e
    :try_start_67
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_59
    .catchall {:try_start_67 .. :try_end_67} :catchall_51

    move-object/from16 v29, v11

    move/from16 v4, v22

    move-wide/from16 v57, v39

    move-wide/from16 v59, v57

    move-wide/from16 v55, v46

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x1

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v54, -0x5

    move-object/from16 v11, p17

    :goto_8f
    if-eqz v45, :cond_63

    if-nez v3, :cond_62

    if-nez v23, :cond_62

    goto :goto_90

    :cond_62
    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v66, v12

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v3, 0x0

    const/16 v38, 0x0

    move/from16 v15, p7

    goto/16 :goto_f2

    .line 569
    :cond_63
    :goto_90
    :try_start_68
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_58
    .catchall {:try_start_68 .. :try_end_68} :catchall_50

    if-nez v3, :cond_64

    if-eqz v8, :cond_64

    move-object/from16 p14, v11

    .line 572
    :try_start_69
    iget-object v11, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v8, v11, v1}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v11
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_36
    .catchall {:try_start_69 .. :try_end_69} :catchall_36

    goto :goto_91

    :catchall_36
    move-exception v0

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v2

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    move/from16 v8, v54

    move-object/from16 v4, v62

    goto/16 :goto_88

    :catch_36
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v2

    move/from16 v66, v12

    goto/16 :goto_a1

    :cond_64
    move-object/from16 p14, v11

    move/from16 v11, v23

    :goto_91
    if-nez v32, :cond_74

    move-object/from16 p16, v8

    .line 577
    :try_start_6a
    iget-object v8, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_3e
    .catchall {:try_start_6a .. :try_end_6a} :catchall_3a

    if-ne v8, v12, :cond_68

    move/from16 p15, v11

    move/from16 v66, v12

    const-wide/16 v11, 0x9c4

    .line 579
    :try_start_6b
    invoke-virtual {v2, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_67

    .line 582
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_65

    .line 583
    aget-object v11, v10, v8

    goto :goto_92

    .line 585
    :cond_65
    invoke-virtual {v2, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 587
    :goto_92
    iget-object v12, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_38
    .catchall {:try_start_6b .. :try_end_6b} :catchall_36

    move-object/from16 p17, v10

    const/4 v10, 0x0

    :try_start_6c
    invoke-virtual {v12, v11, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v25
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_37
    .catchall {:try_start_6c .. :try_end_6c} :catchall_36

    if-gez v25, :cond_66

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v2

    move/from16 v23, v8

    .line 589
    :try_start_6d
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v32, 0x1

    goto :goto_93

    :cond_66
    const/16 v24, 0x0

    .line 592
    iget-object v10, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move/from16 v23, v8

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 593
    iget-object v8, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_38
    .catchall {:try_start_6d .. :try_end_6d} :catchall_36

    goto :goto_93

    :catch_37
    move-exception v0

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object v5, v0

    move-object v9, v2

    goto/16 :goto_97

    :cond_67
    move-object/from16 p17, v10

    :goto_93
    move/from16 v68, v1

    move-object/from16 p32, v2

    move v12, v3

    goto/16 :goto_9c

    :catch_38
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object v5, v0

    move-object v9, v2

    goto/16 :goto_a1

    :cond_68
    move-object/from16 p17, v10

    move/from16 p15, v11

    move/from16 v66, v12

    if-eqz v3, :cond_71

    const/4 v10, -0x1

    if-eq v9, v10, :cond_70

    if-ne v8, v9, :cond_71

    .line 597
    :try_start_6e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_69

    .line 598
    iget-object v10, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v10
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_3c
    .catchall {:try_start_6e .. :try_end_6e} :catchall_38

    move-object/from16 p32, v2

    move v12, v3

    int-to-long v2, v4

    cmp-long v2, v10, v2

    if-lez v2, :cond_6a

    const-wide/16 v2, 0x400

    add-long/2addr v10, v2

    long-to-int v4, v10

    .line 601
    :try_start_6f
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    goto :goto_94

    :cond_69
    move-object/from16 p32, v2

    move v12, v3

    :cond_6a
    :goto_94
    move-object/from16 v2, v29

    .line 604
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3b
    .catchall {:try_start_6f .. :try_end_6f} :catchall_37

    const/4 v10, 0x0

    :try_start_70
    invoke-virtual {v3, v2, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v3, 0x15

    if-ge v8, v3, :cond_6b

    .line 606
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_3a
    .catchall {:try_start_70 .. :try_end_70} :catchall_37

    .line 607
    :try_start_71
    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 609
    :cond_6b
    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v3, :cond_6c

    .line 610
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 611
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_3b
    .catchall {:try_start_71 .. :try_end_71} :catchall_37

    goto :goto_95

    :cond_6c
    const/4 v3, 0x0

    .line 613
    :try_start_72
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_39
    .catchall {:try_start_72 .. :try_end_72} :catchall_37

    const/16 v32, 0x1

    .line 616
    :goto_95
    :try_start_73
    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_6f

    const-wide/16 v10, 0x0

    cmp-long v3, v13, v10

    if-ltz v3, :cond_6d

    iget-wide v10, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_3b
    .catchall {:try_start_73 .. :try_end_73} :catchall_37

    cmp-long v3, v10, v13

    if-gez v3, :cond_6f

    :cond_6d
    const/4 v3, 0x0

    .line 617
    :try_start_74
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 618
    iget-object v8, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 619
    iget-object v8, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v8, v1, v2, v7, v3}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v10
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_39
    .catchall {:try_start_74 .. :try_end_74} :catchall_37

    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-eqz v3, :cond_6f

    .line 621
    :try_start_75
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v3, :cond_6f

    move/from16 v68, v1

    move-object v8, v2

    .line 622
    iget-wide v1, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v22, v1, v5

    cmp-long v22, v22, v30

    if-lez v22, :cond_6e

    sub-long v30, v1, v5

    :cond_6e
    move-wide/from16 v1, v30

    move/from16 v22, v4

    long-to-float v4, v1

    div-float v4, v4, v43

    div-float v4, v4, v44

    .line 625
    invoke-interface {v3, v10, v11, v4}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_3b
    .catchall {:try_start_75 .. :try_end_75} :catchall_37

    move-wide/from16 v30, v1

    goto :goto_96

    :cond_6f
    move/from16 v68, v1

    move-object v8, v2

    move/from16 v22, v4

    :goto_96
    move-object/from16 v29, v8

    move/from16 v4, v22

    goto/16 :goto_9c

    :catch_39
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object/from16 v9, p32

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v41, v54

    move/from16 v1, v61

    move-object/from16 v4, v62

    goto/16 :goto_f1

    :catch_3a
    move-exception v0

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object/from16 v9, p32

    move-object v5, v0

    :goto_97
    move v3, v10

    move/from16 v2, v16

    move/from16 v41, v54

    move/from16 v1, v61

    move-object/from16 v4, v62

    move/from16 v10, p9

    goto/16 :goto_f1

    :catchall_37
    move-exception v0

    goto :goto_98

    :catch_3b
    move-exception v0

    goto :goto_9a

    :catchall_38
    move-exception v0

    move-object/from16 p32, v2

    :goto_98
    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v42, p32

    move-object v1, v0

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    move/from16 v8, v54

    move-object/from16 v4, v62

    :goto_99
    const/16 v38, 0x0

    goto/16 :goto_100

    :catch_3c
    move-exception v0

    move-object/from16 p32, v2

    :goto_9a
    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object/from16 v9, p32

    move-object v5, v0

    goto/16 :goto_a1

    :cond_70
    move/from16 v68, v1

    move-object/from16 p32, v2

    move v12, v3

    move v1, v10

    goto :goto_9b

    :cond_71
    move/from16 v68, v1

    move-object/from16 p32, v2

    move v12, v3

    const/4 v1, -0x1

    :goto_9b
    if-ne v8, v1, :cond_72

    const/4 v1, 0x1

    goto :goto_9d

    :cond_72
    :goto_9c
    const/4 v1, 0x0

    :goto_9d
    if-eqz v1, :cond_73

    move-object/from16 v1, p32

    const-wide/16 v2, 0x9c4

    .line 633
    :try_start_76
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v23

    if-ltz v23, :cond_75

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x4

    move-object/from16 v22, v1

    .line 635
    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_3d
    .catchall {:try_start_76 .. :try_end_76} :catchall_39

    const/16 v32, 0x1

    goto :goto_a3

    :catchall_39
    move-exception v0

    goto :goto_9e

    :catch_3d
    move-exception v0

    goto :goto_a0

    :cond_73
    move-object/from16 v1, p32

    goto :goto_a3

    :catchall_3a
    move-exception v0

    move-object v1, v2

    :goto_9e
    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v42, v1

    move-object v6, v15

    move/from16 v5, v16

    move-object/from16 v12, v50

    move/from16 v8, v54

    move-object/from16 v4, v62

    :goto_9f
    const/16 v38, 0x0

    goto/16 :goto_44

    :catch_3e
    move-exception v0

    move-object v1, v2

    move/from16 v66, v12

    :goto_a0
    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object v5, v0

    move-object v9, v1

    :goto_a1
    move/from16 v2, v16

    move/from16 v41, v54

    move/from16 v1, v61

    move-object/from16 v4, v62

    :goto_a2
    const/4 v3, 0x0

    goto/16 :goto_f1

    :cond_74
    move/from16 v68, v1

    move-object v1, v2

    move-object/from16 p16, v8

    move-object/from16 p17, v10

    move/from16 p15, v11

    move/from16 v66, v12

    move v12, v3

    :cond_75
    :goto_a3
    xor-int/lit8 v2, v48, 0x1

    move-object/from16 v11, p14

    move/from16 p32, v9

    move/from16 v8, v54

    move-wide/from16 v9, v55

    const/4 v3, 0x1

    :goto_a4
    if-nez v2, :cond_77

    if-eqz v3, :cond_76

    goto :goto_a5

    :cond_76
    move/from16 v23, p15

    move-object v2, v1

    move/from16 v54, v8

    move-wide/from16 v55, v9

    move v3, v12

    move/from16 v12, v66

    move/from16 v1, v68

    move-object/from16 v8, p16

    move-object/from16 v10, p17

    move/from16 v9, p32

    goto/16 :goto_8f

    .line 644
    :cond_77
    :goto_a5
    :try_start_77
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_57
    .catchall {:try_start_77 .. :try_end_77} :catchall_4f

    if-eqz p21, :cond_78

    const-wide/16 v22, 0x55f0

    move/from16 p14, v2

    move-wide/from16 v73, v22

    move/from16 v22, v3

    move/from16 v23, v4

    move-wide/from16 v2, v73

    move-object/from16 v4, v62

    goto :goto_a6

    :cond_78
    move/from16 p14, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v4, v62

    const-wide/16 v2, 0x9c4

    .line 645
    :goto_a6
    :try_start_78
    invoke-virtual {v4, v7, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_56
    .catchall {:try_start_78 .. :try_end_78} :catchall_4e

    const/4 v3, -0x1

    if-ne v2, v3, :cond_79

    move-wide/from16 v25, v9

    move/from16 v24, v12

    move-wide/from16 v54, v13

    move-object/from16 v10, v65

    move/from16 v13, v70

    const/16 v22, 0x0

    move-object v9, v1

    move v1, v3

    move/from16 v3, v69

    goto/16 :goto_b7

    :cond_79
    const/4 v3, -0x3

    if-ne v2, v3, :cond_7b

    .line 649
    :try_start_79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v24, v12

    const/16 v12, 0x15

    if-ge v3, v12, :cond_7a

    .line 650
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    :cond_7a
    move-wide/from16 v25, v9

    move-wide/from16 v54, v13

    move-object/from16 v10, v65

    :goto_a7
    move/from16 v3, v69

    move/from16 v13, v70

    move-object v9, v1

    :goto_a8
    const/4 v1, -0x1

    goto/16 :goto_b7

    :catchall_3b
    move-exception v0

    :goto_a9
    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v42, v1

    move-object v6, v15

    goto/16 :goto_da

    :catch_3f
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move-object v9, v1

    goto/16 :goto_de

    :cond_7b
    move/from16 v24, v12

    const/4 v3, -0x2

    if-ne v2, v3, :cond_80

    .line 653
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v12, -0x5

    if-ne v8, v12, :cond_7f

    if-eqz v3, :cond_7f

    .line 655
    iget-object v12, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_3f
    .catchall {:try_start_79 .. :try_end_79} :catchall_3b

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    :try_start_7a
    invoke-virtual {v12, v3, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v8
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_42
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3b

    move-object/from16 v9, v63

    .line 656
    :try_start_7b
    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7e

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7e

    move-object/from16 v10, v65

    .line 657
    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_41
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3d

    move/from16 v27, v8

    :try_start_7c
    const-string v8, "csd-1"

    .line 658
    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v12, :cond_7c

    const/4 v8, 0x0

    goto :goto_aa

    .line 659
    :cond_7c
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    :goto_aa
    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_ab

    :cond_7d
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_40
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3c

    :goto_ab
    add-int v49, v8, v3

    goto :goto_ac

    :catchall_3c
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v42, v1

    move-object v6, v15

    move/from16 v5, v16

    move/from16 v8, v27

    goto/16 :goto_db

    :catch_40
    move-exception v0

    goto :goto_ad

    :cond_7e
    move/from16 v27, v8

    move-object/from16 v10, v65

    :goto_ac
    move/from16 v8, v27

    goto :goto_ae

    :catchall_3d
    move-exception v0

    move/from16 v27, v8

    goto :goto_a9

    :catch_41
    move-exception v0

    move/from16 v27, v8

    :goto_ad
    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v8, p16

    move-object v5, v0

    move-object v9, v1

    move/from16 v2, v16

    move/from16 v41, v27

    move/from16 v1, v61

    goto/16 :goto_a2

    :catch_42
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v9

    move/from16 v2, v16

    move-object/from16 v8, p16

    move-object v9, v1

    goto/16 :goto_e1

    :cond_7f
    move-wide/from16 v25, v9

    move-object/from16 v9, v63

    move-object/from16 v10, v65

    :goto_ae
    move-object/from16 v63, v9

    move-wide/from16 v54, v13

    goto/16 :goto_a7

    :cond_80
    move-wide/from16 v25, v9

    move-object/from16 v9, v63

    move-object/from16 v10, v65

    if-ltz v2, :cond_a8

    .line 666
    :try_start_7d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_56
    .catchall {:try_start_7d .. :try_end_7d} :catchall_4e

    const/16 v12, 0x15

    if-ge v3, v12, :cond_81

    .line 667
    :try_start_7e
    aget-object v3, v11, v2
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_3f
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3b

    goto :goto_af

    .line 669
    :cond_81
    :try_start_7f
    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_af
    if-eqz v3, :cond_a7

    .line 674
    iget v12, v7, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_56
    .catchall {:try_start_7f .. :try_end_7f} :catchall_4e

    move-object/from16 v63, v9

    const/4 v9, 0x1

    if-le v12, v9, :cond_8b

    .line 675
    :try_start_80
    iget v9, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_46
    .catchall {:try_start_80 .. :try_end_80} :catchall_3f

    and-int/lit8 v27, v9, 0x2

    if-nez v27, :cond_87

    if-eqz v49, :cond_82

    and-int/lit8 v27, v9, 0x1

    if-eqz v27, :cond_82

    move-object/from16 v27, v11

    .line 677
    :try_start_81
    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v11, v11, v49

    iput v11, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v12, v12, v49

    .line 678
    iput v12, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_b0

    :cond_82
    move-object/from16 v27, v11

    :goto_b0
    if-eqz v35, :cond_83

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_83

    .line 681
    iget-object v9, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v9, v3, v7}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_3f
    .catchall {:try_start_81 .. :try_end_81} :catchall_3b

    const/16 v35, 0x0

    .line 684
    :cond_83
    :try_start_82
    iget-object v9, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_46
    .catchall {:try_start_82 .. :try_end_82} :catchall_3f

    move-wide/from16 v54, v13

    const/4 v11, 0x1

    :try_start_83
    invoke-virtual {v9, v8, v3, v7, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v12

    const-wide/16 v36, 0x0

    cmp-long v3, v12, v36

    if-eqz v3, :cond_85

    .line 686
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_43
    .catchall {:try_start_83 .. :try_end_83} :catchall_3e

    if-eqz v3, :cond_85

    move-object v9, v1

    move v11, v2

    .line 687
    :try_start_84
    iget-wide v1, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v71, v1, v5

    cmp-long v14, v71, v30

    if-lez v14, :cond_84

    sub-long v30, v1, v5

    :cond_84
    move-wide/from16 v1, v30

    long-to-float v14, v1

    div-float v14, v14, v43

    div-float v14, v14, v44

    .line 690
    invoke-interface {v3, v12, v13, v14}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v30, v1

    goto :goto_b1

    :cond_85
    move-object v9, v1

    move v11, v2

    :cond_86
    :goto_b1
    move/from16 v3, v69

    move/from16 v13, v70

    goto/16 :goto_b5

    :catchall_3e
    move-exception v0

    move-object v9, v1

    goto/16 :goto_b9

    :catch_43
    move-exception v0

    move-object v9, v1

    goto/16 :goto_bc

    :cond_87
    move-object v9, v1

    move-object/from16 v27, v11

    move-wide/from16 v54, v13

    const/4 v1, -0x5

    move v11, v2

    if-ne v8, v1, :cond_86

    .line 694
    new-array v1, v12, [B

    .line 695
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 696
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 697
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 700
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b2
    if-ltz v2, :cond_89

    const/4 v12, 0x3

    if-le v2, v12, :cond_89

    .line 702
    aget-byte v12, v1, v2

    if-ne v12, v3, :cond_88

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_88

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_88

    add-int/lit8 v3, v2, -0x3

    aget-byte v12, v1, v3

    if-nez v12, :cond_88

    .line 703
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 704
    iget v12, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v3

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_47
    .catchall {:try_start_84 .. :try_end_84} :catchall_40

    const/4 v13, 0x0

    .line 705
    :try_start_85
    invoke-virtual {v2, v1, v13, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 706
    iget v14, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v14, v3

    invoke-virtual {v12, v1, v3, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_44
    .catchall {:try_start_85 .. :try_end_85} :catchall_40

    goto :goto_b3

    :catch_44
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v13

    goto/16 :goto_c0

    :cond_88
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    goto :goto_b2

    :cond_89
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 714
    :goto_b3
    :try_start_86
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move/from16 v3, v69

    move/from16 v13, v70

    invoke-static {v1, v3, v13}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v2, :cond_8a

    if-eqz v12, :cond_8a

    .line 716
    invoke-virtual {v1, v10, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v2, "csd-1"

    .line 717
    invoke-virtual {v1, v2, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 719
    :cond_8a
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_47
    .catchall {:try_start_86 .. :try_end_86} :catchall_40

    const/4 v12, 0x0

    :try_start_87
    invoke-virtual {v2, v1, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v8
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_45
    .catchall {:try_start_87 .. :try_end_87} :catchall_40

    goto :goto_b5

    :catch_45
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v12

    goto/16 :goto_c0

    :catchall_3f
    move-exception v0

    move-object v9, v1

    move-wide/from16 v54, v13

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move-object v6, v15

    move/from16 v5, v16

    :goto_b4
    move-object/from16 v12, v50

    goto/16 :goto_99

    :catch_46
    move-exception v0

    move-object v9, v1

    move-wide/from16 v54, v13

    move/from16 v10, p9

    goto/16 :goto_dd

    :cond_8b
    move-object v9, v1

    move-object/from16 v27, v11

    move-wide/from16 v54, v13

    move/from16 v3, v69

    move/from16 v13, v70

    move v11, v2

    .line 722
    :goto_b5
    :try_start_88
    iget v1, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_53
    .catchall {:try_start_88 .. :try_end_88} :catchall_4c

    and-int/lit8 v1, v1, 0x4

    move v2, v11

    if-eqz v1, :cond_8c

    const/4 v1, 0x1

    goto :goto_b6

    :cond_8c
    const/4 v1, 0x0

    :goto_b6
    const/4 v11, 0x0

    .line 723
    :try_start_89
    invoke-virtual {v4, v2, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_54
    .catchall {:try_start_89 .. :try_end_89} :catchall_4c

    move/from16 v45, v1

    move-object/from16 v11, v27

    goto/16 :goto_a8

    :goto_b7
    if-eq v2, v1, :cond_8d

    move/from16 v2, p14

    move/from16 v69, v3

    move-object/from16 v62, v4

    move-object v1, v9

    move-object/from16 v65, v10

    move/from16 v70, v13

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v12, v24

    move-wide/from16 v9, v25

    move-wide/from16 v13, v54

    goto/16 :goto_a4

    :cond_8d
    if-nez v48, :cond_a6

    const-wide/16 v1, 0x9c4

    .line 730
    :try_start_8a
    invoke-virtual {v9, v7, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_53
    .catchall {:try_start_8a .. :try_end_8a} :catchall_4c

    const/4 v14, -0x1

    if-ne v12, v14, :cond_8e

    move/from16 v69, v3

    move-object/from16 v65, v10

    move/from16 v51, v14

    move-wide/from16 v27, v20

    move-wide/from16 v14, v25

    move-wide/from16 v20, v54

    move-object/from16 v1, v67

    const/4 v2, 0x0

    move/from16 v10, p9

    goto/16 :goto_d6

    :cond_8e
    const/4 v1, -0x3

    if-ne v12, v1, :cond_90

    :cond_8f
    :goto_b8
    move/from16 v69, v3

    move-object/from16 v65, v10

    move/from16 v51, v14

    goto/16 :goto_d5

    :cond_90
    const/4 v1, -0x2

    if-ne v12, v1, :cond_91

    .line 736
    :try_start_8b
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 737
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_8f

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newFormat = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_47
    .catchall {:try_start_8b .. :try_end_8b} :catchall_40

    goto :goto_b8

    :catchall_40
    move-exception v0

    :goto_b9
    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    :goto_ba
    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move-object v6, v15

    :goto_bb
    move/from16 v5, v16

    move-object/from16 v12, v50

    move-wide/from16 v13, v54

    goto/16 :goto_99

    :catch_47
    move-exception v0

    :goto_bc
    move/from16 v10, p9

    goto/16 :goto_d4

    :cond_91
    if-ltz v12, :cond_a5

    .line 744
    :try_start_8c
    iget v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_92

    const/4 v1, 0x1

    goto :goto_bd

    :cond_92
    const/4 v1, 0x0

    .line 745
    :goto_bd
    iget-wide v14, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_53
    .catchall {:try_start_8c .. :try_end_8c} :catchall_4c

    const-wide/16 v27, 0x0

    cmp-long v2, v54, v27

    if-lez v2, :cond_93

    cmp-long v2, v14, v54

    if-ltz v2, :cond_93

    .line 750
    :try_start_8d
    iget v1, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_47
    .catchall {:try_start_8d .. :try_end_8d} :catchall_41

    const/4 v1, 0x0

    const-wide/16 v27, 0x0

    const/16 v32, 0x1

    const/16 v48, 0x1

    goto :goto_be

    :catchall_41
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    goto :goto_bb

    :cond_93
    const-wide/16 v27, 0x0

    :goto_be
    cmp-long v2, v20, v27

    if-ltz v2, :cond_96

    .line 753
    :try_start_8e
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_96

    sub-long v27, v20, v5

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(J)J

    move-result-wide v27
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_4d
    .catchall {:try_start_8e .. :try_end_8e} :catchall_47

    const v2, 0xf4240

    move-object/from16 v65, v10

    const/16 v51, -0x1

    move/from16 v10, p9

    :try_start_8f
    div-int/2addr v2, v10
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_4c
    .catchall {:try_start_8f .. :try_end_8f} :catchall_46

    move/from16 v56, v1

    int-to-long v1, v2

    cmp-long v1, v27, v1

    if-lez v1, :cond_95

    const-wide/16 v1, 0x0

    cmp-long v27, v5, v1

    if-lez v27, :cond_94

    move-wide v1, v14

    move-object/from16 v15, p0

    .line 755
    :try_start_90
    iget-object v14, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_4b
    .catchall {:try_start_90 .. :try_end_90} :catchall_42

    move/from16 v69, v3

    const/4 v3, 0x0

    :try_start_91
    invoke-virtual {v14, v5, v6, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_48
    .catchall {:try_start_91 .. :try_end_91} :catchall_42

    const/4 v14, 0x0

    goto :goto_bf

    :catch_48
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    goto/16 :goto_c0

    :catchall_42
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    goto/16 :goto_ba

    :cond_94
    move/from16 v69, v3

    move-wide v1, v14

    move-object/from16 v15, p0

    .line 757
    :try_start_92
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_4b
    .catchall {:try_start_92 .. :try_end_92} :catchall_45

    const-wide/16 v5, 0x0

    const/4 v14, 0x0

    :try_start_93
    invoke-virtual {v3, v5, v6, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_4a
    .catchall {:try_start_93 .. :try_end_93} :catchall_44

    :goto_bf
    add-long v46, v25, v18

    .line 765
    :try_start_94
    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, -0x5

    and-int/2addr v3, v5

    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 766
    invoke-virtual {v9}, Landroid/media/MediaCodec;->flush()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_49
    .catchall {:try_start_94 .. :try_end_94} :catchall_43

    move/from16 v32, v14

    move/from16 v48, v32

    move/from16 v56, v48

    move-wide/from16 v27, v39

    const/4 v3, 0x1

    goto/16 :goto_c5

    :catchall_43
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move/from16 v38, v14

    move-object v6, v15

    move/from16 v5, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v39

    goto/16 :goto_c6

    :catch_49
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v14

    move/from16 v2, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v39

    goto/16 :goto_c7

    :catchall_44
    move-exception v0

    goto :goto_c1

    :catch_4a
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v14

    :goto_c0
    move/from16 v2, v16

    move-wide/from16 v13, v54

    goto/16 :goto_c7

    :catchall_45
    move-exception v0

    const/4 v14, 0x0

    :goto_c1
    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move/from16 v38, v14

    move-object v6, v15

    goto :goto_c3

    :catch_4b
    move-exception v0

    goto/16 :goto_d4

    :cond_95
    move/from16 v69, v3

    move-wide v1, v14

    const/4 v5, -0x5

    const/4 v14, 0x0

    move-object/from16 v15, p0

    goto :goto_c4

    :catchall_46
    move-exception v0

    goto :goto_c2

    :catch_4c
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_d4

    :catchall_47
    move-exception v0

    move/from16 v10, p9

    :goto_c2
    const/4 v14, 0x0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move/from16 v38, v14

    :goto_c3
    move/from16 v5, v16

    move-object/from16 v12, v50

    move-wide/from16 v13, v54

    goto/16 :goto_100

    :catch_4d
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_bc

    :cond_96
    const/4 v5, -0x5

    const/16 v51, -0x1

    move/from16 v56, v1

    move/from16 v69, v3

    move-object/from16 v65, v10

    move-wide v1, v14

    const/4 v14, 0x0

    move-object/from16 v15, p0

    move/from16 v10, p9

    :goto_c4
    move v3, v14

    move-wide/from16 v27, v20

    move-wide/from16 v20, v54

    :goto_c5
    const-wide/16 v36, 0x0

    cmp-long v6, v57, v36

    if-lez v6, :cond_97

    .line 769
    :try_start_95
    iget-wide v5, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v5, v5, v57

    cmp-long v5, v5, v52

    if-gez v5, :cond_97

    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_4e
    .catchall {:try_start_95 .. :try_end_95} :catchall_48

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_97

    move/from16 v56, v14

    goto :goto_c8

    :catchall_48
    move-exception v0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move/from16 v38, v14

    move-object v6, v15

    move/from16 v5, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v27

    :goto_c6
    move-object/from16 v12, v50

    goto/16 :goto_100

    :catch_4e
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v41, v8

    move v3, v14

    move/from16 v2, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v27

    :goto_c7
    move/from16 v1, v61

    goto/16 :goto_e0

    :cond_97
    :goto_c8
    const-wide/16 v5, 0x0

    cmp-long v38, v27, v5

    if-ltz v38, :cond_98

    move-wide/from16 v14, v27

    goto :goto_c9

    :cond_98
    move-wide/from16 v14, p12

    :goto_c9
    cmp-long v54, v14, v5

    if-lez v54, :cond_9c

    cmp-long v5, v59, v39

    if-nez v5, :cond_9c

    cmp-long v1, v1, v14

    if-gez v1, :cond_9a

    .line 776
    :try_start_96
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_99

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " present time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_99
    const/4 v1, 0x0

    goto :goto_cb

    .line 780
    :cond_9a
    iget-wide v1, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v5, -0x80000000

    cmp-long v5, v25, v5

    if-eqz v5, :cond_9b

    sub-long v46, v46, v1

    :cond_9b
    move-wide/from16 v59, v1

    goto :goto_ca

    :catchall_49
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object v1, v0

    move-object/from16 v42, v9

    move/from16 v5, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v27

    goto/16 :goto_b4

    :catch_4f
    move-exception v0

    goto/16 :goto_d2

    :cond_9c
    :goto_ca
    move/from16 v1, v56

    :goto_cb
    if-eqz v3, :cond_9d

    move-wide/from16 v59, v39

    const-wide/16 v2, 0x0

    goto :goto_cd

    :cond_9d
    cmp-long v2, v27, v39

    if-nez v2, :cond_9e

    const-wide/16 v2, 0x0

    cmp-long v5, v46, v2

    if-eqz v5, :cond_9f

    .line 790
    iget-wide v5, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v5, v5, v46

    iput-wide v5, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_4f
    .catchall {:try_start_96 .. :try_end_96} :catchall_49

    goto :goto_cc

    :cond_9e
    const-wide/16 v2, 0x0

    .line 792
    :cond_9f
    :goto_cc
    :try_start_97
    invoke-virtual {v9, v12, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_cd
    if-eqz v1, :cond_a2

    .line 795
    iget-wide v5, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_52
    .catchall {:try_start_97 .. :try_end_97} :catchall_4b

    move-wide/from16 v14, v25

    if-ltz v38, :cond_a0

    .line 797
    :try_start_98
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_98} :catch_4f
    .catchall {:try_start_98 .. :try_end_98} :catchall_49

    .line 801
    :cond_a0
    :try_start_99
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_50
    .catchall {:try_start_99 .. :try_end_99} :catchall_49

    const/4 v1, 0x0

    goto :goto_ce

    :catch_50
    move-exception v0

    move-object v1, v0

    .line 804
    :try_start_9a
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    :goto_ce
    if-nez v1, :cond_a1

    .line 807
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V

    .line 808
    iget-wide v2, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_52
    .catchall {:try_start_9a .. :try_end_9a} :catchall_4b

    const-wide/16 v25, 0x3e8

    mul-long v2, v2, v25

    move-object/from16 v1, v67

    :try_start_9b
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 809
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_cf

    :cond_a1
    move-object/from16 v1, v67

    :goto_cf
    move-wide/from16 v57, v5

    goto :goto_d0

    :cond_a2
    move-wide/from16 v14, v25

    move-object/from16 v1, v67

    .line 812
    :goto_d0
    iget v2, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a4

    .line 814
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_a3

    const-string v2, "decoder stream end"

    .line 815
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 817
    :cond_a3
    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9b} :catch_51
    .catchall {:try_start_9b .. :try_end_9b} :catchall_4a

    const/4 v2, 0x0

    goto/16 :goto_d6

    :cond_a4
    move/from16 v2, p14

    goto/16 :goto_d6

    :catchall_4a
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v67, v1

    goto :goto_d1

    :catch_51
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move-object/from16 v67, v1

    goto :goto_d3

    :catchall_4b
    move-exception v0

    move-object/from16 v1, v67

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    :goto_d1
    move-object/from16 v42, v9

    move/from16 v5, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v27

    goto/16 :goto_db

    :catch_52
    move-exception v0

    move-object/from16 v1, v67

    :goto_d2
    move-object/from16 v11, p10

    move-object v5, v0

    :goto_d3
    move/from16 v41, v8

    move/from16 v2, v16

    move-wide/from16 v13, v20

    move-wide/from16 v20, v27

    goto/16 :goto_df

    :cond_a5
    move/from16 v10, p9

    move-object/from16 v1, v67

    .line 742
    :try_start_9c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_4c
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, v67

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    goto/16 :goto_d7

    :catch_53
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, v67

    :goto_d4
    move-object/from16 v11, p10

    move-object v5, v0

    goto/16 :goto_d8

    :cond_a6
    move/from16 v51, v1

    move/from16 v69, v3

    move-object/from16 v65, v10

    :goto_d5
    move-wide/from16 v14, v25

    move-object/from16 v1, v67

    move/from16 v10, p9

    move/from16 v2, p14

    move-wide/from16 v27, v20

    move-wide/from16 v20, v54

    :goto_d6
    move-wide/from16 v5, p12

    move-object/from16 v67, v1

    move-object/from16 v62, v4

    move-object v1, v9

    move/from16 v70, v13

    move-wide v9, v14

    move-wide/from16 v13, v20

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v12, v24

    move-wide/from16 v20, v27

    move-object/from16 v15, p0

    goto/16 :goto_a4

    :catch_54
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, v67

    move-object v5, v0

    move/from16 v41, v8

    move v3, v11

    move/from16 v2, v16

    move-wide/from16 v13, v54

    move/from16 v1, v61

    move-object/from16 v11, p10

    goto/16 :goto_e0

    :cond_a7
    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    move-object/from16 v1, v67

    .line 672
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a8
    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    move-object/from16 v1, v67

    .line 663
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_55
    .catchall {:try_start_9c .. :try_end_9c} :catchall_4d

    :catchall_4d
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v67, v1

    :goto_d7
    move-object/from16 v42, v9

    move/from16 v5, v16

    move-object/from16 v12, v50

    move-wide/from16 v13, v54

    goto/16 :goto_9f

    :catch_55
    move-exception v0

    move-object/from16 v11, p10

    move-object v5, v0

    move-object/from16 v67, v1

    :goto_d8
    move/from16 v41, v8

    move/from16 v2, v16

    move-wide/from16 v13, v54

    goto :goto_df

    :catchall_4e
    move-exception v0

    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    goto :goto_d9

    :catch_56
    move-exception v0

    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    goto :goto_dc

    :catchall_4f
    move-exception v0

    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    move-object/from16 v4, v62

    :goto_d9
    move-object/from16 v1, v67

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v42, v9

    :goto_da
    move/from16 v5, v16

    :goto_db
    move-object/from16 v12, v50

    goto/16 :goto_9f

    :catch_57
    move-exception v0

    move/from16 v10, p9

    move-object v9, v1

    move-wide/from16 v54, v13

    move-object/from16 v4, v62

    :goto_dc
    move-object/from16 v1, v67

    :goto_dd
    move-object/from16 v11, p10

    move-object v5, v0

    :goto_de
    move/from16 v41, v8

    move/from16 v2, v16

    :goto_df
    move/from16 v1, v61

    const/4 v3, 0x0

    :goto_e0
    move-object/from16 v8, p16

    goto/16 :goto_f1

    :catchall_50
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move-object/from16 v4, v62

    move-object/from16 v1, v67

    const/4 v3, 0x0

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move/from16 v38, v3

    move-object/from16 v42, v9

    move/from16 v5, v16

    move-object/from16 v12, v50

    move/from16 v8, v54

    goto/16 :goto_44

    :catch_58
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move-object/from16 p16, v8

    move/from16 v66, v12

    move-object/from16 v4, v62

    move-object/from16 v1, v67

    const/4 v3, 0x0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v41, v54

    :goto_e1
    move/from16 v1, v61

    goto/16 :goto_f1

    :catchall_51
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move-object/from16 v4, v62

    move-object/from16 v1, v67

    const/4 v3, 0x0

    goto :goto_e3

    :catch_59
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move-object/from16 p16, v8

    move/from16 v66, v12

    move-object/from16 v4, v62

    move-object/from16 v1, v67

    const/4 v3, 0x0

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v1, v61

    goto/16 :goto_e6

    :catchall_52
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move v3, v5

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    goto :goto_e2

    :catch_5a
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move v3, v5

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    goto :goto_e4

    :catchall_53
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    const/4 v3, 0x0

    :goto_e2
    move-wide/from16 v13, p14

    :goto_e3
    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move/from16 v38, v3

    move-object/from16 v42, v9

    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    goto/16 :goto_44

    :catch_5b
    move-exception v0

    move/from16 v10, p9

    move-object v9, v2

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    const/4 v3, 0x0

    :goto_e4
    move-wide/from16 v13, p14

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v1, v61

    :goto_e5
    const/4 v8, 0x0

    goto :goto_e6

    :catchall_54
    move-exception v0

    move/from16 v10, p9

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p10

    move/from16 v38, v3

    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    const/16 v42, 0x0

    goto/16 :goto_44

    :catch_5c
    move-exception v0

    move/from16 v10, p9

    move/from16 v66, v12

    move-object v4, v13

    move-object/from16 v64, v14

    move-object/from16 v1, v67

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v11, p10

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v1, v61

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_e6
    const/16 v41, -0x5

    goto/16 :goto_f1

    :catchall_55
    move-exception v0

    move-wide/from16 v20, p16

    move-object v1, v3

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move-object/from16 v4, v62

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    goto :goto_e7

    :catch_5d
    move-exception v0

    move-wide/from16 v20, p16

    move-object v1, v3

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move/from16 v66, v54

    move-object/from16 v4, v62

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    goto :goto_e8

    :catchall_56
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object v1, v3

    const/4 v3, 0x0

    :goto_e7
    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object/from16 v67, v1

    move/from16 v38, v3

    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    const/16 v42, 0x0

    const/16 v64, 0x0

    goto/16 :goto_44

    :catch_5e
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move/from16 v66, v54

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object v1, v3

    const/4 v3, 0x0

    :goto_e8
    move-object/from16 v11, p32

    move-object v5, v0

    move-object/from16 v67, v1

    move/from16 v2, v16

    move/from16 v1, v61

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v41, -0x5

    const/16 v64, 0x0

    goto/16 :goto_f1

    :catchall_57
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move/from16 v38, v3

    goto :goto_e9

    :catch_5f
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move/from16 v66, v54

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object/from16 v11, p32

    move-object v5, v0

    move/from16 v2, v16

    move/from16 v1, v61

    goto :goto_ea

    :catchall_58
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move/from16 v38, v3

    move/from16 v61, v38

    :goto_e9
    move/from16 v5, v16

    move-object/from16 v12, v50

    const/4 v8, -0x5

    goto/16 :goto_fe

    :catch_60
    move-exception v0

    move-wide/from16 v20, p16

    move-object/from16 v17, v4

    move/from16 v16, v9

    move v10, v14

    move/from16 v66, v54

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object v4, v1

    move-object/from16 v11, p32

    move-object v5, v0

    move v1, v3

    move/from16 v2, v16

    :goto_ea
    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_f0

    :catchall_59
    move-exception v0

    move-wide/from16 v20, p16

    move-object v4, v1

    move/from16 v16, v9

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move/from16 v38, v3

    move/from16 v61, v38

    move/from16 v5, v16

    move-object/from16 v12, v50

    goto/16 :goto_fd

    :catch_61
    move-exception v0

    move-wide/from16 v20, p16

    move-object v4, v1

    move/from16 v16, v9

    move v10, v14

    move/from16 v66, v54

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v11, p32

    move-object v5, v0

    move v1, v3

    move/from16 v2, v16

    goto/16 :goto_ef

    :catchall_5a
    move-exception v0

    move-wide/from16 v20, p16

    move-object v4, v1

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v6, p0

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move v5, v2

    move/from16 v38, v3

    move/from16 v61, v38

    move-object/from16 v12, v50

    goto :goto_ec

    :catch_62
    move-exception v0

    move-wide/from16 v20, p16

    move-object v4, v1

    move v10, v14

    move/from16 v66, v54

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v11, p32

    move-object v5, v0

    move v1, v3

    goto/16 :goto_ef

    :catchall_5b
    move-exception v0

    move-wide/from16 v20, p16

    move v3, v10

    move v10, v14

    goto :goto_eb

    :catch_63
    move-exception v0

    move-wide/from16 v20, p16

    move v3, v10

    move v10, v14

    move/from16 v66, v54

    goto :goto_ed

    :catchall_5c
    move-exception v0

    move-wide/from16 v20, p16

    move v10, v14

    const/4 v3, 0x0

    :goto_eb
    move-wide/from16 v13, p14

    move-object/from16 v6, p0

    move/from16 v7, p8

    move-object/from16 v11, p32

    move-object v1, v0

    move v5, v2

    move/from16 v38, v3

    move/from16 v61, v38

    move-object/from16 v12, v50

    const/4 v4, 0x0

    :goto_ec
    const/4 v8, -0x5

    const/16 v17, 0x0

    const/16 v42, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    goto/16 :goto_5b

    :catch_64
    move-exception v0

    move-wide/from16 v20, p16

    move v10, v14

    move/from16 v66, v54

    const/4 v3, 0x0

    :goto_ed
    move-wide/from16 v13, p14

    goto :goto_ee

    :catchall_5d
    move-exception v0

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move-object/from16 v6, p0

    move/from16 v2, p7

    move/from16 v7, p8

    move/from16 v5, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move/from16 v38, v3

    move/from16 v61, v38

    move-object/from16 v12, v50

    goto/16 :goto_fc

    :catch_65
    move-exception v0

    move/from16 v66, v1

    move v10, v14

    const/4 v3, 0x0

    move-wide/from16 v13, p14

    move/from16 v2, p10

    move-wide/from16 v20, p16

    :goto_ee
    move-object/from16 v11, p32

    move-object v5, v0

    move v1, v3

    const/4 v4, 0x0

    :goto_ef
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_f0
    const/16 v41, -0x5

    const/16 v64, 0x0

    const/16 v67, 0x0

    .line 827
    :goto_f1
    :try_start_9d
    instance-of v6, v5, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_a9

    if-nez p21, :cond_a9

    const/4 v3, 0x1

    .line 830
    :cond_a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bitrate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " framerate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_62

    move/from16 v7, p8

    :try_start_9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_61

    move-object/from16 v12, v50

    :try_start_9f
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_60

    move/from16 v15, p7

    :try_start_a0
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 831
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_5f

    move-object/from16 v6, p0

    move/from16 v61, v1

    move/from16 v16, v2

    move-object/from16 v62, v4

    move-object v2, v9

    move/from16 v54, v41

    const/16 v38, 0x1

    .line 835
    :goto_f2
    :try_start_a1
    iget-object v1, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v4, v66

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v2, :cond_aa

    .line 837
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 838
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_5e

    :cond_aa
    move v1, v3

    move/from16 v3, v38

    goto/16 :goto_f5

    :catchall_5e
    move-exception v0

    move-object v1, v0

    move-object/from16 v42, v2

    move/from16 v38, v3

    move v2, v15

    move/from16 v5, v16

    move/from16 v8, v54

    move-object/from16 v4, v62

    goto/16 :goto_100

    :catchall_5f
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_f4

    :catchall_60
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v15, p7

    goto :goto_f4

    :catchall_61
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v15, p7

    goto :goto_f3

    :catchall_62
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v15, p7

    move/from16 v7, p8

    :goto_f3
    move-object/from16 v12, v50

    :goto_f4
    move/from16 v61, v1

    move v5, v2

    move/from16 v38, v3

    move-object/from16 v42, v9

    move v2, v15

    move/from16 v8, v41

    goto/16 :goto_44

    :cond_ab
    move/from16 v7, p8

    move v10, v14

    move-object v6, v15

    move-object/from16 v12, v50

    const/4 v3, 0x0

    move/from16 v15, p7

    move-wide/from16 v13, p14

    move/from16 v16, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move v1, v3

    move/from16 v61, v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v54, -0x5

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v67, 0x0

    :goto_f5
    if-eqz v64, :cond_ac

    .line 842
    :try_start_a2
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/16 v64, 0x0

    goto :goto_f6

    :catchall_63
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v42, v2

    move v2, v15

    move/from16 v5, v16

    move/from16 v8, v54

    move-object/from16 v4, v62

    goto/16 :goto_44

    :cond_ac
    :goto_f6
    if-eqz v67, :cond_ad

    .line 846
    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v67, 0x0

    :cond_ad
    if-eqz v62, :cond_ae

    .line 850
    invoke-virtual/range {v62 .. v62}, Landroid/media/MediaCodec;->stop()V

    .line 851
    invoke-virtual/range {v62 .. v62}, Landroid/media/MediaCodec;->release()V

    const/16 v62, 0x0

    :cond_ae
    if-eqz v8, :cond_af

    .line 855
    invoke-virtual {v8}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 857
    :cond_af
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_63

    move/from16 v38, v1

    move-object/from16 v42, v2

    move/from16 v1, v54

    move-object/from16 v5, v67

    .line 868
    :goto_f7
    iget-object v2, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_b0

    .line 869
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 871
    :cond_b0
    iget-object v2, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v2, :cond_b1

    .line 873
    :try_start_a3
    invoke-virtual {v2}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 874
    iget-object v2, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v1

    iput-wide v1, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_64

    goto :goto_f8

    :catchall_64
    move-exception v0

    move-object v1, v0

    .line 876
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b1
    :goto_f8
    if-eqz v62, :cond_b2

    .line 881
    :try_start_a4
    invoke-virtual/range {v62 .. v62}, Landroid/media/MediaCodec;->release()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_66

    :catch_66
    :cond_b2
    if-eqz v42, :cond_b3

    .line 887
    :try_start_a5
    invoke-virtual/range {v42 .. v42}, Landroid/media/MediaCodec;->release()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a5} :catch_67

    :catch_67
    :cond_b3
    if-eqz v64, :cond_b4

    .line 893
    :try_start_a6
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_68

    :catch_68
    :cond_b4
    if-eqz v5, :cond_b5

    .line 899
    :try_start_a7
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_69

    :catch_69
    :cond_b5
    move v9, v7

    move-object/from16 v36, v11

    move v8, v15

    move/from16 v11, v16

    move-object/from16 v1, v17

    move-wide/from16 v17, v20

    move-wide v15, v13

    goto/16 :goto_102

    :catchall_65
    move-exception v0

    move-wide/from16 v13, p14

    move v3, v2

    move v10, v8

    move-object v6, v15

    goto :goto_f9

    :catchall_66
    move-exception v0

    move-wide/from16 v13, p14

    move v10, v8

    move-object v6, v15

    const/4 v3, 0x0

    :goto_f9
    move/from16 v15, p7

    goto :goto_fb

    :catchall_67
    move-exception v0

    move-wide/from16 v13, p14

    move v3, v1

    move-object v6, v15

    move-object/from16 v12, v35

    goto :goto_fa

    :catchall_68
    move-exception v0

    move-wide/from16 v13, p14

    move-object v6, v15

    move-object/from16 v12, v35

    const/4 v3, 0x0

    :goto_fa
    move v15, v10

    move v10, v8

    :goto_fb
    move/from16 v5, p10

    move-wide/from16 v20, p16

    move-object/from16 v11, p32

    move-object v1, v0

    move/from16 v38, v3

    move/from16 v61, v38

    move v2, v15

    :goto_fc
    const/4 v4, 0x0

    :goto_fd
    const/4 v8, -0x5

    const/16 v17, 0x0

    :goto_fe
    const/16 v42, 0x0

    :goto_ff
    const/16 v64, 0x0

    const/16 v67, 0x0

    .line 865
    :goto_100
    :try_start_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitrate: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " framerate: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " size: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 866
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_6a

    .line 868
    iget-object v1, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_b6

    .line 869
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 871
    :cond_b6
    iget-object v1, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_b7

    .line 873
    :try_start_a9
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 874
    iget-object v1, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_69

    goto :goto_101

    :catchall_69
    move-exception v0

    move-object v1, v0

    .line 876
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_101
    if-eqz v4, :cond_b8

    .line 881
    :try_start_aa
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_6a

    :catch_6a
    :cond_b8
    if-eqz v42, :cond_b9

    .line 887
    :try_start_ab
    invoke-virtual/range {v42 .. v42}, Landroid/media/MediaCodec;->release()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_6b

    :catch_6b
    :cond_b9
    if-eqz v64, :cond_ba

    .line 893
    :try_start_ac
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ac} :catch_6c

    :catch_6c
    :cond_ba
    if-eqz v67, :cond_bb

    .line 899
    :try_start_ad
    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ad} :catch_6d

    :catch_6d
    :cond_bb
    move v8, v2

    move v9, v7

    move-object/from16 v36, v11

    move-wide v15, v13

    move-object/from16 v1, v17

    move-wide/from16 v17, v20

    const/4 v3, 0x1

    move v11, v5

    :goto_102
    if-eqz v38, :cond_bc

    const/16 v22, 0x1

    move/from16 v2, p34

    const/4 v1, 0x1

    add-int/lit8 v35, v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move-object/from16 v33, v36

    move-object/from16 v34, p33

    .line 906
    invoke-direct/range {v1 .. v35}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLjava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;I)Z

    move-result v1

    return v1

    :cond_bc
    move/from16 v2, p34

    if-eqz v3, :cond_bd

    if-eqz v61, :cond_bd

    const/4 v4, 0x3

    if-ge v2, v4, :cond_bd

    const/4 v4, 0x1

    add-int/lit8 v35, v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move-object/from16 v33, v36

    move-object/from16 v34, p33

    .line 914
    invoke-direct/range {v1 .. v35}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLjava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;I)Z

    move-result v1

    return v1

    .line 921
    :cond_bd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v33

    .line 922
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_be

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compression completed time="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " needCompress="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bitrate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " file size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " encoder_name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_be
    return v3

    :catchall_6a
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 868
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_bf

    .line 869
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 871
    :cond_bf
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_c0

    .line 873
    :try_start_ae
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 874
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_6b

    goto :goto_103

    :catchall_6b
    move-exception v0

    move-object v3, v0

    .line 876
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c0
    :goto_103
    if-eqz v4, :cond_c1

    .line 881
    :try_start_af
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_af} :catch_6e

    :catch_6e
    :cond_c1
    if-eqz v42, :cond_c2

    .line 887
    :try_start_b0
    invoke-virtual/range {v42 .. v42}, Landroid/media/MediaCodec;->release()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b0} :catch_6f

    :catch_6f
    :cond_c2
    if-eqz v64, :cond_c3

    .line 893
    :try_start_b1
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b1} :catch_70

    :catch_70
    :cond_c3
    if-eqz v67, :cond_c4

    .line 899
    :try_start_b2
    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b2} :catch_71

    .line 903
    :catch_71
    :cond_c4
    throw v2
.end method

.method private createEncoderForMimeType()Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "video/avc"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 932
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 937
    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 938
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 962
    iget-object v3, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    .line 964
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static createFragmentShader(IIIIZI)Ljava/lang/String;
    .locals 3

    .line 1195
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

    .line 1197
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1200
    :cond_0
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1201
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

    .line 1203
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

    .line 1222
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

    .line 971
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 974
    :goto_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 975
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v2, [B

    .line 977
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    const/16 v3, 0x60

    if-ge p1, v3, :cond_2

    .line 980
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

    .line 983
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 984
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

    .line 1254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mime"

    .line 1255
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "video/dolby-vision"

    .line 1257
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "video/hevc"

    .line 1258
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "video/avc"

    .line 1259
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 1262
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 1264
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1265
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
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

    .line 1273
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1252
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getDecoderByFormat: format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    .line 1163
    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result p0

    const/4 p1, 0x1

    const/4 p4, 0x0

    if-ne p0, p1, :cond_0

    .line 1164
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_hlg2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1166
    :cond_0
    sget p0, Lorg/telegram/messenger/R$raw;->yuv_pq2rgb:I

    invoke-static {p4, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 1168
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

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$dstHeight"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1171
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

    .line 993
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

    .line 998
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 999
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

    const-string v13, "max-input-size"

    const-wide/16 v14, 0x0

    if-ltz v7, :cond_2

    .line 1009
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1010
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1011
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 1013
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 1015
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 1019
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 1021
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

    .line 1025
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1026
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "mime"

    .line 1028
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 1031
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 1033
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

    .line 1035
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 1038
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 1040
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 1047
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 1050
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 1052
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 1055
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 1056
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 1059
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

    .line 1062
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1063
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

    .line 1073
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1074
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 1077
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1079
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 1080
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

    .line 1083
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

    .line 1086
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 1087
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 1088
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 1089
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

    .line 1098
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 1101
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 1105
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

    .line 1107
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 1109
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

    .line 1110
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1112
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 1114
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 1115
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

    .line 1118
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 1126
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

    .line 1131
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

    .line 1138
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 1141
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_23
    return-wide v20
.end method


# virtual methods
.method public convertVideo(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLorg/telegram/messenger/MediaController$VideoConvertorListener;Ljava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)Z
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "IZIIIIIIIJJJZJ",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;Z",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Z",
            "Lorg/telegram/messenger/MediaController$VideoConvertorListener;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move/from16 v20, p18

    move-wide/from16 v18, p19

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v35, v0

    move-object/from16 v1, p27

    .line 68
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    const/16 v21, 0x0

    const/16 v34, 0x0

    move-object/from16 v1, p1

    .line 69
    invoke-direct/range {v0 .. v34}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLjava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method
