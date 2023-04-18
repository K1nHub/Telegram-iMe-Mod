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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z
    .locals 73
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
            "Z)Z"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v8, p9

    move/from16 v7, p10

    move/from16 v6, p11

    move-wide/from16 v4, p12

    move-wide/from16 v2, p18

    move/from16 v1, p20

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v13, 0x0

    cmp-long v18, p16, v13

    const/4 v13, 0x0

    if-ltz v18, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v13

    :goto_0
    const-wide/16 v21, -0x1

    .line 91
    :try_start_0
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 92
    new-instance v14, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v14}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v26, v6

    move-object/from16 v6, p2

    .line 93
    invoke-virtual {v14, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 94
    invoke-virtual {v14, v13}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 95
    invoke-virtual {v14, v9, v10}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4c

    .line 96
    :try_start_1
    new-instance v13, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v13}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move/from16 v6, p4

    invoke-virtual {v13, v14, v6}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v13

    iput-object v13, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4b

    long-to-float v13, v2

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float v28, v13, v14

    const-wide/16 v29, 0x3e8

    mul-long v4, v2, v29

    .line 104
    :try_start_2
    iput-wide v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 105
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4a

    const-string v5, "csd-0"

    const-string v4, "prepend-sps-pps-to-idr-frames"

    const-string/jumbo v15, "video/avc"

    if-eqz p25, :cond_2e

    if-eqz v18, :cond_3

    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpg-float v7, v28, v7

    if-gtz v7, :cond_1

    const v7, 0x27ac40

    goto :goto_1

    :cond_1
    const v7, 0x459c4000    # 5000.0f

    cmpg-float v7, v28, v7

    if-gtz v7, :cond_2

    const v7, 0x2191c0

    goto :goto_1

    :cond_2
    const v7, 0x17cdc0

    goto :goto_1

    :cond_3
    if-gtz v7, :cond_4

    const v13, 0xe1000

    goto :goto_2

    :cond_4
    :goto_1
    move v13, v7

    .line 125
    :goto_2
    :try_start_3
    rem-int/lit8 v7, v9, 0x10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    const/high16 v18, 0x41800000    # 16.0f

    if-eqz v7, :cond_6

    .line 126
    :try_start_4
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_5

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changing width from "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v14, v9

    div-float v14, v14, v18

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    mul-int/lit8 v14, v14, 0x10

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    int-to-float v7, v9

    div-float v7, v7, v18

    .line 129
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    mul-int/lit8 v7, v7, 0x10

    move v14, v7

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v8

    move v7, v9

    move v1, v13

    :goto_3
    const/4 v6, -0x5

    :goto_4
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v12, p12

    goto/16 :goto_d8

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move-object v1, v0

    move v14, v9

    :goto_5
    move/from16 v42, v13

    goto/16 :goto_33

    :cond_6
    move v14, v9

    .line 131
    :goto_6
    :try_start_5
    rem-int/lit8 v7, v10, 0x10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_16
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    if-eqz v7, :cond_8

    .line 132
    :try_start_6
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_7

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changing height from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v9, v10

    div-float v9, v9, v18

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    int-to-float v7, v10

    div-float v7, v7, v18

    .line 135
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    mul-int/lit8 v7, v7, 0x10

    move v10, v7

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v1, v13

    move v7, v14

    const/4 v6, -0x5

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v12, p12

    move v14, v8

    goto/16 :goto_d8

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move-object v1, v0

    goto :goto_5

    .line 138
    :cond_8
    :goto_7
    :try_start_7
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v7, :cond_9

    .line 139
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo encoder "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " duration = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 142
    :cond_9
    :try_start_9
    invoke-static {v15, v14, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v9, "color-format"

    const v1, 0x7f000789

    .line 143
    invoke-virtual {v7, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    .line 144
    invoke-virtual {v7, v1, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v9, 0x1e

    .line 145
    invoke-virtual {v7, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v9, 0x1

    .line 146
    invoke-virtual {v7, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 148
    invoke-static {v15}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_16
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    .line 150
    :try_start_a
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    .line 151
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected encoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v9, v7, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 154
    new-instance v7, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 155
    :try_start_c
    invoke-virtual {v7}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 156
    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    .line 158
    new-instance v18, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    const/16 v21, 0x0

    int-to-float v2, v8

    const/16 v22, 0x1

    move-object/from16 v24, v1

    move-object/from16 v1, v18

    move/from16 v33, v2

    move-object/from16 v2, p22

    move-object/from16 v34, v3

    move-object/from16 v3, p1

    move-object/from16 v35, v4

    move-object/from16 v4, p23

    move-object/from16 v36, v5

    move-object/from16 v5, p24

    move-object/from16 v39, v26

    move-object/from16 v6, v21

    move-object/from16 v40, v7

    move v7, v14

    move v8, v10

    move-object/from16 p7, v9

    move/from16 v9, p5

    move/from16 v41, v10

    move/from16 v10, p6

    move/from16 v11, p3

    move/from16 v12, v33

    move/from16 v42, v13

    move/from16 v21, v14

    move-object/from16 v23, v15

    const/4 v14, 0x0

    move/from16 v15, p3

    move/from16 v13, v22

    :try_start_d
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 162
    :try_start_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    const/16 v2, 0x15

    if-ge v1, v2, :cond_a

    .line 163
    :try_start_f
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move/from16 v27, v14

    move/from16 v7, v21

    move-object/from16 v26, v24

    move/from16 v10, v41

    move/from16 v1, v42

    const/4 v6, -0x5

    goto/16 :goto_3b

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v11, p7

    move-object v1, v0

    move/from16 v14, v21

    move/from16 v10, v41

    const/4 v6, -0x5

    goto/16 :goto_36

    :cond_a
    const/4 v6, 0x0

    .line 168
    :goto_8
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    move-object v1, v6

    move v2, v14

    move v3, v2

    move v4, v3

    move v13, v4

    const/4 v5, 0x1

    const/4 v6, -0x5

    :goto_9
    if-nez v13, :cond_29

    .line 171
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    xor-int/lit8 v7, v2, 0x1

    move v8, v13

    move v13, v7

    const/4 v7, 0x1

    :goto_a
    if-nez v13, :cond_c

    if-eqz v7, :cond_b

    goto :goto_b

    :cond_b
    move v13, v8

    goto :goto_9

    .line 176
    :cond_c
    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz p21, :cond_d

    const-wide/16 v9, 0x55f0

    move-object/from16 v11, p7

    move-object/from16 v12, v39

    goto :goto_c

    :cond_d
    move-object/from16 v11, p7

    move-object/from16 v12, v39

    const-wide/16 v9, 0x9c4

    .line 177
    :goto_c
    :try_start_12
    invoke-virtual {v11, v12, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    const/4 v10, -0x1

    if-ne v9, v10, :cond_e

    move-object/from16 v7, p0

    move/from16 v26, v3

    move/from16 v22, v4

    move/from16 p8, v13

    move v4, v14

    move-object/from16 v14, v23

    move-object v3, v1

    move v13, v8

    move v1, v10

    move-object/from16 v8, v36

    move/from16 v10, v41

    goto/16 :goto_21

    :cond_e
    const/4 v10, -0x3

    if-ne v9, v10, :cond_10

    .line 181
    :try_start_13
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-ge v10, v14, :cond_f

    .line 182
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_f
    move/from16 v26, v3

    move/from16 v22, v4

    move v4, v7

    move/from16 p8, v13

    move-object/from16 v14, v23

    move/from16 v10, v41

    move-object/from16 v7, p0

    move-object v3, v1

    move v13, v8

    move-object/from16 v8, v36

    :goto_d
    const/4 v1, -0x1

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    :goto_e
    move/from16 v7, v21

    move-object/from16 v26, v24

    move/from16 v10, v41

    goto/16 :goto_29

    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    :goto_f
    move-object v1, v0

    move/from16 v14, v21

    move/from16 v10, v41

    goto/16 :goto_36

    :cond_10
    const/4 v10, -0x2

    if-ne v9, v10, :cond_15

    .line 185
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 186
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v14, :cond_11

    .line 187
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p7, v7

    const-string v7, "photo encoder new format "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_10

    :cond_11
    move/from16 p7, v7

    :goto_10
    const/4 v14, -0x5

    if-ne v6, v14, :cond_14

    if-eqz v10, :cond_14

    move-object/from16 v7, p0

    .line 190
    :try_start_14
    iget-object v14, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move/from16 p8, v8

    const/4 v8, 0x0

    invoke-virtual {v14, v10, v8}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v14, v35

    .line 191
    :try_start_15
    invoke-virtual {v10, v14}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v10, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move/from16 p10, v6

    const/4 v6, 0x1

    if-ne v8, v6, :cond_13

    move-object/from16 v8, v36

    .line 192
    :try_start_16
    invoke-virtual {v10, v8}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v6, "csd-1"

    .line 193
    invoke-virtual {v10, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 194
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    add-int/2addr v3, v6

    goto :goto_11

    :catchall_4
    move-exception v0

    move/from16 v14, p9

    move/from16 v6, p10

    goto :goto_14

    :catch_4
    move-exception v0

    move/from16 v6, p10

    goto :goto_f

    :cond_12
    move/from16 p10, v6

    :cond_13
    move-object/from16 v8, v36

    :goto_11
    move/from16 v6, p10

    goto :goto_12

    :catchall_5
    move-exception v0

    move/from16 p10, v6

    goto :goto_13

    :catch_5
    move-exception v0

    move/from16 p10, v6

    goto :goto_f

    :cond_14
    move-object/from16 v7, p0

    move/from16 p8, v8

    move-object/from16 v14, v35

    move-object/from16 v8, v36

    :goto_12
    move/from16 v26, v3

    move/from16 v22, v4

    move-object/from16 v35, v14

    move-object/from16 v14, v23

    move/from16 v10, v41

    move/from16 v4, p7

    move-object v3, v1

    const/4 v1, -0x1

    move/from16 v71, v13

    move/from16 v13, p8

    move/from16 p8, v71

    goto/16 :goto_21

    :cond_15
    move/from16 p7, v7

    move-object/from16 v14, v35

    move-object/from16 v8, v36

    move-object/from16 v7, p0

    if-ltz v9, :cond_28

    .line 201
    :try_start_17
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move/from16 p8, v13

    const/16 v13, 0x15

    if-ge v10, v13, :cond_16

    .line 202
    :try_start_18
    aget-object v10, v1, v9
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_15

    :catchall_6
    move-exception v0

    :goto_13
    move/from16 v14, p9

    :goto_14
    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move-object v15, v7

    goto/16 :goto_e

    :catch_6
    move-exception v0

    goto/16 :goto_f

    .line 204
    :cond_16
    :try_start_19
    invoke-virtual {v11, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :goto_15
    if-eqz v10, :cond_27

    .line 209
    :try_start_1a
    iget v13, v12, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move-object/from16 p10, v1

    const/4 v1, 0x1

    if-le v13, v1, :cond_22

    .line 210
    :try_start_1b
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    and-int/lit8 v22, v1, 0x2

    if-nez v22, :cond_1d

    if-eqz v3, :cond_17

    and-int/lit8 v22, v1, 0x1

    if-eqz v22, :cond_17

    move-object/from16 v35, v14

    .line 212
    :try_start_1c
    iget v14, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v14, v3

    iput v14, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v13, v3

    .line 213
    iput v13, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_16

    :cond_17
    move-object/from16 v35, v14

    :goto_16
    if-eqz v5, :cond_1b

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    .line 216
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v14, 0x64

    if-le v1, v14, :cond_1a

    .line 217
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v14, [B

    .line 219
    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_17
    const/16 v14, 0x60

    if-ge v13, v14, :cond_1a

    .line 222
    aget-byte v14, v1, v13

    if-nez v14, :cond_18

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v1, v14

    if-nez v14, :cond_18

    add-int/lit8 v14, v13, 0x2

    aget-byte v14, v1, v14

    if-nez v14, :cond_18

    add-int/lit8 v14, v13, 0x3

    aget-byte v14, v1, v14

    move-object/from16 v22, v1

    const/4 v1, 0x1

    if-ne v14, v1, :cond_19

    add-int/lit8 v5, v5, 0x1

    if-le v5, v1, :cond_19

    .line 225
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, v13

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 226
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v13

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_18

    :cond_18
    move-object/from16 v22, v1

    :cond_19
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v22

    const/16 v14, 0x64

    goto :goto_17

    :cond_1a
    :goto_18
    const/4 v13, 0x0

    goto :goto_19

    :cond_1b
    move v13, v5

    .line 234
    :goto_19
    iget-object v1, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move/from16 v22, v13

    const/4 v5, 0x1

    invoke-virtual {v1, v6, v10, v12, v5}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v13

    move/from16 v26, v3

    move v1, v4

    const-wide/16 v3, 0x0

    cmp-long v5, v13, v3

    if-eqz v5, :cond_1c

    .line 236
    iget-object v5, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v5, :cond_1c

    long-to-float v10, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v10, v3

    div-float v10, v10, v28

    .line 237
    invoke-interface {v5, v13, v14, v10}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :cond_1c
    move/from16 v5, v22

    move-object/from16 v14, v23

    move/from16 v10, v41

    move/from16 v22, v1

    move/from16 v1, v21

    goto/16 :goto_1f

    :cond_1d
    move/from16 v26, v3

    move v1, v4

    move-object/from16 v35, v14

    const/4 v3, -0x5

    if-ne v6, v3, :cond_21

    .line 241
    :try_start_1d
    new-array v3, v13, [B

    .line 242
    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v4, v13

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 243
    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 247
    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    :goto_1a
    if-ltz v4, :cond_1f

    const/4 v13, 0x3

    if-le v4, v13, :cond_1f

    .line 249
    :try_start_1e
    aget-byte v13, v3, v4

    if-ne v13, v10, :cond_1e

    add-int/lit8 v10, v4, -0x1

    aget-byte v10, v3, v10

    if-nez v10, :cond_1e

    add-int/lit8 v10, v4, -0x2

    aget-byte v10, v3, v10

    if-nez v10, :cond_1e

    add-int/lit8 v10, v4, -0x3

    aget-byte v13, v3, v10

    if-nez v13, :cond_1e

    .line 250
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 251
    iget v13, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    move/from16 v22, v1

    const/4 v14, 0x0

    .line 252
    invoke-virtual {v4, v3, v14, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v10

    invoke-virtual {v13, v3, v10, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1b

    :cond_1e
    move/from16 v22, v1

    add-int/lit8 v4, v4, -0x1

    move/from16 v1, v22

    const/4 v10, 0x1

    goto :goto_1a

    :cond_1f
    move/from16 v22, v1

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_1b
    move/from16 v1, v21

    move-object/from16 v14, v23

    move/from16 v10, v41

    .line 261
    :try_start_1f
    invoke-static {v14, v1, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v4, :cond_20

    if-eqz v13, :cond_20

    .line 263
    invoke-virtual {v3, v8, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v4, "csd-1"

    .line 264
    invoke-virtual {v3, v4, v13}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 266
    :cond_20
    iget-object v4, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    move v6, v3

    goto :goto_1f

    :catchall_7
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1d

    :cond_21
    move/from16 v22, v1

    goto :goto_1e

    :catchall_8
    move-exception v0

    move/from16 v1, v21

    move/from16 v10, v41

    :goto_1c
    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move-object v15, v7

    move-object/from16 v26, v24

    const/16 v27, 0x0

    move-wide/from16 v23, p16

    move v7, v1

    move/from16 v1, v42

    goto/16 :goto_d8

    :catch_8
    move-exception v0

    move/from16 v1, v21

    move/from16 v10, v41

    :goto_1d
    move v14, v1

    goto/16 :goto_2d

    :cond_22
    move/from16 v26, v3

    move/from16 v22, v4

    move-object/from16 v35, v14

    :goto_1e
    move/from16 v1, v21

    move-object/from16 v14, v23

    move/from16 v10, v41

    .line 269
    :goto_1f
    :try_start_20
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto :goto_20

    :cond_23
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 270
    :goto_20
    invoke-virtual {v11, v9, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move/from16 v4, p7

    move-object/from16 v3, p10

    move/from16 v21, v1

    goto/16 :goto_d

    :goto_21
    if-eq v9, v1, :cond_24

    move-object v1, v3

    move v7, v4

    move-object/from16 v36, v8

    move/from16 v41, v10

    move-object/from16 p7, v11

    move-object/from16 v39, v12

    move v8, v13

    move-object/from16 v23, v14

    move/from16 v4, v22

    move/from16 v3, v26

    const/4 v14, 0x0

    move/from16 v13, p8

    goto/16 :goto_a

    :cond_24
    if-nez v2, :cond_26

    .line 277
    :try_start_21
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    move/from16 v1, v22

    int-to-float v9, v1

    const/high16 v22, 0x41f00000    # 30.0f

    div-float v9, v9, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    mul-float v9, v9, v22

    mul-float v9, v9, v22

    mul-float v9, v9, v22

    move/from16 p7, v2

    move-object/from16 p10, v3

    float-to-long v2, v9

    move-object/from16 v9, v40

    .line 279
    :try_start_22
    invoke-virtual {v9, v2, v3}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 280
    invoke-virtual {v9}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, v28

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_25

    .line 286
    invoke-virtual {v11}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    move/from16 v2, p7

    goto :goto_25

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v40, v9

    goto :goto_24

    :catch_a
    move-exception v0

    :goto_22
    move-object/from16 v9, v40

    :goto_23
    move-object v1, v0

    :goto_24
    move/from16 v14, v21

    goto/16 :goto_36

    :cond_26
    move/from16 p7, v2

    move-object/from16 p10, v3

    move/from16 v1, v22

    move-object/from16 v9, v40

    :goto_25
    move/from16 v3, p8

    :goto_26
    move v7, v4

    move-object/from16 v36, v8

    move-object/from16 v40, v9

    move/from16 v41, v10

    move-object/from16 p7, v11

    move-object/from16 v39, v12

    move v8, v13

    move-object/from16 v23, v14

    const/4 v14, 0x0

    move v4, v1

    move v13, v3

    move/from16 v3, v26

    move-object/from16 v1, p10

    goto/16 :goto_a

    :catchall_9
    move-exception v0

    move/from16 v21, v1

    goto :goto_27

    :catch_b
    move-exception v0

    move/from16 v21, v1

    goto :goto_22

    :catch_c
    move-exception v0

    move-object/from16 v9, v40

    move/from16 v10, v41

    goto :goto_23

    :cond_27
    move-object/from16 v1, v40

    move/from16 v10, v41

    .line 207
    :try_start_23
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_a
    move-exception v0

    move/from16 v10, v41

    :goto_27
    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move-object v15, v7

    goto :goto_28

    :catch_d
    move-exception v0

    goto :goto_2a

    :cond_28
    move-object/from16 v1, v40

    move/from16 v10, v41

    .line 198
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_27

    :catch_e
    move-exception v0

    move-object/from16 v40, v1

    goto :goto_2b

    :catch_f
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_2a

    :catchall_c
    move-exception v0

    move/from16 v10, v41

    move-object/from16 v15, p0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    :goto_28
    move/from16 v7, v21

    move-object/from16 v26, v24

    :goto_29
    move/from16 v1, v42

    goto/16 :goto_2f

    :catch_10
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v11, p7

    :goto_2a
    move-object/from16 v1, v40

    move/from16 v10, v41

    :goto_2b
    move/from16 v14, v21

    goto :goto_2d

    :cond_29
    move-object/from16 v7, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v40

    move/from16 v10, v41

    move/from16 v5, p9

    move-object v9, v11

    move/from16 v3, v42

    const/4 v13, 0x0

    const/16 v27, 0x0

    goto/16 :goto_38

    :catch_11
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v40

    move/from16 v10, v41

    move/from16 v14, v21

    const/4 v6, -0x5

    goto :goto_2d

    :catchall_d
    move-exception v0

    move/from16 v10, v41

    goto :goto_2e

    :catch_12
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v40

    move/from16 v10, v41

    move/from16 v14, v21

    goto :goto_2c

    :catch_13
    move-exception v0

    move/from16 v15, p3

    move-object/from16 v24, v1

    move-object v1, v7

    move-object v11, v9

    move/from16 v42, v13

    move/from16 v21, v14

    move-object/from16 v7, p0

    move-object/from16 v40, v1

    :goto_2c
    const/4 v6, -0x5

    const/16 v18, 0x0

    :goto_2d
    move-object v1, v0

    goto/16 :goto_36

    :catchall_e
    move-exception v0

    move/from16 v15, p3

    move-object/from16 v24, v1

    move/from16 v42, v13

    move/from16 v21, v14

    :goto_2e
    move-object/from16 v15, p0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move/from16 v7, v21

    move-object/from16 v26, v24

    move/from16 v1, v42

    const/4 v6, -0x5

    :goto_2f
    const/16 v27, 0x0

    goto/16 :goto_3c

    :catch_14
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move-object/from16 v24, v1

    move-object v11, v9

    move/from16 v42, v13

    move/from16 v21, v14

    move-object v1, v0

    const/4 v6, -0x5

    const/16 v18, 0x0

    goto/16 :goto_35

    :catch_15
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move-object v11, v9

    move/from16 v42, v13

    move/from16 v21, v14

    move-object v1, v0

    const/4 v6, -0x5

    goto :goto_34

    :catchall_f
    move-exception v0

    move/from16 v15, p3

    move/from16 v42, v13

    move/from16 v21, v14

    move-object/from16 v15, p0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move/from16 v7, v21

    goto :goto_30

    :catch_16
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move/from16 v42, v13

    move/from16 v21, v14

    move-object v1, v0

    goto :goto_33

    :catchall_10
    move-exception v0

    move/from16 v15, p3

    move/from16 v42, v13

    move-object/from16 v15, p0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v7, v9

    :goto_30
    move/from16 v1, v42

    :goto_31
    const/4 v6, -0x5

    const/16 v26, 0x0

    :goto_32
    const/16 v27, 0x0

    goto/16 :goto_d8

    :catch_17
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v15, p3

    move/from16 v42, v13

    move-object v1, v0

    move v14, v9

    :goto_33
    const/4 v6, -0x5

    const/4 v11, 0x0

    :goto_34
    const/16 v18, 0x0

    const/16 v24, 0x0

    :goto_35
    const/16 v40, 0x0

    .line 295
    :goto_36
    :try_start_24
    instance-of v2, v1, Ljava/lang/IllegalStateException;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    if-eqz v2, :cond_2a

    if-nez p21, :cond_2a

    const/4 v13, 0x1

    goto :goto_37

    :cond_2a
    const/4 v13, 0x0

    .line 298
    :goto_37
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    move/from16 v3, v42

    :try_start_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framerate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    move/from16 v5, p9

    :try_start_27
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 299
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    move-object v9, v11

    move/from16 v27, v13

    move/from16 v21, v14

    const/4 v13, 0x1

    :goto_38
    if-eqz v18, :cond_2b

    .line 304
    :try_start_28
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_39

    :catchall_11
    move-exception v0

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move v1, v3

    move v14, v5

    move-object v15, v7

    move/from16 v7, v21

    move-object/from16 v26, v24

    goto/16 :goto_3c

    :cond_2b
    :goto_39
    if-eqz v40, :cond_2c

    .line 307
    invoke-virtual/range {v40 .. v40}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_2c
    if-eqz v9, :cond_2d

    .line 310
    invoke-virtual {v9}, Landroid/media/MediaCodec;->stop()V

    .line 311
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 313
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    move-wide/from16 v47, p14

    move v1, v3

    move v14, v5

    move-object v15, v7

    move v5, v10

    move v2, v13

    move-object/from16 v38, v24

    move-wide/from16 v12, p12

    move-wide/from16 v23, p16

    goto/16 :goto_d2

    :catchall_12
    move-exception v0

    move-wide/from16 v47, p14

    move-object v2, v0

    move v1, v3

    move-object v15, v7

    move/from16 v27, v13

    move v7, v14

    move-object/from16 v26, v24

    move-wide/from16 v12, p12

    move-wide/from16 v23, p16

    move v14, v5

    goto/16 :goto_d8

    :catchall_13
    move-exception v0

    goto :goto_3a

    :catchall_14
    move-exception v0

    move/from16 v3, v42

    :goto_3a
    move-wide/from16 v47, p14

    move-object v2, v0

    move v1, v3

    move-object v15, v7

    move/from16 v27, v13

    move v7, v14

    move-object/from16 v26, v24

    move/from16 v14, p9

    move-wide/from16 v12, p12

    goto :goto_3c

    :catchall_15
    move-exception v0

    move/from16 v3, v42

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move v1, v3

    move-object v15, v7

    move v7, v14

    move-object/from16 v26, v24

    const/16 v27, 0x0

    :goto_3b
    move/from16 v14, p9

    :goto_3c
    move-wide/from16 v23, p16

    goto/16 :goto_d8

    :cond_2e
    move-object/from16 v11, p0

    move-object/from16 v35, v4

    move-object v14, v15

    move-object/from16 v12, v26

    move/from16 v15, p3

    move/from16 v71, v8

    move-object v8, v5

    move/from16 v5, v71

    .line 315
    :try_start_29
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v6, p1

    .line 316
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 318
    iget-object v1, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_49

    const/4 v2, 0x0

    :try_start_2a
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_48

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2f

    .line 319
    :try_start_2b
    iget-object v1, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    move v3, v1

    goto :goto_3e

    :catchall_16
    move-exception v0

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v5

    move v1, v7

    move v7, v9

    :goto_3d
    move-object v15, v11

    goto/16 :goto_31

    :cond_2f
    const/4 v3, -0x1

    :goto_3e
    const-string v2, "mime"

    if-ltz v4, :cond_30

    .line 321
    :try_start_2c
    iget-object v1, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    if-nez v1, :cond_30

    move/from16 v13, p20

    const/4 v1, 0x1

    goto :goto_3f

    :cond_30
    move/from16 v13, p20

    const/4 v1, 0x0

    :goto_3f
    if-nez v13, :cond_33

    if-eqz v1, :cond_31

    goto :goto_41

    .line 812
    :cond_31
    :try_start_2d
    iget-object v2, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    iget-object v3, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_17

    const/4 v1, -0x1

    if-eq v7, v1, :cond_32

    const/4 v14, 0x1

    goto :goto_40

    :cond_32
    const/4 v14, 0x0

    :goto_40
    move-object/from16 v1, p0

    move-object v4, v12

    move v8, v5

    move-object v12, v6

    move-wide/from16 v5, p12

    move v13, v8

    move-wide/from16 v7, p14

    move-wide/from16 v9, p18

    move-object v15, v11

    move-object/from16 v11, p2

    move v12, v14

    :try_start_2e
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    move/from16 v21, p7

    move/from16 v5, p8

    move/from16 v1, p10

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move v14, v13

    const/4 v2, 0x0

    const/4 v6, -0x5

    const/16 v27, 0x0

    const/16 v38, 0x0

    move-wide/from16 v12, p12

    goto/16 :goto_d2

    :catchall_17
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move/from16 v1, p10

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v5

    goto :goto_3d

    :cond_33
    :goto_41
    move v13, v5

    move-object v15, v11

    if-ltz v4, :cond_a0

    const-wide/32 v31, -0x80000000

    const/16 v1, 0x3e8

    .line 343
    :try_start_2f
    div-int v5, v1, v13
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_60
    .catchall {:try_start_2f .. :try_end_2f} :catchall_42

    mul-int/2addr v5, v1

    int-to-long v10, v5

    const/16 v5, 0x1e

    if-ge v13, v5, :cond_34

    add-int/lit8 v5, v13, 0x5

    .line 346
    :try_start_30
    div-int v5, v1, v5
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_18
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    :goto_42
    mul-int/2addr v5, v1

    int-to-long v5, v5

    goto :goto_49

    :catchall_18
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move/from16 v1, p10

    :goto_43
    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    :goto_44
    move v14, v13

    goto/16 :goto_3

    :catch_18
    move-exception v0

    move/from16 v1, p10

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move/from16 v44, v4

    :goto_45
    move v14, v13

    :goto_46
    const/4 v3, 0x0

    :goto_47
    const/4 v6, -0x5

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_48
    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    move-wide/from16 v12, p12

    goto/16 :goto_cd

    :cond_34
    add-int/lit8 v5, v13, 0x1

    .line 348
    :try_start_31
    div-int v5, v1, v5

    goto :goto_42

    :goto_49
    move-wide/from16 v33, v5

    .line 351
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 352
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_60
    .catchall {:try_start_31 .. :try_end_31} :catchall_42

    if-eqz v18, :cond_38

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v1, v28, v1

    if-gtz v1, :cond_35

    const v1, 0x27ac40

    goto :goto_4a

    :cond_35
    const v1, 0x459c4000    # 5000.0f

    cmpg-float v1, v28, v1

    if-gtz v1, :cond_36

    const v1, 0x2191c0

    goto :goto_4a

    :cond_36
    const v1, 0x17cdc0

    :goto_4a
    const v5, 0xe4e1c0

    move/from16 v7, p11

    if-lt v7, v5, :cond_37

    :try_start_32
    const-string v6, "OMX.google.h264.encoder"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    move-object/from16 v24, v6

    const-wide/16 v5, 0x0

    goto :goto_4c

    :catchall_19
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-object v2, v0

    move v14, v13

    const/4 v6, -0x5

    const-wide/16 v23, 0x0

    goto/16 :goto_4

    :catch_19
    move-exception v0

    move-wide/from16 v47, p14

    move-object v2, v0

    move/from16 v44, v4

    move v14, v13

    const/4 v3, 0x0

    const/4 v6, -0x5

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v23, 0x0

    goto :goto_48

    :cond_37
    const-wide/16 v5, 0x0

    goto :goto_4b

    :cond_38
    move/from16 v7, p11

    if-gtz p10, :cond_39

    move-wide/from16 v5, p16

    const v1, 0xe1000

    goto :goto_4b

    :cond_39
    move/from16 v1, p10

    move-wide/from16 v5, p16

    :goto_4b
    const/16 v24, 0x0

    :goto_4c
    if-lez v7, :cond_3a

    .line 371
    :try_start_33
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4d

    :catchall_1a
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-object v2, v0

    move-wide/from16 v23, v5

    goto/16 :goto_44

    :catch_1a
    move-exception v0

    move-wide/from16 v47, p14

    move-object v2, v0

    move/from16 v44, v4

    move-wide/from16 v23, v5

    goto/16 :goto_45

    :cond_3a
    :goto_4d
    const-wide/16 v19, 0x0

    cmp-long v26, v5, v19

    if-ltz v26, :cond_3b

    move-wide/from16 v5, v21

    :cond_3b
    cmp-long v26, v5, v19

    if-ltz v26, :cond_3c

    move/from16 v26, v3

    .line 380
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1a
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    move/from16 v29, v4

    const/4 v4, 0x0

    :try_start_34
    invoke-virtual {v3, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1b
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    move-wide/from16 p16, v5

    goto/16 :goto_4f

    :catch_1b
    move-exception v0

    move-wide/from16 v47, p14

    move-object v2, v0

    move v3, v4

    move-wide/from16 v23, v5

    move v14, v13

    move/from16 v44, v29

    goto/16 :goto_47

    :cond_3c
    move/from16 v26, v3

    move/from16 v29, v4

    const-wide/16 v19, 0x0

    move-wide/from16 v3, p12

    cmp-long v36, v3, v19

    if-lez v36, :cond_3d

    move-wide/from16 p16, v5

    .line 382
    :try_start_35
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1d
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    const/4 v6, 0x0

    :try_start_36
    invoke-virtual {v5, v3, v4, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1c
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    goto :goto_4f

    :catch_1c
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v13

    move/from16 v44, v29

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    move-wide v12, v3

    move v3, v6

    const/4 v6, -0x5

    goto/16 :goto_cd

    :catchall_1b
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v13

    const/4 v6, -0x5

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide v12, v3

    goto/16 :goto_d8

    :catch_1d
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v13

    move/from16 v44, v29

    const/4 v6, -0x5

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    move-wide v12, v3

    :goto_4e
    const/4 v3, 0x0

    goto/16 :goto_cd

    :cond_3d
    move-wide/from16 p16, v5

    .line 384
    :try_start_37
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_5f
    .catchall {:try_start_37 .. :try_end_37} :catchall_41

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    :try_start_38
    invoke-virtual {v5, v3, v4, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_5e
    .catchall {:try_start_38 .. :try_end_38} :catchall_40

    :goto_4f
    move-object/from16 v6, p26

    if-eqz v6, :cond_40

    const/16 v3, 0x5a

    move/from16 v5, p3

    if-eq v5, v3, :cond_3f

    const/16 v3, 0x10e

    if-ne v5, v3, :cond_3e

    goto :goto_50

    .line 394
    :cond_3e
    :try_start_39
    iget v3, v6, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 395
    iget v4, v6, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_51

    .line 391
    :cond_3f
    :goto_50
    iget v3, v6, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 392
    iget v4, v6, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1e
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    :goto_51
    move/from16 v71, v4

    move v4, v3

    move/from16 v3, v71

    goto :goto_52

    :catchall_1c
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    goto/16 :goto_43

    :catch_1e
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v13

    move/from16 v44, v29

    goto/16 :goto_46

    :cond_40
    move/from16 v5, p3

    move/from16 v4, p7

    move/from16 v3, p8

    :goto_52
    if-eqz v24, :cond_41

    .line 404
    :try_start_3a
    invoke-static/range {v24 .. v24}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v24
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1f
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1c

    goto :goto_53

    :catch_1f
    :cond_41
    const/16 v24, 0x0

    :goto_53
    if-nez v24, :cond_42

    .line 410
    :try_start_3b
    invoke-static {v14}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v24
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_20
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    goto :goto_54

    :catch_20
    move-exception v0

    move-wide/from16 v47, p14

    move-object v2, v0

    move v14, v13

    move-object/from16 v11, v24

    move/from16 v44, v29

    const/4 v3, 0x0

    const/4 v6, -0x5

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    move-wide/from16 v12, p12

    move-wide/from16 v23, p16

    goto/16 :goto_cd

    :cond_42
    :goto_54
    move-object/from16 p10, v24

    .line 413
    :try_start_3c
    sget-boolean v24, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_5d
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3f

    if-eqz v24, :cond_43

    .line 414
    :try_start_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create encoder with w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bitrate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_21
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1c

    goto :goto_55

    :catch_21
    move-exception v0

    move-object/from16 v11, p10

    move-wide/from16 v47, p14

    move-wide/from16 v23, p16

    move-object v2, v0

    move v14, v13

    move/from16 v44, v29

    const/4 v3, 0x0

    const/4 v6, -0x5

    const/4 v8, 0x0

    goto/16 :goto_48

    .line 416
    :cond_43
    :goto_55
    :try_start_3e
    invoke-static {v14, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "color-format"

    const v7, 0x7f000789

    .line 417
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "bitrate"

    .line 418
    invoke-virtual {v5, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_5d
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3f

    if-eqz v18, :cond_44

    .line 419
    :try_start_3f
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_44

    const-string v6, "bitrate-mode"

    const/4 v7, 0x2

    .line 421
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1c

    :cond_44
    :try_start_40
    const-string v6, "max-bitrate"

    .line 423
    invoke-virtual {v5, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "frame-rate"

    .line 424
    invoke-virtual {v5, v6, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "i-frame-interval"

    const/4 v7, 0x1

    .line 425
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 427
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_5d
    .catchall {:try_start_40 .. :try_end_40} :catchall_3f

    const/16 v6, 0x17

    if-ge v7, v6, :cond_46

    :try_start_41
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v24, v3

    const/16 v3, 0x1e0

    if-gt v6, v3, :cond_47

    if-nez v18, :cond_47

    const v3, 0xe1000

    if-le v1, v3, :cond_45

    move v1, v3

    :cond_45
    const-string v3, "bitrate"

    .line 431
    invoke-virtual {v5, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_21
    .catchall {:try_start_41 .. :try_end_41} :catchall_1c

    goto :goto_56

    :cond_46
    move/from16 v24, v3

    :cond_47
    :goto_56
    move/from16 v18, v1

    .line 434
    :try_start_42
    invoke-virtual/range {p10 .. p10}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_5c
    .catchall {:try_start_42 .. :try_end_42} :catchall_3e

    .line 435
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected encoder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_5b
    .catchall {:try_start_43 .. :try_end_43} :catchall_3d

    move-object/from16 v3, p10

    move/from16 v23, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 436
    :try_start_44
    invoke-virtual {v3, v5, v1, v1, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 437
    new-instance v5, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_5a
    .catchall {:try_start_44 .. :try_end_44} :catchall_3d

    .line 438
    :try_start_45
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 439
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 441
    invoke-virtual {v9, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_59
    .catchall {:try_start_45 .. :try_end_45} :catchall_3d

    move-object/from16 v36, v3

    .line 442
    :try_start_46
    new-instance v3, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_58
    .catchall {:try_start_46 .. :try_end_46} :catchall_3d

    const/16 v38, 0x0

    move-object/from16 v39, v12

    int-to-float v12, v13

    const/16 v40, 0x0

    move-object v1, v3

    move-object/from16 v51, v2

    move-object/from16 v2, p22

    move-object/from16 v54, v3

    move/from16 v53, v24

    move/from16 v52, v26

    move-object/from16 v3, v38

    move-object/from16 v55, v4

    move/from16 v57, v23

    move/from16 v56, v29

    move-object/from16 v4, p23

    move-wide/from16 v23, p16

    move-object/from16 v58, v5

    move-object/from16 v5, p24

    move-object/from16 v26, v6

    move-object/from16 v6, p26

    move/from16 v59, v7

    move/from16 v7, p7

    move-object/from16 v60, v8

    move/from16 v8, p8

    move-object/from16 v61, v9

    move/from16 v9, p5

    move-wide/from16 v41, v10

    move/from16 v10, p6

    move/from16 v11, p3

    move-object/from16 v62, v39

    move/from16 v13, v40

    :try_start_47
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_57
    .catchall {:try_start_47 .. :try_end_47} :catchall_3c

    if-nez p27, :cond_49

    move/from16 v2, p8

    .line 443
    :try_start_48
    invoke-static {v2, v2}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_25
    .catchall {:try_start_48 .. :try_end_48} :catchall_1f

    int-to-float v1, v1

    move/from16 v6, p5

    move/from16 v7, p6

    :try_start_49
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_24
    .catchall {:try_start_49 .. :try_end_49} :catchall_1e

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f666666    # 0.9f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_48

    move/from16 v3, p7

    const/4 v1, 0x1

    .line 444
    :try_start_4a
    invoke-static {v6, v7, v3, v2, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    invoke-static {v6, v7, v3, v2, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_23
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1d

    move-object/from16 v1, v54

    :try_start_4b
    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_22
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1d

    goto/16 :goto_63

    :catch_22
    move-exception v0

    goto :goto_5d

    :catchall_1d
    move-exception v0

    goto :goto_58

    :catch_23
    move-exception v0

    goto :goto_5c

    :cond_48
    move/from16 v3, p7

    goto :goto_62

    :catchall_1e
    move-exception v0

    goto :goto_57

    :catch_24
    move-exception v0

    goto :goto_5b

    :catchall_1f
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_57
    move/from16 v3, p7

    :goto_58
    move/from16 v14, p9

    move-wide/from16 v12, p12

    :goto_59
    move-wide/from16 v47, p14

    move v10, v2

    move v7, v3

    move/from16 v1, v18

    const/4 v6, -0x5

    const/16 v27, 0x0

    :goto_5a
    move-object v2, v0

    goto/16 :goto_d8

    :catch_25
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_5b
    move/from16 v3, p7

    :goto_5c
    move-object/from16 v1, v54

    :goto_5d
    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move-object/from16 v11, v36

    move-object/from16 v8, v55

    :goto_5e
    move/from16 v44, v56

    const/4 v3, 0x0

    :goto_5f
    const/4 v6, -0x5

    const/16 v38, 0x0

    :goto_60
    move-object/from16 v56, v1

    :goto_61
    move/from16 v1, v18

    goto/16 :goto_cd

    :cond_49
    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v3, p7

    move/from16 v2, p8

    :goto_62
    move-object/from16 v1, v54

    .line 446
    :goto_63
    :try_start_4c
    invoke-virtual {v1}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_56
    .catchall {:try_start_4c .. :try_end_4c} :catchall_3c

    move-object/from16 v8, v55

    move-object/from16 v5, v61

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_4d
    invoke-virtual {v8, v5, v4, v9, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_55
    .catchall {:try_start_4d .. :try_end_4d} :catchall_3b

    .line 447
    :try_start_4e
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_54
    .catchall {:try_start_4e .. :try_end_4e} :catchall_3c

    move/from16 v4, v59

    const/16 v5, 0x15

    if-ge v4, v5, :cond_4a

    .line 453
    :try_start_4f
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 454
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_26
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1d

    goto :goto_65

    :catch_26
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v47, p14

    move-object v2, v0

    move-object/from16 v38, v9

    :goto_64
    move-object/from16 v11, v36

    move/from16 v44, v56

    const/4 v3, 0x0

    const/4 v6, -0x5

    goto :goto_60

    :cond_4a
    move-object v4, v9

    move-object v5, v4

    :goto_65
    move/from16 v10, v52

    if-ltz v10, :cond_53

    .line 459
    :try_start_50
    iget-object v11, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    move-object/from16 v12, v51

    .line 460
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_30
    .catchall {:try_start_50 .. :try_end_50} :catchall_25

    if-nez v9, :cond_4c

    :try_start_51
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "audio/mpeg"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_27
    .catchall {:try_start_51 .. :try_end_51} :catchall_1d

    if-eqz v9, :cond_4b

    goto :goto_67

    :cond_4b
    const/4 v13, 0x0

    goto :goto_68

    :catch_27
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    :goto_66
    move-wide/from16 v47, p14

    move-object v2, v0

    goto/16 :goto_74

    :cond_4c
    :goto_67
    const/4 v13, 0x1

    .line 462
    :goto_68
    :try_start_52
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "audio/unknown"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_30
    .catchall {:try_start_52 .. :try_end_52} :catchall_25

    if-eqz v9, :cond_4d

    const/4 v10, -0x1

    :cond_4d
    if-ltz v10, :cond_52

    if-eqz v13, :cond_50

    .line 468
    :try_start_53
    iget-object v9, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    .line 469
    iget-object v12, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2b
    .catchall {:try_start_53 .. :try_end_53} :catchall_21

    :try_start_54
    const-string v12, "max-input-size"

    .line 471
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_28
    .catchall {:try_start_54 .. :try_end_54} :catchall_1d

    goto :goto_69

    :catch_28
    move-exception v0

    move-object v11, v0

    .line 473
    :try_start_55
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    :goto_69
    if-gtz v11, :cond_4e

    const/high16 v11, 0x10000

    .line 478
    :cond_4e
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2b
    .catchall {:try_start_55 .. :try_end_55} :catchall_21

    move-object/from16 p16, v12

    move/from16 p10, v13

    const-wide/16 v19, 0x0

    move-wide/from16 v12, p12

    cmp-long v29, v12, v19

    if-lez v29, :cond_4f

    move-object/from16 p17, v5

    .line 481
    :try_start_56
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2a
    .catchall {:try_start_56 .. :try_end_56} :catchall_20

    const/4 v6, 0x0

    :try_start_57
    invoke-virtual {v5, v12, v13, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_29
    .catchall {:try_start_57 .. :try_end_57} :catchall_20

    move/from16 v29, v9

    goto :goto_6a

    :catch_29
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, p14

    move-object v2, v0

    move v3, v6

    goto/16 :goto_6d

    :cond_4f
    move-object/from16 p17, v5

    .line 483
    :try_start_58
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_2a
    .catchall {:try_start_58 .. :try_end_58} :catchall_20

    move/from16 v29, v9

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    :try_start_59
    invoke-virtual {v5, v6, v7, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2c
    .catchall {:try_start_59 .. :try_end_59} :catchall_20

    :goto_6a
    move v5, v10

    move/from16 v39, v11

    move/from16 v7, v29

    const/4 v6, 0x0

    move/from16 v29, p10

    move-wide/from16 v9, p14

    move-object/from16 v11, p16

    goto/16 :goto_76

    :catchall_20
    move-exception v0

    goto :goto_6b

    :catch_2a
    move-exception v0

    goto :goto_6c

    :catchall_21
    move-exception v0

    move-wide/from16 v12, p12

    :goto_6b
    move/from16 v14, p9

    goto/16 :goto_59

    :catch_2b
    move-exception v0

    move-wide/from16 v12, p12

    :goto_6c
    move/from16 v14, p9

    goto/16 :goto_66

    :cond_50
    move-object/from16 p17, v5

    move/from16 p10, v13

    move-wide/from16 v12, p12

    .line 486
    :try_start_5a
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v6, p1

    .line 487
    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v5, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_2f
    .catchall {:try_start_5a .. :try_end_5a} :catchall_24

    const-wide/16 v6, 0x0

    cmp-long v9, v12, v6

    if-lez v9, :cond_51

    const/4 v9, 0x0

    .line 491
    :try_start_5b
    invoke-virtual {v5, v12, v13, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2c
    .catchall {:try_start_5b .. :try_end_5b} :catchall_22

    goto :goto_6e

    :catchall_22
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, p14

    move v10, v2

    move v7, v3

    move/from16 v27, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    goto/16 :goto_5a

    :catch_2c
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, p14

    move-object v2, v0

    move v3, v9

    :goto_6d
    move-object/from16 v11, v36

    move/from16 v44, v56

    goto/16 :goto_5f

    :cond_51
    const/4 v9, 0x0

    .line 493
    :try_start_5c
    invoke-virtual {v5, v6, v7, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 496
    :goto_6e
    new-instance v6, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v6, v11, v5, v10}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2f
    .catchall {:try_start_5c .. :try_end_5c} :catchall_24

    .line 497
    :try_start_5d
    iput-wide v12, v6, Lorg/telegram/messenger/video/AudioRecoder;->startTime:J
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2e
    .catchall {:try_start_5d .. :try_end_5d} :catchall_24

    move/from16 p16, v10

    move-wide/from16 v9, p14

    .line 498
    :try_start_5e
    iput-wide v9, v6, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    .line 499
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v7, v6, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v11, 0x1

    invoke-virtual {v5, v7, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2d
    .catchall {:try_start_5e .. :try_end_5e} :catchall_23

    move/from16 v29, p10

    move v7, v5

    const/4 v11, 0x0

    const/16 v39, 0x0

    move/from16 v5, p16

    goto/16 :goto_76

    :catchall_23
    move-exception v0

    goto :goto_71

    :catch_2d
    move-exception v0

    goto :goto_6f

    :catch_2e
    move-exception v0

    move-wide/from16 v9, p14

    :goto_6f
    move/from16 v14, p9

    move-object v2, v0

    move-object/from16 v38, v6

    move-wide/from16 v47, v9

    goto/16 :goto_64

    :catchall_24
    move-exception v0

    goto :goto_70

    :catch_2f
    move-exception v0

    goto :goto_73

    :cond_52
    move-object/from16 p17, v5

    move/from16 p16, v10

    move/from16 p10, v13

    move-wide/from16 v12, p12

    move-wide/from16 v9, p14

    move/from16 v29, p10

    move/from16 v5, p16

    const/4 v6, 0x0

    const/4 v7, -0x5

    const/4 v11, 0x0

    goto :goto_75

    :catchall_25
    move-exception v0

    move-wide/from16 v12, p12

    :goto_70
    move-wide/from16 v9, p14

    :goto_71
    move/from16 v14, p9

    move v7, v3

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    :goto_72
    const/16 v27, 0x0

    move v10, v2

    goto/16 :goto_5a

    :catch_30
    move-exception v0

    move-wide/from16 v12, p12

    :goto_73
    move-wide/from16 v9, p14

    move/from16 v14, p9

    move-object v2, v0

    move-wide/from16 v47, v9

    :goto_74
    move-object/from16 v11, v36

    goto/16 :goto_5e

    :cond_53
    move-wide/from16 v12, p12

    move-object/from16 p17, v5

    move v5, v10

    move-wide/from16 v9, p14

    const/4 v6, 0x0

    const/4 v7, -0x5

    const/4 v11, 0x0

    const/16 v29, 0x1

    :goto_75
    const/16 v39, 0x0

    :goto_76
    if-gez v5, :cond_54

    const/16 v40, 0x1

    goto :goto_77

    :cond_54
    const/16 v40, 0x0

    .line 508
    :goto_77
    :try_start_5f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_53
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3a

    move-object/from16 p10, p17

    move-wide/from16 v67, v21

    move-wide/from16 v69, v67

    move-wide/from16 v65, v31

    move/from16 v43, v40

    const/16 v31, -0x5

    const/16 v40, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x1

    const-wide/16 v54, 0x0

    const-wide/16 v63, 0x0

    move-object/from16 v32, v11

    move/from16 v11, v39

    const/16 v39, 0x0

    :goto_78
    if-eqz v39, :cond_56

    if-nez v29, :cond_55

    if-nez v43, :cond_55

    goto :goto_79

    :cond_55
    move/from16 v14, p9

    move v5, v2

    move v7, v3

    move-object/from16 v38, v6

    move-object v4, v8

    move-wide/from16 v47, v9

    move/from16 v6, v31

    move/from16 v44, v56

    const/4 v3, 0x0

    const/16 v27, 0x0

    move-object/from16 v56, v1

    move/from16 v1, v18

    goto/16 :goto_ce

    .line 511
    :cond_56
    :goto_79
    :try_start_60
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_52
    .catchall {:try_start_60 .. :try_end_60} :catchall_39

    if-nez v29, :cond_57

    if-eqz v6, :cond_57

    .line 514
    :try_start_61
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_31
    .catchall {:try_start_61 .. :try_end_61} :catchall_26

    goto :goto_7a

    :catchall_26
    move-exception v0

    move/from16 v7, p7

    move/from16 v14, p9

    move-wide/from16 v47, v9

    move/from16 v1, v18

    move/from16 v6, v31

    goto :goto_72

    :catch_31
    move-exception v0

    move/from16 v14, p9

    move-object v2, v0

    move-object/from16 v38, v6

    move-wide/from16 v47, v9

    move/from16 v6, v31

    move-object/from16 v11, v36

    move/from16 v44, v56

    const/4 v3, 0x0

    goto/16 :goto_60

    :cond_57
    move/from16 v3, v43

    :goto_7a
    if-nez v40, :cond_66

    move/from16 p14, v3

    .line 519
    :try_start_62
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v3
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_38
    .catchall {:try_start_62 .. :try_end_62} :catchall_29

    move-object/from16 p16, v6

    move/from16 v6, v56

    if-ne v3, v6, :cond_5b

    move-object/from16 v56, v1

    const-wide/16 v1, 0x9c4

    .line 521
    :try_start_63
    invoke-virtual {v8, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_5a

    .line 524
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_58

    .line 525
    aget-object v1, v4, v3

    goto :goto_7b

    .line 527
    :cond_58
    invoke-virtual {v8, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 529
    :goto_7b
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_33
    .catchall {:try_start_63 .. :try_end_63} :catchall_27

    move-object/from16 p17, v4

    const/4 v4, 0x0

    :try_start_64
    invoke-virtual {v2, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v46
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_32
    .catchall {:try_start_64 .. :try_end_64} :catchall_27

    if-gez v46, :cond_59

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x4

    move-object/from16 v43, v8

    move/from16 v44, v3

    .line 531
    :try_start_65
    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v40, 0x1

    goto :goto_7c

    :cond_59
    const/16 v45, 0x0

    .line 534
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v47

    const/16 v49, 0x0

    move-object/from16 v43, v8

    move/from16 v44, v3

    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 535
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_33
    .catchall {:try_start_65 .. :try_end_65} :catchall_27

    goto :goto_7c

    :catch_32
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v3, v4

    move/from16 v44, v6

    move-wide/from16 v47, v9

    move/from16 v1, v18

    move/from16 v6, v31

    move-object/from16 v11, v36

    goto/16 :goto_cd

    :cond_5a
    move-object/from16 p17, v4

    :goto_7c
    move/from16 v59, v5

    move-object/from16 v5, v62

    const/4 v1, 0x0

    move-wide/from16 v61, v9

    goto/16 :goto_83

    :catchall_27
    move-exception v0

    move/from16 v7, p7

    move/from16 v14, p9

    move-object v2, v0

    move-wide/from16 v47, v9

    move/from16 v1, v18

    move/from16 v6, v31

    :goto_7d
    const/16 v27, 0x0

    goto/16 :goto_c9

    :catch_33
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move/from16 v44, v6

    move-wide/from16 v47, v9

    move/from16 v1, v18

    move/from16 v6, v31

    move-object/from16 v11, v36

    goto/16 :goto_4e

    :cond_5b
    move-object/from16 v56, v1

    move-object/from16 p17, v4

    if-eqz v29, :cond_64

    const/4 v1, -0x1

    if-eq v5, v1, :cond_63

    if-ne v3, v5, :cond_64

    .line 539
    :try_start_66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_36
    .catchall {:try_start_66 .. :try_end_66} :catchall_29

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_5c

    .line 540
    :try_start_67
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v2

    move/from16 v59, v5

    int-to-long v4, v11

    cmp-long v4, v2, v4

    if-lez v4, :cond_5d

    const-wide/16 v4, 0x400

    add-long/2addr v2, v4

    long-to-int v11, v2

    .line 543
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v32
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_33
    .catchall {:try_start_67 .. :try_end_67} :catchall_27

    goto :goto_7e

    :cond_5c
    move/from16 v59, v5

    :cond_5d
    :goto_7e
    move-object/from16 v2, v32

    .line 546
    :try_start_68
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_36
    .catchall {:try_start_68 .. :try_end_68} :catchall_29

    const/4 v4, 0x0

    :try_start_69
    invoke-virtual {v3, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move-object/from16 v5, v62

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_35
    .catchall {:try_start_69 .. :try_end_69} :catchall_29

    const/16 v3, 0x15

    if-ge v1, v3, :cond_5e

    .line 548
    :try_start_6a
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_32
    .catchall {:try_start_6a .. :try_end_6a} :catchall_27

    .line 549
    :try_start_6b
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_33
    .catchall {:try_start_6b .. :try_end_6b} :catchall_27

    .line 551
    :cond_5e
    :try_start_6c
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_36
    .catchall {:try_start_6c .. :try_end_6c} :catchall_29

    if-ltz v1, :cond_5f

    .line 552
    :try_start_6d
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 553
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_33
    .catchall {:try_start_6d .. :try_end_6d} :catchall_27

    goto :goto_7f

    :cond_5f
    const/4 v1, 0x0

    .line 555
    :try_start_6e
    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_34
    .catchall {:try_start_6e .. :try_end_6e} :catchall_29

    const/16 v40, 0x1

    .line 558
    :goto_7f
    :try_start_6f
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_36
    .catchall {:try_start_6f .. :try_end_6f} :catchall_29

    if-lez v1, :cond_62

    const-wide/16 v3, 0x0

    cmp-long v1, v9, v3

    if-ltz v1, :cond_60

    :try_start_70
    iget-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_33
    .catchall {:try_start_70 .. :try_end_70} :catchall_27

    cmp-long v1, v3, v9

    if-gez v1, :cond_62

    :cond_60
    const/4 v1, 0x0

    .line 559
    :try_start_71
    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 560
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 561
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v7, v2, v5, v1}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v3
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_34
    .catchall {:try_start_71 .. :try_end_71} :catchall_29

    const-wide/16 v19, 0x0

    cmp-long v1, v3, v19

    if-eqz v1, :cond_62

    .line 563
    :try_start_72
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_36
    .catchall {:try_start_72 .. :try_end_72} :catchall_29

    if-eqz v1, :cond_62

    move-wide/from16 v61, v9

    .line 564
    :try_start_73
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v43, v9, v12

    cmp-long v32, v43, v54

    if-lez v32, :cond_61

    sub-long v54, v9, v12

    :cond_61
    move-wide/from16 v9, v54

    move-object/from16 v32, v2

    long-to-float v2, v9

    const/high16 v30, 0x447a0000    # 1000.0f

    div-float v2, v2, v30

    div-float v2, v2, v28

    .line 567
    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v54, v9

    goto :goto_82

    :cond_62
    move-object/from16 v32, v2

    move-wide/from16 v61, v9

    goto :goto_82

    :catch_34
    move-exception v0

    move-wide/from16 v61, v9

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v3, v1

    goto :goto_80

    :catch_35
    move-exception v0

    move-wide/from16 v61, v9

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v3, v4

    :goto_80
    move/from16 v44, v6

    move/from16 v1, v18

    move/from16 v6, v31

    move-object/from16 v11, v36

    goto/16 :goto_bc

    :catch_36
    move-exception v0

    move-wide/from16 v61, v9

    goto :goto_85

    :cond_63
    move/from16 v59, v5

    move-object/from16 v5, v62

    move-wide/from16 v61, v9

    goto :goto_81

    :cond_64
    move/from16 v59, v5

    move-object/from16 v5, v62

    move-wide/from16 v61, v9

    const/4 v1, -0x1

    :goto_81
    if-ne v3, v1, :cond_65

    const/4 v1, 0x1

    goto :goto_83

    :cond_65
    :goto_82
    const/4 v1, 0x0

    :goto_83
    if-eqz v1, :cond_67

    const-wide/16 v1, 0x9c4

    .line 575
    invoke-virtual {v8, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v44

    if-ltz v44, :cond_67

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x4

    move-object/from16 v43, v8

    .line 577
    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_37
    .catchall {:try_start_73 .. :try_end_73} :catchall_28

    const/16 v40, 0x1

    goto :goto_86

    :catchall_28
    move-exception v0

    goto :goto_84

    :catch_37
    move-exception v0

    goto :goto_85

    :catchall_29
    move-exception v0

    move-wide/from16 v61, v9

    :goto_84
    move/from16 v7, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object v2, v0

    move/from16 v1, v18

    move/from16 v6, v31

    move-wide/from16 v47, v61

    goto/16 :goto_32

    :catch_38
    move-exception v0

    move-object/from16 p16, v6

    move-wide/from16 v61, v9

    move/from16 v6, v56

    move-object/from16 v56, v1

    :goto_85
    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move/from16 v44, v6

    move/from16 v1, v18

    move/from16 v6, v31

    move-object/from16 v11, v36

    move-wide/from16 v47, v61

    goto/16 :goto_4e

    :cond_66
    move/from16 p14, v3

    move-object/from16 p17, v4

    move/from16 v59, v5

    move-object/from16 p16, v6

    move/from16 v6, v56

    move-object/from16 v5, v62

    move-object/from16 v56, v1

    move-wide/from16 v61, v9

    :cond_67
    :goto_86
    xor-int/lit8 v1, v50, 0x1

    move v2, v1

    move/from16 v44, v6

    move/from16 v43, v7

    move/from16 v4, v31

    move-wide/from16 v9, v61

    move-wide/from16 v6, v65

    const/4 v3, 0x1

    move-object/from16 v1, p10

    :goto_87
    if-nez v2, :cond_69

    if-eqz v3, :cond_68

    goto :goto_88

    :cond_68
    move/from16 v3, p7

    move/from16 v2, p8

    move-object/from16 p10, v1

    move/from16 v31, v4

    move-object/from16 v62, v5

    move-wide/from16 v65, v6

    move/from16 v7, v43

    move-object/from16 v1, v56

    move/from16 v5, v59

    move/from16 v43, p14

    move-object/from16 v6, p16

    move-object/from16 v4, p17

    move/from16 v56, v44

    goto/16 :goto_78

    .line 586
    :cond_69
    :goto_88
    :try_start_74
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_51
    .catchall {:try_start_74 .. :try_end_74} :catchall_38

    if-eqz p21, :cond_6a

    const-wide/16 v45, 0x55f0

    move/from16 p10, v2

    move/from16 p15, v3

    move-wide/from16 v2, v45

    goto :goto_89

    :cond_6a
    move/from16 p10, v2

    move/from16 p15, v3

    const-wide/16 v2, 0x9c4

    :goto_89
    move-object/from16 v71, v36

    move/from16 v36, v11

    move-object/from16 v11, v71

    .line 587
    :try_start_75
    invoke-virtual {v11, v5, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_50
    .catchall {:try_start_75 .. :try_end_75} :catchall_38

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6b

    move-object/from16 v31, v1

    move-wide/from16 v45, v6

    move-wide/from16 v47, v9

    move/from16 v7, v53

    move/from16 v1, v57

    move-object/from16 v6, v60

    const/high16 v30, 0x447a0000    # 1000.0f

    move v9, v3

    const/4 v3, 0x0

    :goto_8a
    move/from16 v71, v39

    move-object/from16 v39, v8

    move/from16 v8, v71

    goto/16 :goto_9c

    :cond_6b
    const/4 v3, -0x3

    if-ne v2, v3, :cond_6d

    .line 591
    :try_start_76
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move-wide/from16 v45, v6

    const/16 v6, 0x15

    if-ge v3, v6, :cond_6c

    .line 592
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_6c
    move/from16 v3, p15

    move-object/from16 v31, v1

    move-wide/from16 v47, v9

    move/from16 v7, v53

    move/from16 v1, v57

    move-object/from16 v6, v60

    :goto_8b
    const/4 v9, -0x1

    const/high16 v30, 0x447a0000    # 1000.0f

    goto :goto_8a

    :catchall_2a
    move-exception v0

    move/from16 v7, p7

    move/from16 v14, p9

    move-object v2, v0

    move v6, v4

    :goto_8c
    move-wide/from16 v47, v9

    move/from16 v1, v18

    goto/16 :goto_7d

    :catch_39
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    :goto_8d
    move-wide/from16 v47, v9

    :goto_8e
    move/from16 v1, v18

    goto/16 :goto_4e

    :cond_6d
    move-wide/from16 v45, v6

    const/4 v3, -0x2

    if-ne v2, v3, :cond_71

    .line 595
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v6, -0x5

    if-ne v4, v6, :cond_70

    if-eqz v3, :cond_70

    .line 597
    iget-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_39
    .catchall {:try_start_76 .. :try_end_76} :catchall_2a

    const/4 v7, 0x0

    :try_start_77
    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_3c
    .catchall {:try_start_77 .. :try_end_77} :catchall_2a

    move-object/from16 v7, v35

    .line 598
    :try_start_78
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_3b
    .catchall {:try_start_78 .. :try_end_78} :catchall_2b

    move/from16 v31, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6f

    move-object/from16 v6, v60

    .line 599
    :try_start_79
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v35, v7

    const-string v7, "csd-1"

    .line 600
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 601
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_3a
    .catchall {:try_start_79 .. :try_end_79} :catchall_27

    add-int/2addr v4, v3

    move/from16 v51, v4

    goto :goto_8f

    :catch_3a
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move-wide/from16 v47, v9

    move/from16 v1, v18

    move/from16 v6, v31

    goto/16 :goto_4e

    :cond_6e
    move/from16 v31, v6

    :cond_6f
    move-object/from16 v35, v7

    move-object/from16 v6, v60

    :goto_8f
    move/from16 v4, v31

    goto :goto_90

    :catchall_2b
    move-exception v0

    move/from16 v31, v6

    move/from16 v7, p7

    move/from16 v14, p9

    move-object v2, v0

    goto :goto_8c

    :catch_3b
    move-exception v0

    move/from16 v31, v6

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    goto :goto_8d

    :catch_3c
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    move v3, v7

    move-wide/from16 v47, v9

    goto/16 :goto_61

    :cond_70
    move-object/from16 v6, v60

    :goto_90
    move/from16 v3, p15

    move-object/from16 v31, v1

    move-wide/from16 v47, v9

    move/from16 v7, v53

    move/from16 v1, v57

    goto/16 :goto_8b

    :cond_71
    move-object/from16 v6, v60

    if-ltz v2, :cond_9d

    .line 608
    :try_start_7a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_50
    .catchall {:try_start_7a .. :try_end_7a} :catchall_38

    const/16 v7, 0x15

    if-ge v3, v7, :cond_72

    .line 609
    :try_start_7b
    aget-object v3, v1, v2
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_39
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2a

    goto :goto_91

    .line 611
    :cond_72
    :try_start_7c
    invoke-virtual {v11, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_91
    if-eqz v3, :cond_9c

    .line 616
    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_50
    .catchall {:try_start_7c .. :try_end_7c} :catchall_38

    move-object/from16 v31, v1

    const/4 v1, 0x1

    if-le v7, v1, :cond_7f

    .line 617
    :try_start_7d
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_42
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2c

    and-int/lit8 v39, v1, 0x2

    if-nez v39, :cond_7b

    if-eqz v51, :cond_73

    and-int/lit8 v39, v1, 0x1

    if-eqz v39, :cond_73

    move-wide/from16 v47, v9

    .line 619
    :try_start_7e
    iget v9, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v9, v9, v51

    iput v9, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v7, v7, v51

    .line 620
    iput v7, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_92

    :catch_3d
    move-exception v0

    goto/16 :goto_99

    :cond_73
    move-wide/from16 v47, v9

    :goto_92
    if-eqz v52, :cond_77

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_77

    .line 623
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v9, 0x64

    if-le v1, v9, :cond_76

    .line 624
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v9, [B

    .line 626
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_93
    const/16 v9, 0x60

    if-ge v7, v9, :cond_76

    .line 629
    aget-byte v9, v1, v7

    if-nez v9, :cond_74

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_74

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, v1, v9

    if-nez v9, :cond_74

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, v1, v9

    move-object/from16 v39, v1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_75

    add-int/lit8 v10, v10, 0x1

    if-le v10, v1, :cond_75

    .line 632
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, v7

    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 633
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v7

    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_3d
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2d

    goto :goto_94

    :cond_74
    move-object/from16 v39, v1

    :cond_75
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v39

    const/16 v9, 0x64

    goto :goto_93

    :cond_76
    :goto_94
    const/16 v52, 0x0

    .line 641
    :cond_77
    :try_start_7f
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v3, v5, v7}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v19, 0x0

    cmp-long v1, v9, v19

    if-eqz v1, :cond_79

    .line 643
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_3e
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2d

    if-eqz v1, :cond_79

    move-object/from16 v39, v8

    .line 644
    :try_start_80
    iget-wide v7, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v60, v7, v12

    cmp-long v3, v60, v54

    if-lez v3, :cond_78

    sub-long v54, v7, v12

    :cond_78
    move-wide/from16 v7, v54

    long-to-float v3, v7

    const/high16 v30, 0x447a0000    # 1000.0f

    div-float v3, v3, v30

    div-float v3, v3, v28

    .line 647
    invoke-interface {v1, v9, v10, v3}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v54, v7

    goto :goto_95

    :cond_79
    move-object/from16 v39, v8

    const/high16 v30, 0x447a0000    # 1000.0f

    :cond_7a
    :goto_95
    move/from16 v7, v53

    move/from16 v1, v57

    goto/16 :goto_9a

    :catch_3e
    move-exception v0

    move-object/from16 v39, v8

    goto/16 :goto_99

    :cond_7b
    move-object/from16 v39, v8

    move-wide/from16 v47, v9

    const/4 v1, -0x5

    const/high16 v30, 0x447a0000    # 1000.0f

    if-ne v4, v1, :cond_7a

    .line 651
    new-array v1, v7, [B

    .line 652
    iget v8, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v7

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 653
    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 654
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 657
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_96
    if-ltz v3, :cond_7d

    const/4 v8, 0x3

    if-le v3, v8, :cond_7d

    .line 659
    aget-byte v9, v1, v3

    if-ne v9, v7, :cond_7c

    add-int/lit8 v9, v3, -0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_7c

    add-int/lit8 v9, v3, -0x2

    aget-byte v9, v1, v9

    if-nez v9, :cond_7c

    add-int/lit8 v9, v3, -0x3

    aget-byte v10, v1, v9

    if-nez v10, :cond_7c

    .line 660
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 661
    iget v10, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_41
    .catchall {:try_start_80 .. :try_end_80} :catchall_2d

    const/4 v7, 0x0

    .line 662
    :try_start_81
    invoke-virtual {v3, v1, v7, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 663
    iget v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v9

    invoke-virtual {v10, v1, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_3f
    .catchall {:try_start_81 .. :try_end_81} :catchall_2d

    goto :goto_97

    :catch_3f
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    move v3, v7

    goto :goto_98

    :cond_7c
    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x1

    goto :goto_96

    :cond_7d
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_97
    move/from16 v7, v53

    move/from16 v1, v57

    .line 671
    :try_start_82
    invoke-static {v14, v1, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    if-eqz v3, :cond_7e

    if-eqz v10, :cond_7e

    .line 673
    invoke-virtual {v8, v6, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v3, "csd-1"

    .line 674
    invoke-virtual {v8, v3, v10}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 676
    :cond_7e
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_41
    .catchall {:try_start_82 .. :try_end_82} :catchall_2d

    const/4 v9, 0x0

    :try_start_83
    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_40
    .catchall {:try_start_83 .. :try_end_83} :catchall_2d

    move v4, v3

    goto :goto_9a

    :catch_40
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    move v3, v9

    :goto_98
    move/from16 v1, v18

    move-object/from16 v8, v39

    goto/16 :goto_cd

    :catch_41
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    move/from16 v1, v18

    move-object/from16 v8, v39

    goto/16 :goto_4e

    :catchall_2c
    move-exception v0

    move-wide/from16 v47, v9

    goto/16 :goto_9e

    :catch_42
    move-exception v0

    move-object/from16 v39, v8

    move-wide/from16 v47, v9

    :goto_99
    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    goto/16 :goto_8e

    :cond_7f
    move-object/from16 v39, v8

    move-wide/from16 v47, v9

    move/from16 v7, v53

    move/from16 v1, v57

    const/high16 v30, 0x447a0000    # 1000.0f

    .line 679
    :goto_9a
    :try_start_84
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_4e
    .catchall {:try_start_84 .. :try_end_84} :catchall_36

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_80

    const/4 v3, 0x1

    goto :goto_9b

    :cond_80
    const/4 v3, 0x0

    :goto_9b
    const/4 v8, 0x0

    .line 680
    :try_start_85
    invoke-virtual {v11, v2, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_4d
    .catchall {:try_start_85 .. :try_end_85} :catchall_35

    move v8, v3

    const/4 v9, -0x1

    move/from16 v3, p15

    :goto_9c
    if-eq v2, v9, :cond_81

    move/from16 v2, p10

    move/from16 v57, v1

    move-object/from16 v60, v6

    move/from16 v53, v7

    move-object/from16 v1, v31

    move-wide/from16 v6, v45

    move-wide/from16 v9, v47

    move-object/from16 v71, v39

    move/from16 v39, v8

    move-object/from16 v8, v71

    move/from16 v72, v36

    move-object/from16 v36, v11

    move/from16 v11, v72

    goto/16 :goto_87

    :cond_81
    if-nez v50, :cond_9b

    move/from16 v57, v1

    move-object/from16 v10, v39

    const-wide/16 v1, 0x9c4

    .line 687
    :try_start_86
    invoke-virtual {v10, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_4c
    .catchall {:try_start_86 .. :try_end_86} :catchall_34

    const/4 v1, -0x1

    if-ne v9, v1, :cond_82

    move/from16 v39, v3

    move/from16 v53, v4

    move-object v2, v5

    move-object/from16 v60, v6

    move/from16 v61, v7

    move-object/from16 v49, v14

    move-wide/from16 v6, v45

    move-object/from16 v1, v58

    const/16 v27, 0x0

    move/from16 v14, p9

    goto/16 :goto_b6

    :cond_82
    const/4 v2, -0x3

    if-ne v9, v2, :cond_84

    :cond_83
    :goto_9d
    move/from16 v39, v3

    move/from16 v53, v4

    move-object v2, v5

    move-object/from16 v60, v6

    move/from16 v61, v7

    move-object/from16 v49, v14

    move-wide/from16 v5, v45

    move-object/from16 v1, v58

    move/from16 v14, p9

    goto/16 :goto_b5

    :cond_84
    const/4 v2, -0x2

    if-ne v9, v2, :cond_85

    .line 693
    :try_start_87
    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 694
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_83

    .line 695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newFormat = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_43
    .catchall {:try_start_87 .. :try_end_87} :catchall_2d

    goto :goto_9d

    :catchall_2d
    move-exception v0

    :goto_9e
    move/from16 v7, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object v2, v0

    move v6, v4

    move/from16 v1, v18

    goto/16 :goto_32

    :catch_43
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    move-object v8, v10

    goto/16 :goto_8e

    :cond_85
    if-ltz v9, :cond_9a

    .line 700
    :try_start_88
    iget v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_86

    const/16 p15, 0x1

    goto :goto_9f

    :cond_86
    const/16 p15, 0x0

    .line 701
    :goto_9f
    iget-wide v1, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_4c
    .catchall {:try_start_88 .. :try_end_88} :catchall_34

    const-wide/16 v19, 0x0

    cmp-long v39, v47, v19

    if-lez v39, :cond_87

    cmp-long v39, v1, v47

    if-ltz v39, :cond_87

    move/from16 v39, v3

    .line 706
    :try_start_89
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_43
    .catchall {:try_start_89 .. :try_end_89} :catchall_2d

    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    const/16 v40, 0x1

    const/16 v50, 0x1

    goto :goto_a0

    :cond_87
    move/from16 v39, v3

    move/from16 v3, p15

    const-wide/16 v19, 0x0

    :goto_a0
    cmp-long v49, v23, v19

    if-ltz v49, :cond_8a

    move/from16 p15, v3

    .line 709
    :try_start_8a
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8b

    sub-long v60, v23, v12

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->abs(J)J

    move-result-wide v60
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_46
    .catchall {:try_start_8a .. :try_end_8a} :catchall_31

    const v3, 0xf4240

    move-object/from16 v49, v14

    move/from16 v14, p9

    :try_start_8b
    div-int/2addr v3, v14
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_45
    .catchall {:try_start_8b .. :try_end_8b} :catchall_30

    move/from16 v53, v4

    int-to-long v3, v3

    cmp-long v3, v60, v3

    if-lez v3, :cond_89

    const-wide/16 v3, 0x0

    cmp-long v40, v12, v3

    if-lez v40, :cond_88

    .line 711
    :try_start_8c
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_48
    .catchall {:try_start_8c .. :try_end_8c} :catchall_33

    const/4 v4, 0x0

    :try_start_8d
    invoke-virtual {v3, v12, v13, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_47
    .catchall {:try_start_8d .. :try_end_8d} :catchall_33

    move-object/from16 v60, v6

    move/from16 v61, v7

    const/4 v4, 0x0

    goto :goto_a1

    .line 713
    :cond_88
    :try_start_8e
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_48
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2f

    move-object/from16 v60, v6

    move/from16 v61, v7

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    :try_start_8f
    invoke-virtual {v3, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_47
    .catchall {:try_start_8f .. :try_end_8f} :catchall_32

    :goto_a1
    add-long v63, v45, v41

    .line 721
    :try_start_90
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, -0x5

    and-int/2addr v3, v6

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 722
    invoke-virtual {v10}, Landroid/media/MediaCodec;->flush()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_44
    .catchall {:try_start_90 .. :try_end_90} :catchall_2e

    move v3, v4

    move/from16 v40, v3

    move/from16 v50, v40

    move-wide/from16 v47, v23

    const/4 v7, 0x1

    const-wide/16 v19, 0x0

    move-wide/from16 v23, v21

    goto/16 :goto_a7

    :catchall_2e
    move-exception v0

    move/from16 v7, p7

    move/from16 v10, p8

    move-object v2, v0

    move/from16 v27, v4

    move/from16 v1, v18

    move-wide/from16 v47, v23

    move/from16 v6, v53

    move-wide/from16 v23, v21

    goto/16 :goto_d8

    :catch_44
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move v3, v4

    move-object v8, v10

    move/from16 v1, v18

    move-wide/from16 v47, v23

    move/from16 v6, v53

    move-wide/from16 v23, v21

    goto/16 :goto_cd

    :catchall_2f
    move-exception v0

    goto :goto_a3

    :cond_89
    move-object/from16 v60, v6

    move/from16 v61, v7

    const/4 v4, 0x0

    const/4 v6, -0x5

    goto :goto_a6

    :catchall_30
    move-exception v0

    goto :goto_a2

    :catch_45
    move-exception v0

    goto :goto_a5

    :catchall_31
    move-exception v0

    move/from16 v14, p9

    :goto_a2
    move/from16 v53, v4

    :goto_a3
    const/4 v4, 0x0

    :goto_a4
    move/from16 v7, p7

    move/from16 v10, p8

    move-object v2, v0

    move/from16 v27, v4

    move/from16 v1, v18

    move/from16 v6, v53

    goto/16 :goto_d8

    :catch_46
    move-exception v0

    move/from16 v14, p9

    :goto_a5
    move/from16 v53, v4

    goto/16 :goto_b3

    :cond_8a
    move/from16 p15, v3

    :cond_8b
    move/from16 v53, v4

    move-object/from16 v60, v6

    move/from16 v61, v7

    move-object/from16 v49, v14

    const/4 v4, 0x0

    const/4 v6, -0x5

    move/from16 v14, p9

    :goto_a6
    move/from16 v3, p15

    move v7, v4

    const-wide/16 v19, 0x0

    :goto_a7
    cmp-long v27, v67, v19

    if-lez v27, :cond_8c

    move/from16 p15, v7

    .line 725
    :try_start_91
    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v6, v6, v67

    cmp-long v6, v6, v33

    if-gez v6, :cond_8d

    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_47
    .catchall {:try_start_91 .. :try_end_91} :catchall_32

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8d

    move v3, v4

    goto :goto_a8

    :catchall_32
    move-exception v0

    goto :goto_a4

    :catch_47
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move v3, v4

    move-object v8, v10

    move/from16 v1, v18

    move/from16 v6, v53

    goto/16 :goto_cd

    :cond_8c
    move/from16 p15, v7

    :cond_8d
    :goto_a8
    const-wide/16 v6, 0x0

    cmp-long v27, v23, v6

    move-object/from16 v65, v5

    if-ltz v27, :cond_8e

    move-wide/from16 v4, v23

    goto :goto_a9

    :cond_8e
    move-wide v4, v12

    :goto_a9
    cmp-long v66, v4, v6

    if-lez v66, :cond_92

    cmp-long v6, v69, v21

    if-nez v6, :cond_92

    cmp-long v1, v1, v4

    if-gez v1, :cond_90

    .line 732
    :try_start_92
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8f

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " present time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v65

    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_aa

    :cond_8f
    move-object/from16 v2, v65

    :goto_aa
    const/4 v3, 0x0

    goto :goto_ab

    :cond_90
    move-object/from16 v2, v65

    .line 736
    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v6, -0x80000000

    cmp-long v1, v45, v6

    if-eqz v1, :cond_91

    sub-long v63, v63, v4

    :cond_91
    move-wide/from16 v69, v4

    goto :goto_ab

    :catch_48
    move-exception v0

    goto/16 :goto_b3

    :cond_92
    move-object/from16 v2, v65

    :goto_ab
    if-eqz p15, :cond_93

    move-wide/from16 v69, v21

    goto :goto_ac

    :cond_93
    cmp-long v1, v23, v21

    if-nez v1, :cond_94

    const-wide/16 v5, 0x0

    cmp-long v1, v63, v5

    if-eqz v1, :cond_94

    .line 746
    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v5, v5, v63

    iput-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_48
    .catchall {:try_start_92 .. :try_end_92} :catchall_33

    .line 748
    :cond_94
    :try_start_93
    invoke-virtual {v10, v9, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_ac
    if-eqz v3, :cond_97

    .line 751
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_4a
    .catchall {:try_start_93 .. :try_end_93} :catchall_33

    move-wide/from16 v5, v45

    if-ltz v27, :cond_95

    .line 753
    :try_start_94
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_48
    .catchall {:try_start_94 .. :try_end_94} :catchall_33

    goto :goto_ad

    :cond_95
    move-wide v6, v5

    .line 757
    :goto_ad
    :try_start_95
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_49
    .catchall {:try_start_95 .. :try_end_95} :catchall_33

    const/4 v1, 0x0

    goto :goto_ae

    :catch_49
    move-exception v0

    move-object v1, v0

    .line 760
    :try_start_96
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    :goto_ae
    if-nez v1, :cond_96

    .line 763
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V

    move-wide/from16 v45, v3

    .line 764
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_4a
    .catchall {:try_start_96 .. :try_end_96} :catchall_33

    const-wide/16 v65, 0x3e8

    mul-long v3, v3, v65

    move-object/from16 v1, v58

    :try_start_97
    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 765
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_af

    :cond_96
    move-wide/from16 v45, v3

    move-object/from16 v1, v58

    :goto_af
    move-wide/from16 v67, v45

    goto :goto_b0

    :cond_97
    move-wide/from16 v5, v45

    move-object/from16 v1, v58

    move-wide v6, v5

    .line 768
    :goto_b0
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_99

    .line 770
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_98

    const-string v3, "decoder stream end"

    .line 771
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 773
    :cond_98
    invoke-virtual {v11}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/16 v27, 0x0

    goto/16 :goto_b6

    :cond_99
    move/from16 v27, p10

    goto/16 :goto_b6

    :catch_4a
    move-exception v0

    goto :goto_b2

    :cond_9a
    move/from16 v14, p9

    move/from16 v53, v4

    move-object/from16 v1, v58

    .line 698
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_4b
    .catchall {:try_start_97 .. :try_end_97} :catchall_33

    :catchall_33
    move-exception v0

    goto :goto_b1

    :catch_4b
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move-object/from16 v58, v1

    goto :goto_b4

    :catchall_34
    move-exception v0

    move/from16 v14, p9

    move/from16 v53, v4

    :goto_b1
    move/from16 v7, p7

    move/from16 v10, p8

    move-object v2, v0

    move/from16 v1, v18

    move/from16 v6, v53

    goto/16 :goto_32

    :catch_4c
    move-exception v0

    move/from16 v14, p9

    move/from16 v53, v4

    :goto_b2
    move-object/from16 v1, v58

    :goto_b3
    move-object/from16 v38, p16

    move-object v2, v0

    :goto_b4
    move-object v8, v10

    move/from16 v1, v18

    move/from16 v6, v53

    goto/16 :goto_4e

    :cond_9b
    move/from16 v57, v1

    move/from16 v53, v4

    move-object v2, v5

    move-object/from16 v60, v6

    move/from16 v61, v7

    move-object/from16 v49, v14

    move-object/from16 v10, v39

    move-wide/from16 v5, v45

    move-object/from16 v1, v58

    move/from16 v14, p9

    move/from16 v39, v3

    :goto_b5
    move/from16 v27, p10

    move-wide v6, v5

    :goto_b6
    move-object/from16 v58, v1

    move-object v5, v2

    move/from16 v2, v27

    move-object/from16 v1, v31

    move/from16 v3, v39

    move-object/from16 v14, v49

    move/from16 v4, v53

    move/from16 v53, v61

    move/from16 v39, v8

    move-object v8, v10

    move-wide/from16 v9, v47

    move/from16 v71, v36

    move-object/from16 v36, v11

    move/from16 v11, v71

    goto/16 :goto_87

    :catchall_35
    move-exception v0

    move/from16 v14, p9

    move v3, v8

    goto/16 :goto_ba

    :catch_4d
    move-exception v0

    move/from16 v14, p9

    move v3, v8

    move-object/from16 v10, v39

    move-object/from16 v1, v58

    goto :goto_b7

    :catchall_36
    move-exception v0

    move/from16 v14, p9

    goto/16 :goto_b9

    :catch_4e
    move-exception v0

    move/from16 v14, p9

    move-object/from16 v10, v39

    move-object/from16 v1, v58

    const/4 v3, 0x0

    :goto_b7
    move-object/from16 v38, p16

    move-object v2, v0

    goto :goto_b8

    :cond_9c
    move/from16 v14, p9

    move-wide/from16 v47, v9

    move-object/from16 v1, v58

    const/4 v3, 0x0

    move-object v10, v8

    .line 614
    :try_start_98
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9d
    move/from16 v14, p9

    move-wide/from16 v47, v9

    move-object/from16 v1, v58

    const/4 v3, 0x0

    move-object v10, v8

    .line 605
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_98} :catch_4f
    .catchall {:try_start_98 .. :try_end_98} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_ba

    :catch_4f
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move-object/from16 v58, v1

    :goto_b8
    move v6, v4

    move-object v8, v10

    goto/16 :goto_61

    :catch_50
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, v9

    goto :goto_bb

    :catchall_38
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, v9

    :goto_b9
    const/4 v3, 0x0

    :goto_ba
    move/from16 v7, p7

    move/from16 v10, p8

    move-object v2, v0

    move/from16 v27, v3

    move v6, v4

    move/from16 v1, v18

    goto/16 :goto_d8

    :catch_51
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v47, v9

    move-object/from16 v11, v36

    :goto_bb
    move-object/from16 v1, v58

    const/4 v3, 0x0

    move-object v10, v8

    move-object/from16 v38, p16

    move-object v2, v0

    move v6, v4

    goto/16 :goto_61

    :catchall_39
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v61, v9

    const/4 v3, 0x0

    move/from16 v7, p7

    move/from16 v10, p8

    move-object v2, v0

    move/from16 v27, v3

    move/from16 v1, v18

    move/from16 v6, v31

    move-wide/from16 v47, v61

    goto/16 :goto_d8

    :catch_52
    move-exception v0

    move/from16 v14, p9

    move-object/from16 p16, v6

    move-wide/from16 v61, v9

    move-object/from16 v11, v36

    move/from16 v44, v56

    const/4 v3, 0x0

    move-object/from16 v56, v1

    move-object v10, v8

    move-object/from16 v1, v58

    move-object/from16 v38, p16

    move-object v2, v0

    move/from16 v1, v18

    move/from16 v6, v31

    :goto_bc
    move-wide/from16 v47, v61

    goto/16 :goto_cd

    :catchall_3a
    move-exception v0

    move/from16 v14, p9

    goto/16 :goto_bf

    :catch_53
    move-exception v0

    move/from16 v14, p9

    move-object/from16 p16, v6

    move-object v2, v8

    move-object/from16 v11, v36

    move/from16 v44, v56

    const/4 v3, 0x0

    move-object/from16 v56, v1

    move-object/from16 v1, v58

    move-object/from16 v38, p16

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    goto/16 :goto_c1

    :catch_54
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v9, p14

    move-object v2, v8

    move-object/from16 v11, v36

    move/from16 v44, v56

    const/4 v3, 0x0

    goto :goto_bd

    :catchall_3b
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move v3, v10

    move-wide/from16 v9, p14

    goto/16 :goto_c2

    :catch_55
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-object v2, v8

    move v3, v10

    move-object/from16 v11, v36

    move/from16 v44, v56

    move-wide/from16 v9, p14

    :goto_bd
    move-object/from16 v56, v1

    move-object/from16 v1, v58

    goto :goto_be

    :catch_56
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v9, p14

    move-object/from16 v11, v36

    move-object/from16 v2, v55

    move/from16 v44, v56

    const/4 v3, 0x0

    move-object/from16 v56, v1

    move-object/from16 v1, v58

    move-object v8, v2

    :goto_be
    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    const/16 v38, 0x0

    goto :goto_c1

    :catchall_3c
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v9, p14

    :goto_bf
    const/4 v3, 0x0

    goto/16 :goto_c2

    :catch_57
    move-exception v0

    move/from16 v14, p9

    move-wide/from16 v12, p12

    move-wide/from16 v9, p14

    move-object/from16 v11, v36

    move-object/from16 v2, v55

    move/from16 v44, v56

    move-object/from16 v1, v58

    const/4 v3, 0x0

    goto :goto_c0

    :catch_58
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v26, v6

    move v14, v13

    move/from16 v44, v29

    move-object/from16 v11, v36

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move-object/from16 v58, v1

    :goto_c0
    move-object v8, v2

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    const/16 v38, 0x0

    const/16 v56, 0x0

    :goto_c1
    move-object v2, v0

    goto/16 :goto_cd

    :catch_59
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move-object v11, v3

    move-object v1, v5

    move-object/from16 v26, v6

    move v14, v13

    move/from16 v44, v29

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move-object v2, v0

    move-object/from16 v58, v1

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    const/4 v8, 0x0

    const/16 v38, 0x0

    const/16 v56, 0x0

    goto/16 :goto_cd

    :catch_5a
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move-object v11, v3

    goto :goto_c3

    :catchall_3d
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move-object/from16 v26, v6

    move v14, v13

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    :goto_c2
    move/from16 v7, p7

    move-object v2, v0

    move/from16 v27, v3

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    goto/16 :goto_c9

    :catch_5b
    move-exception v0

    move-object/from16 v11, p10

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    :goto_c3
    move-object/from16 v26, v6

    move v14, v13

    move/from16 v44, v29

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move-object v2, v0

    move-wide/from16 v47, v9

    move/from16 v1, v18

    const/4 v6, -0x5

    const/4 v8, 0x0

    goto/16 :goto_cc

    :catchall_3e
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move/from16 v7, p7

    move-object v2, v0

    move/from16 v27, v3

    move-wide/from16 v47, v9

    move/from16 v1, v18

    goto/16 :goto_c8

    :catch_5c
    move-exception v0

    move-object/from16 v11, p10

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    move/from16 v44, v29

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move-object v2, v0

    move-wide/from16 v47, v9

    move/from16 v1, v18

    goto :goto_c4

    :catchall_3f
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    const/4 v3, 0x0

    goto :goto_c5

    :catch_5d
    move-exception v0

    move-object/from16 v11, p10

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    move/from16 v44, v29

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move-object v2, v0

    move-wide/from16 v47, v9

    :goto_c4
    const/4 v6, -0x5

    const/4 v8, 0x0

    goto/16 :goto_cb

    :catchall_40
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v3, v6

    move v14, v13

    :goto_c5
    move-wide/from16 v12, p12

    goto :goto_c6

    :catch_5e
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v3, v6

    move v14, v13

    move/from16 v44, v29

    move-wide/from16 v12, p12

    goto :goto_ca

    :catchall_41
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    move-wide v12, v3

    const/4 v3, 0x0

    :goto_c6
    move/from16 v7, p7

    goto :goto_c7

    :catch_5f
    move-exception v0

    move-wide/from16 v9, p14

    move-wide/from16 v23, p16

    move v14, v13

    move/from16 v44, v29

    move-wide v12, v3

    const/4 v3, 0x0

    goto :goto_ca

    :catchall_42
    move-exception v0

    move-wide/from16 v9, p14

    move v14, v13

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move/from16 v7, p7

    move/from16 v1, p10

    move-wide/from16 v23, p16

    :goto_c7
    move-object v2, v0

    move/from16 v27, v3

    move-wide/from16 v47, v9

    :goto_c8
    const/4 v6, -0x5

    const/16 v26, 0x0

    :goto_c9
    move/from16 v10, p8

    goto/16 :goto_d8

    :catch_60
    move-exception v0

    move-wide/from16 v9, p14

    move/from16 v44, v4

    move v14, v13

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move/from16 v1, p10

    move-wide/from16 v23, p16

    :goto_ca
    move-object v2, v0

    move-wide/from16 v47, v9

    const/4 v6, -0x5

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_cb
    const/16 v26, 0x0

    :goto_cc
    const/16 v38, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    .line 783
    :goto_cd
    :try_start_99
    instance-of v4, v2, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_9e

    if-nez p21, :cond_9e

    const/4 v3, 0x1

    .line 786
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " framerate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_45

    move/from16 v5, p8

    :try_start_9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_44

    move/from16 v7, p7

    :try_start_9b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 787
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v4, v8

    move-object/from16 v36, v11

    const/16 v27, 0x1

    .line 791
    :goto_ce
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v8, v44

    invoke-virtual {v2, v8}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v4, :cond_9f

    .line 793
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 794
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_43

    :cond_9f
    move/from16 v37, v6

    move-object/from16 v2, v38

    move-object/from16 v6, v56

    move-object/from16 v38, v58

    goto :goto_d0

    :catchall_43
    move-exception v0

    goto :goto_cf

    :catchall_44
    move-exception v0

    move/from16 v7, p7

    goto :goto_cf

    :catchall_45
    move-exception v0

    move/from16 v7, p7

    move/from16 v5, p8

    :goto_cf
    move-object v2, v0

    move/from16 v27, v3

    goto/16 :goto_d7

    :cond_a0
    move/from16 v7, p7

    move/from16 v5, p8

    move-wide/from16 v9, p14

    move v14, v13

    const/4 v3, 0x0

    move-wide/from16 v12, p12

    move/from16 v1, p10

    move-wide/from16 v23, p16

    move/from16 v27, v3

    move-wide/from16 v47, v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v26, 0x0

    const/16 v36, 0x0

    const/16 v37, -0x5

    const/16 v38, 0x0

    :goto_d0
    if-eqz v6, :cond_a1

    .line 798
    :try_start_9c
    invoke-virtual {v6}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_d1

    :catchall_46
    move-exception v0

    move-object v2, v0

    move/from16 v27, v3

    move v10, v5

    move/from16 v6, v37

    goto/16 :goto_d8

    :cond_a1
    :goto_d1
    if-eqz v38, :cond_a2

    .line 801
    invoke-virtual/range {v38 .. v38}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_a2
    if-eqz v36, :cond_a3

    .line 804
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaCodec;->stop()V

    .line 805
    invoke-virtual/range {v36 .. v36}, Landroid/media/MediaCodec;->release()V

    :cond_a3
    if-eqz v2, :cond_a4

    .line 808
    invoke-virtual {v2}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 810
    :cond_a4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_46

    move/from16 v21, v7

    move-object/from16 v38, v26

    move/from16 v2, v27

    move/from16 v6, v37

    move/from16 v27, v3

    .line 820
    :goto_d2
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_a5

    .line 821
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 823
    :cond_a5
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_a6

    .line 825
    :try_start_9d
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 826
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_47

    goto :goto_d3

    :catchall_47
    move-exception v0

    move-object v3, v0

    .line 828
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_d3
    move v11, v1

    move/from16 v25, v2

    move v9, v5

    move/from16 v8, v21

    move-object/from16 v1, v38

    goto/16 :goto_da

    :catchall_48
    move-exception v0

    move-wide/from16 v12, p12

    move v3, v2

    move v14, v5

    move v7, v9

    move v5, v10

    move-object v15, v11

    goto :goto_d6

    :catchall_49
    move-exception v0

    move-wide/from16 v12, p12

    move v14, v5

    move v7, v9

    move v5, v10

    move-object v15, v11

    goto :goto_d5

    :catchall_4a
    move-exception v0

    move-wide/from16 v12, p12

    goto :goto_d4

    :catchall_4b
    move-exception v0

    move-wide v12, v4

    :goto_d4
    move v14, v8

    move v7, v9

    move v5, v10

    :goto_d5
    const/4 v3, 0x0

    goto :goto_d6

    :catchall_4c
    move-exception v0

    move v14, v8

    move v7, v9

    move v3, v13

    move-wide v12, v4

    move v5, v10

    :goto_d6
    move-wide/from16 v9, p14

    move/from16 v1, p10

    move-wide/from16 v23, p16

    move-object v2, v0

    move/from16 v27, v3

    move-wide/from16 v47, v9

    const/4 v6, -0x5

    const/16 v26, 0x0

    :goto_d7
    move v10, v5

    .line 817
    :goto_d8
    :try_start_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framerate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 818
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_4e

    .line 820
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_a7

    .line 821
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 823
    :cond_a7
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v2, :cond_a8

    .line 825
    :try_start_9f
    invoke-virtual {v2}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 826
    iget-object v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v2

    iput-wide v2, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_4d

    goto :goto_d9

    :catchall_4d
    move-exception v0

    move-object v2, v0

    .line 828
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a8
    :goto_d9
    move v11, v1

    move v8, v7

    move v9, v10

    move-object/from16 v1, v26

    const/16 v25, 0x1

    :goto_da
    if-eqz v27, :cond_a9

    const/16 v22, 0x1

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

    move-wide/from16 v15, v47

    move-wide/from16 v17, v23

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    .line 834
    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z

    move-result v1

    return v1

    .line 841
    :cond_a9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 842
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_aa

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compression completed time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " needCompress="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " file size="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoder_name="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_aa
    return v25

    :catchall_4e
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 820
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_ab

    .line 821
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 823
    :cond_ab
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_ac

    .line 825
    :try_start_a0
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 826
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_4f

    goto :goto_db

    :catchall_4f
    move-exception v0

    move-object v3, v0

    .line 828
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 831
    :cond_ac
    :goto_db
    throw v2
.end method

.method private static createFragmentShader(IIIIZ)Ljava/lang/String;
    .locals 3

    .line 1016
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

    .line 1018
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1021
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    dest size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   kernelRadius "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string p2, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string p3, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_1

    .line 1024
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method private isMediatekAvcEncoder(Landroid/media/MediaCodec;)Z
    .locals 1

    .line 850
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

    .line 855
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 856
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

    .line 866
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 867
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 868
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 870
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 872
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 876
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 878
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

    .line 882
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 883
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "mime"

    .line 885
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 888
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 890
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

    .line 892
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 895
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 897
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 904
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 907
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 909
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 912
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 916
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

    .line 919
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 920
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

    .line 930
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 931
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 934
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 936
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 937
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

    .line 940
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

    .line 943
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 944
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 945
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 946
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

    .line 955
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 958
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 962
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

    .line 964
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 966
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

    .line 967
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 968
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 969
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 971
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 972
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

    .line 975
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 983
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

    .line 988
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

    .line 995
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 998
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_23
    return-wide v20
.end method


# virtual methods
.method public convertVideo(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLorg/telegram/messenger/MediaController$VideoConvertorListener;)Z
    .locals 29
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
            ")Z"
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

    move-object/from16 v28, v0

    move-object/from16 v1, p27

    .line 58
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    const/16 v21, 0x0

    move-object/from16 v1, p1

    .line 59
    invoke-direct/range {v0 .. v27}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z

    move-result v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method
