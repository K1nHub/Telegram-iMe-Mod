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

    .line 987
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 988
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

    const-wide/16 v18, -0x1

    const/4 v6, 0x0

    .line 89
    :try_start_0
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 90
    new-instance v14, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v14}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v24, v13

    move-object/from16 v13, p2

    .line 91
    invoke-virtual {v14, v13}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 92
    invoke-virtual {v14, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 93
    invoke-virtual {v14, v9, v10}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 94
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move/from16 v13, p4

    invoke-virtual {v6, v14, v13}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v6

    iput-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    long-to-float v6, v2

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float v26, v6, v14

    const-wide/16 v27, 0x3e8

    mul-long v4, v2, v27

    .line 102
    iput-wide v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 103
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_46

    const-string v5, "csd-0"

    const-string v4, "prepend-sps-pps-to-idr-frames"

    const v6, 0xe1000

    const-string/jumbo v15, "video/avc"

    if-eqz p25, :cond_2d

    const-wide/16 v22, 0x0

    cmp-long v18, p16, v22

    if-ltz v18, :cond_2

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v6, v26, v6

    if-gtz v6, :cond_0

    const v6, 0x27ac40

    goto :goto_0

    :cond_0
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, v26, v6

    if-gtz v6, :cond_1

    const v6, 0x2191c0

    goto :goto_0

    :cond_1
    const v6, 0x17cdc0

    goto :goto_0

    :cond_2
    if-gtz v7, :cond_3

    :goto_0
    move v7, v6

    .line 123
    :cond_3
    :try_start_1
    rem-int/lit8 v6, v9, 0x10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    const/high16 v18, 0x41800000    # 16.0f

    if-eqz v6, :cond_5

    .line 124
    :try_start_2
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_4

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changing width from "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v14, v9

    div-float v14, v14, v18

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    mul-int/lit8 v14, v14, 0x10

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    int-to-float v6, v9

    div-float v6, v6, v18

    .line 127
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit8 v6, v6, 0x10

    move v14, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v8

    goto/16 :goto_23

    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    move/from16 v38, v7

    goto/16 :goto_26

    :cond_5
    move v14, v9

    .line 129
    :goto_1
    :try_start_3
    rem-int/lit8 v6, v10, 0x10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v6, :cond_7

    .line 130
    :try_start_4
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_6

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changing height from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v9, v10

    div-float v9, v9, v18

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    int-to-float v6, v10

    div-float v6, v6, v18

    .line 133
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    mul-int/lit8 v6, v6, 0x10

    move v10, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v8

    goto/16 :goto_24

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    move/from16 v38, v7

    goto/16 :goto_27

    .line 136
    :cond_7
    :goto_2
    :try_start_5
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v6, :cond_8

    .line 137
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo encoder "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " duration = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 140
    :cond_8
    :try_start_7
    invoke-static {v15, v14, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v9, "color-format"

    const v1, 0x7f000789

    .line 141
    invoke-virtual {v6, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    .line 142
    invoke-virtual {v6, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v9, 0x1e

    .line 143
    invoke-virtual {v6, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v9, 0x1

    .line 144
    invoke-virtual {v6, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 146
    invoke-static {v15}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    const/4 v2, 0x0

    .line 147
    :try_start_8
    invoke-virtual {v1, v6, v2, v2, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 148
    new-instance v6, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 149
    :try_start_9
    invoke-virtual {v6}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 150
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 152
    new-instance v18, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    const/16 v19, 0x0

    int-to-float v3, v8

    const/16 v21, 0x1

    move-object v2, v1

    move-object/from16 v1, v18

    move-object/from16 p7, v2

    move-object/from16 v2, p22

    move/from16 v32, v3

    move-object/from16 v3, p1

    move-object/from16 v33, v4

    move-object/from16 v4, p23

    move-object/from16 v34, v5

    move-object/from16 v5, p24

    move-object v9, v6

    move-object/from16 v6, v19

    move/from16 v38, v7

    move v7, v14

    move v8, v10

    move-object/from16 v39, v9

    move/from16 v9, p5

    move/from16 v40, v10

    move/from16 v10, p6

    move/from16 v11, p3

    move/from16 v12, v32

    move/from16 v19, v14

    move-object/from16 v14, v24

    move/from16 v13, v21

    :try_start_a
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 156
    :try_start_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/16 v2, 0x15

    if-ge v1, v2, :cond_9

    .line 157
    :try_start_c
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move/from16 v14, v19

    move/from16 v7, v38

    move/from16 v10, v40

    goto/16 :goto_24

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p7

    move-object v1, v0

    move/from16 v14, v19

    move/from16 v10, v40

    const/4 v13, -0x5

    goto/16 :goto_29

    :cond_9
    const/4 v1, 0x0

    .line 162
    :goto_3
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v13, -0x5

    :goto_4
    if-nez v6, :cond_28

    .line 165
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    xor-int/lit8 v7, v2, 0x1

    move v8, v6

    move v6, v7

    const/4 v7, 0x1

    :goto_5
    if-nez v6, :cond_b

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    move v6, v8

    goto :goto_4

    .line 170
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-eqz p21, :cond_c

    const-wide/16 v9, 0x55f0

    move-object/from16 v11, p7

    goto :goto_7

    :cond_c
    move-object/from16 v11, p7

    const-wide/16 v9, 0x9c4

    .line 171
    :goto_7
    :try_start_f
    invoke-virtual {v11, v14, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    move-object/from16 v12, p0

    move/from16 v21, v4

    move/from16 p7, v6

    move v6, v8

    move-object/from16 v8, v34

    const/4 v7, 0x0

    move v4, v2

    move-object v2, v1

    move v1, v10

    move/from16 v10, v40

    goto/16 :goto_19

    :cond_d
    const/4 v10, -0x3

    if-ne v9, v10, :cond_f

    .line 175
    :try_start_10
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v10, v12, :cond_e

    .line 176
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_e
    move-object/from16 v12, p0

    move/from16 v21, v4

    move/from16 p7, v6

    move v6, v8

    move-object/from16 v8, v34

    :goto_8
    move/from16 v10, v40

    move v4, v2

    move-object v2, v1

    :goto_9
    const/4 v1, -0x1

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v5, v13

    move/from16 v14, v19

    move/from16 v7, v38

    move/from16 v10, v40

    goto/16 :goto_4b

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    :goto_a
    move-object v1, v0

    move/from16 v14, v19

    move/from16 v10, v40

    goto/16 :goto_29

    :cond_f
    const/4 v10, -0x2

    if-ne v9, v10, :cond_14

    .line 179
    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 180
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_10

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p7, v6

    const-string v6, "photo encoder new format "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_b

    :cond_10
    move/from16 p7, v6

    :goto_b
    const/4 v6, -0x5

    if-ne v13, v6, :cond_13

    if-eqz v10, :cond_13

    move-object/from16 v12, p0

    .line 184
    :try_start_11
    iget-object v6, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move/from16 p8, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v10, v8}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13

    move-object/from16 v6, v33

    .line 185
    invoke-virtual {v10, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual {v10, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v33, v6

    const/4 v6, 0x1

    if-ne v8, v6, :cond_12

    move-object/from16 v8, v34

    .line 186
    invoke-virtual {v10, v8}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v6, "csd-1"

    .line 187
    invoke-virtual {v10, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 188
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    add-int/2addr v3, v6

    goto :goto_d

    :cond_11
    move-object/from16 v33, v6

    :cond_12
    :goto_c
    move-object/from16 v8, v34

    goto :goto_d

    :cond_13
    move-object/from16 v12, p0

    move/from16 p8, v8

    goto :goto_c

    :goto_d
    move/from16 v6, p8

    move/from16 v21, v4

    goto/16 :goto_8

    :cond_14
    move-object/from16 v12, p0

    move/from16 p7, v6

    move-object/from16 v8, v34

    if-ltz v9, :cond_27

    .line 195
    :try_start_12
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    const/16 v10, 0x15

    if-ge v6, v10, :cond_15

    .line 196
    :try_start_13
    aget-object v6, v1, v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v5, v13

    move/from16 v14, v19

    move/from16 v7, v38

    move/from16 v10, v40

    goto/16 :goto_30

    :catch_4
    move-exception v0

    goto/16 :goto_a

    .line 198
    :cond_15
    :try_start_14
    invoke-virtual {v11, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_e
    if-eqz v6, :cond_26

    .line 203
    :try_start_15
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move-object/from16 p8, v1

    const/4 v1, 0x1

    if-le v10, v1, :cond_21

    .line 204
    :try_start_16
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    and-int/lit8 v21, v1, 0x2

    if-nez v21, :cond_1d

    if-eqz v3, :cond_16

    and-int/lit8 v21, v1, 0x1

    if-eqz v21, :cond_16

    move/from16 p10, v7

    .line 206
    :try_start_17
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v3

    iput v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v10, v3

    .line 207
    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_f

    :cond_16
    move/from16 p10, v7

    :goto_f
    if-eqz v5, :cond_1a

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    .line 210
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v7, 0x64

    if-le v1, v7, :cond_19

    .line 211
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v7, [B

    .line 213
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_10
    const/16 v7, 0x60

    if-ge v5, v7, :cond_19

    .line 216
    aget-byte v7, v1, v5

    if-nez v7, :cond_17

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_17

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    if-nez v7, :cond_17

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v1, v7

    move-object/from16 v21, v1

    const/4 v1, 0x1

    if-ne v7, v1, :cond_18

    add-int/lit8 v10, v10, 0x1

    if-le v10, v1, :cond_18

    .line 219
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, v5

    iput v1, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 220
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v5

    iput v1, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_11

    :cond_17
    move-object/from16 v21, v1

    :cond_18
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v21

    const/16 v7, 0x64

    goto :goto_10

    :cond_19
    :goto_11
    const/4 v5, 0x0

    .line 228
    :cond_1a
    iget-object v1, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move v10, v5

    const/4 v7, 0x1

    invoke-virtual {v1, v13, v6, v14, v7}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v5

    move v7, v3

    move v1, v4

    const-wide/16 v3, 0x0

    cmp-long v21, v5, v3

    if-eqz v21, :cond_1b

    .line 230
    iget-object v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v3, :cond_1b

    move/from16 v21, v1

    move v4, v2

    move/from16 v22, v7

    const-wide/16 v1, 0x0

    long-to-float v7, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v7, v1

    div-float v7, v7, v26

    .line 231
    invoke-interface {v3, v5, v6, v7}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_12

    :cond_1b
    move/from16 v21, v1

    move v4, v2

    move/from16 v22, v7

    :goto_12
    move v5, v10

    :cond_1c
    move/from16 v1, v19

    move/from16 v10, v40

    goto/16 :goto_17

    :cond_1d
    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 p10, v7

    const/4 v1, -0x5

    move v4, v2

    if-ne v13, v1, :cond_1c

    .line 235
    :try_start_18
    new-array v1, v10, [B

    .line 236
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v10

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 241
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_13
    if-ltz v2, :cond_1f

    const/4 v6, 0x3

    if-le v2, v6, :cond_1f

    .line 243
    :try_start_19
    aget-byte v6, v1, v2

    if-ne v6, v3, :cond_1e

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_1e

    add-int/lit8 v3, v2, -0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_1e

    add-int/lit8 v3, v2, -0x3

    aget-byte v6, v1, v3

    if-nez v6, :cond_1e

    .line 244
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 245
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x0

    .line 246
    invoke-virtual {v2, v1, v7, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v3

    invoke-virtual {v6, v1, v3, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_14

    :cond_1e
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    goto :goto_13

    :cond_1f
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_14
    move/from16 v1, v19

    move/from16 v10, v40

    .line 255
    :try_start_1a
    invoke-static {v15, v1, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v2, :cond_20

    if-eqz v6, :cond_20

    .line 257
    invoke-virtual {v3, v8, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v2, "csd-1"

    .line 258
    invoke-virtual {v3, v2, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 260
    :cond_20
    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move v13, v2

    goto :goto_17

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_5
    move-exception v0

    goto :goto_16

    :catchall_6
    move-exception v0

    move/from16 v1, v19

    move/from16 v10, v40

    :goto_15
    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move v14, v1

    move v5, v13

    move/from16 v7, v38

    const/4 v6, 0x0

    move-object v1, v0

    goto/16 :goto_31

    :catch_6
    move-exception v0

    move/from16 v1, v19

    move/from16 v10, v40

    :goto_16
    move v14, v1

    goto/16 :goto_22

    :cond_21
    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 p10, v7

    move/from16 v1, v19

    move/from16 v10, v40

    move v4, v2

    .line 263
    :goto_17
    :try_start_1b
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_18

    :cond_22
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 264
    :goto_18
    invoke-virtual {v11, v9, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    move-object/from16 v2, p8

    move/from16 v7, p10

    move/from16 v19, v1

    move/from16 v3, v22

    goto/16 :goto_9

    :goto_19
    if-eq v9, v1, :cond_23

    move-object v1, v2

    move v2, v4

    move-object/from16 v34, v8

    move/from16 v40, v10

    move/from16 v4, v21

    move v8, v6

    move/from16 v6, p7

    move-object/from16 p7, v11

    goto/16 :goto_5

    :cond_23
    if-nez v4, :cond_24

    .line 271
    :try_start_1c
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    move/from16 v1, v21

    int-to-float v9, v1

    const/high16 v21, 0x41f00000    # 30.0f

    div-float v9, v9, v21

    const/high16 v21, 0x447a0000    # 1000.0f

    mul-float v9, v9, v21

    mul-float v9, v9, v21

    mul-float v9, v9, v21

    move-object/from16 p8, v2

    move/from16 p10, v3

    float-to-long v2, v9

    move-object/from16 v9, v39

    .line 273
    :try_start_1d
    invoke-virtual {v9, v2, v3}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 274
    invoke-virtual {v9}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, v26

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_25

    .line 280
    invoke-virtual {v11}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    move v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_1d

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v39, v9

    goto :goto_1c

    :catch_8
    move-exception v0

    :goto_1a
    move-object/from16 v9, v39

    :goto_1b
    move-object v1, v0

    :goto_1c
    move/from16 v14, v19

    goto/16 :goto_29

    :cond_24
    move-object/from16 p8, v2

    move/from16 p10, v3

    move/from16 v1, v21

    move-object/from16 v9, v39

    :cond_25
    move v2, v4

    move v4, v1

    move/from16 v1, p7

    :goto_1d
    move/from16 v3, p10

    move-object/from16 v34, v8

    move-object/from16 v39, v9

    move/from16 v40, v10

    move-object/from16 p7, v11

    move v8, v6

    move v6, v1

    move-object/from16 v1, p8

    goto/16 :goto_5

    :catchall_7
    move-exception v0

    move/from16 v19, v1

    goto :goto_1e

    :catch_9
    move-exception v0

    move/from16 v19, v1

    goto :goto_1a

    :catch_a
    move-exception v0

    move-object/from16 v9, v39

    move/from16 v10, v40

    goto :goto_1b

    :cond_26
    move-object/from16 v1, v39

    move/from16 v10, v40

    .line 201
    :try_start_1e
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

    :catchall_8
    move-exception v0

    move/from16 v10, v40

    :goto_1e
    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v5, v13

    move/from16 v14, v19

    move/from16 v7, v38

    goto/16 :goto_30

    :catch_b
    move-exception v0

    goto :goto_1f

    :cond_27
    move-object/from16 v1, v39

    move/from16 v10, v40

    .line 192
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
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_1e

    :catch_c
    move-exception v0

    move-object/from16 v39, v1

    goto :goto_20

    :catch_d
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_1f

    :catchall_a
    move-exception v0

    move/from16 v10, v40

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v5, v13

    move/from16 v14, v19

    move/from16 v7, v38

    goto/16 :goto_4b

    :catch_e
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p7

    :goto_1f
    move-object/from16 v1, v39

    move/from16 v10, v40

    :goto_20
    move/from16 v14, v19

    goto :goto_22

    :cond_28
    move-object/from16 v12, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v39

    move/from16 v10, v40

    move/from16 v5, p9

    move-object v6, v1

    move-object v1, v11

    move/from16 v14, v19

    move/from16 v7, v38

    const/4 v2, 0x0

    const/16 v36, 0x0

    goto/16 :goto_2b

    :catch_f
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v39

    move/from16 v10, v40

    move/from16 v14, v19

    const/4 v13, -0x5

    goto :goto_22

    :catchall_b
    move-exception v0

    move/from16 v10, v40

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move/from16 v14, v19

    move/from16 v7, v38

    goto/16 :goto_24

    :catch_10
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p7

    move-object/from16 v1, v39

    move/from16 v10, v40

    move/from16 v14, v19

    goto :goto_21

    :catch_11
    move-exception v0

    move-object/from16 v12, p0

    move-object v11, v1

    move-object v1, v6

    move/from16 v38, v7

    move/from16 v19, v14

    move-object/from16 v39, v1

    :goto_21
    const/4 v13, -0x5

    const/16 v18, 0x0

    :goto_22
    move-object v1, v0

    goto :goto_29

    :catch_12
    move-exception v0

    move-object/from16 v12, p0

    move-object v11, v1

    move/from16 v38, v7

    move/from16 v19, v14

    move-object v1, v0

    goto :goto_28

    :catchall_c
    move-exception v0

    move/from16 v38, v7

    move/from16 v19, v14

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    goto :goto_24

    :catch_13
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v38, v7

    move/from16 v19, v14

    move-object v1, v0

    goto :goto_27

    :catchall_d
    move-exception v0

    move/from16 v38, v7

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    :goto_23
    move v14, v9

    :goto_24
    const/4 v5, -0x5

    :goto_25
    const/4 v6, 0x0

    goto/16 :goto_c0

    :catch_14
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v38, v7

    move-object v1, v0

    :goto_26
    move v14, v9

    :goto_27
    const/4 v11, 0x0

    :goto_28
    const/4 v13, -0x5

    const/16 v18, 0x0

    const/16 v39, 0x0

    .line 289
    :goto_29
    :try_start_1f
    instance-of v2, v1, Ljava/lang/IllegalStateException;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    if-eqz v2, :cond_29

    if-nez p21, :cond_29

    const/4 v6, 0x1

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    .line 292
    :goto_2a
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    move/from16 v7, v38

    :try_start_21
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    move/from16 v5, p9

    :try_start_22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    move v2, v6

    move-object v1, v11

    move-object/from16 v6, v39

    const/16 v36, 0x1

    :goto_2b
    if-eqz v18, :cond_2a

    .line 298
    :try_start_23
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_2c

    :catchall_e
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v6, v2

    goto :goto_2d

    :cond_2a
    :goto_2c
    if-eqz v6, :cond_2b

    .line 301
    invoke-virtual {v6}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_2b
    if-eqz v1, :cond_2c

    .line 304
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 305
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 307
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-wide/from16 v34, p16

    move v11, v5

    move v4, v7

    move v1, v13

    move v5, v14

    move/from16 v6, v36

    move-wide/from16 v14, p14

    move/from16 v36, v2

    move-object v13, v12

    goto/16 :goto_bc

    :catchall_f
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    :goto_2d
    move v11, v5

    goto :goto_2f

    :catchall_10
    move-exception v0

    goto :goto_2e

    :catchall_11
    move-exception v0

    move/from16 v7, v38

    :goto_2e
    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    :goto_2f
    move v5, v13

    goto :goto_31

    :catchall_12
    move-exception v0

    move/from16 v7, v38

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v5, v13

    :goto_30
    const/4 v6, 0x0

    :goto_31
    move-object v13, v12

    goto/16 :goto_c0

    :cond_2d
    move-object/from16 v12, p0

    move-object v11, v4

    move v1, v6

    move-object/from16 v14, v24

    const/16 v13, 0x64

    move/from16 v71, v8

    move-object v8, v5

    move/from16 v5, v71

    .line 309
    :try_start_24
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v6, p1

    .line 310
    invoke-virtual {v2, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 312
    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_45

    const/4 v2, -0x1

    if-eq v7, v2, :cond_2e

    .line 313
    :try_start_25
    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    goto :goto_32

    :catchall_13
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v6, v4

    move v11, v5

    move v14, v9

    move-object v13, v12

    goto/16 :goto_bf

    :cond_2e
    const/4 v2, -0x1

    :goto_32
    const-string v13, "mime"

    if-ltz v3, :cond_2f

    .line 315
    :try_start_26
    iget-object v4, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    if-nez v4, :cond_2f

    move-object/from16 v21, v13

    const/4 v4, 0x1

    goto :goto_34

    :catchall_14
    move-exception v0

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v5

    move v14, v9

    :goto_33
    move-object v13, v12

    goto/16 :goto_24

    :cond_2f
    move-object/from16 v21, v13

    const/4 v4, 0x0

    :goto_34
    move/from16 v13, p20

    if-nez v13, :cond_32

    if-eqz v4, :cond_30

    goto :goto_36

    .line 797
    :cond_30
    :try_start_27
    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    iget-object v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    const/4 v1, -0x1

    if-eq v7, v1, :cond_31

    const/4 v15, 0x1

    goto :goto_35

    :cond_31
    const/4 v15, 0x0

    :goto_35
    move-object/from16 v1, p0

    const/4 v8, 0x0

    move-object v4, v14

    move v11, v5

    move-object v14, v6

    const/4 v13, 0x1

    move-wide/from16 v5, p12

    move v13, v8

    move-wide/from16 v7, p14

    move-wide/from16 v9, p18

    move v13, v11

    move-object/from16 v11, p2

    move-object v14, v12

    move v12, v15

    :try_start_28
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    move/from16 v5, p7

    move/from16 v10, p8

    move/from16 v4, p10

    move-wide/from16 v34, p16

    move v11, v13

    move-object v13, v14

    const/4 v1, -0x5

    const/4 v6, 0x0

    const/16 v36, 0x0

    move-wide/from16 v14, p14

    goto/16 :goto_bc

    :catchall_15
    move-exception v0

    move/from16 v14, p7

    move/from16 v10, p8

    move/from16 v7, p10

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v5

    goto :goto_33

    :cond_32
    :goto_36
    move v13, v5

    move-object v10, v14

    move-object v14, v12

    move-object v12, v6

    if-ltz v3, :cond_9a

    const-wide/32 v22, -0x80000000

    const/16 v4, 0x3e8

    .line 337
    :try_start_29
    div-int v5, v4, v13
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_48
    .catchall {:try_start_29 .. :try_end_29} :catchall_3e

    mul-int/2addr v5, v4

    int-to-long v6, v5

    const/16 v5, 0x1e

    if-ge v13, v5, :cond_33

    add-int/lit8 v5, v13, 0x5

    .line 340
    :try_start_2a
    div-int v5, v4, v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    :goto_37
    mul-int/2addr v5, v4

    int-to-long v4, v5

    goto :goto_3b

    :catchall_16
    move-exception v0

    move/from16 v10, p8

    move/from16 v7, p10

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    :goto_38
    move v11, v13

    move-object v13, v14

    goto/16 :goto_b0

    :catch_15
    move-exception v0

    move/from16 v4, p10

    move-wide/from16 v34, p16

    move-object v1, v0

    move/from16 v58, v3

    move v11, v13

    move-object v13, v14

    :goto_39
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v20, -0x5

    const/16 v31, 0x0

    :goto_3a
    const/16 v53, 0x0

    const/16 v56, 0x0

    move-wide/from16 v14, p14

    goto/16 :goto_b5

    :cond_33
    add-int/lit8 v5, v13, 0x1

    .line 342
    :try_start_2b
    div-int v5, v4, v5

    goto :goto_37

    :goto_3b
    move-wide/from16 v24, v4

    .line 345
    iget-object v4, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 346
    iget-object v4, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_48
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3e

    const-wide/16 v4, 0x0

    cmp-long v27, p16, v4

    if-ltz v27, :cond_37

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpg-float v4, v26, v4

    if-gtz v4, :cond_34

    const v4, 0x27ac40

    goto :goto_3c

    :cond_34
    const v4, 0x459c4000    # 5000.0f

    cmpg-float v4, v26, v4

    if-gtz v4, :cond_35

    const v4, 0x2191c0

    goto :goto_3c

    :cond_35
    const v4, 0x17cdc0

    :goto_3c
    const v5, 0xe4e1c0

    move/from16 v27, v3

    move/from16 v3, p11

    if-lt v3, v5, :cond_36

    :try_start_2c
    const-string v5, "OMX.google.h264.encoder"
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_16
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    goto :goto_3d

    :catchall_17
    move-exception v0

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-object v1, v0

    move v7, v4

    move v11, v13

    move-object v13, v14

    const/4 v5, -0x5

    const/4 v6, 0x0

    const-wide/16 v34, 0x0

    goto/16 :goto_b2

    :catch_16
    move-exception v0

    move-object v1, v0

    move v11, v13

    move-object v13, v14

    move/from16 v58, v27

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v20, -0x5

    const/16 v31, 0x0

    const-wide/16 v34, 0x0

    goto :goto_3a

    :cond_36
    const/4 v5, 0x0

    :goto_3d
    const-wide/16 v29, 0x0

    goto :goto_3f

    :cond_37
    move/from16 v27, v3

    move/from16 v3, p11

    if-gtz p10, :cond_38

    move-wide/from16 v29, p16

    move v4, v1

    goto :goto_3e

    :cond_38
    move/from16 v4, p10

    move-wide/from16 v29, p16

    :goto_3e
    const/4 v5, 0x0

    :goto_3f
    if-lez v3, :cond_39

    .line 365
    :try_start_2d
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_17
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    goto :goto_40

    :catchall_18
    move-exception v0

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-object v1, v0

    move v7, v4

    move v11, v13

    move-object v13, v14

    move-wide/from16 v34, v29

    goto/16 :goto_b0

    :catch_17
    move-exception v0

    move-object v1, v0

    move v11, v13

    move-object v13, v14

    move/from16 v58, v27

    move-wide/from16 v34, v29

    goto/16 :goto_39

    :cond_39
    :goto_40
    const-wide/16 v32, 0x0

    cmp-long v34, v29, v32

    move/from16 v38, v2

    if-ltz v34, :cond_3a

    move-wide/from16 v1, v18

    goto :goto_41

    :cond_3a
    move-wide/from16 v1, v29

    :goto_41
    cmp-long v29, v1, v32

    if-ltz v29, :cond_3b

    .line 374
    :try_start_2e
    iget-object v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v29, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    move-wide/from16 v6, p12

    move-wide/from16 p16, v1

    const-wide/16 v2, 0x0

    const/4 v14, 0x0

    goto/16 :goto_46

    :catchall_19
    move-exception v0

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-wide/from16 v34, v1

    move v7, v4

    move v11, v13

    move-object v13, v14

    const/4 v5, -0x5

    :goto_42
    const/4 v6, 0x0

    move/from16 v14, p7

    :goto_43
    move-object v1, v0

    goto/16 :goto_c0

    :catch_18
    move-exception v0

    move-wide/from16 v34, v1

    move v11, v13

    move-object v13, v14

    move/from16 v58, v27

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v20, -0x5

    const/16 v31, 0x0

    const/16 v53, 0x0

    const/16 v56, 0x0

    move-wide/from16 v14, p14

    move-object v1, v0

    goto/16 :goto_b5

    :cond_3b
    move-wide/from16 v29, v6

    const-wide/16 v32, 0x0

    move-wide/from16 v6, p12

    cmp-long v3, v6, v32

    if-lez v3, :cond_3c

    .line 376
    :try_start_2f
    iget-object v3, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1a
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1b

    move-wide/from16 p16, v1

    const/4 v1, 0x0

    :try_start_30
    invoke-virtual {v3, v6, v7, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    move-object/from16 v1, p26

    const-wide/16 v2, 0x0

    const/4 v14, 0x0

    goto :goto_47

    :catchall_1a
    move-exception v0

    goto :goto_44

    :catch_19
    move-exception v0

    goto :goto_45

    :catchall_1b
    move-exception v0

    move-wide/from16 p16, v1

    :goto_44
    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v7, v4

    goto/16 :goto_38

    :catch_1a
    move-exception v0

    move-wide/from16 p16, v1

    :goto_45
    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v13

    move-object v13, v14

    move/from16 v58, v27

    goto/16 :goto_39

    :cond_3c
    move-wide/from16 p16, v1

    .line 378
    :try_start_31
    iget-object v1, v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_47
    .catchall {:try_start_31 .. :try_end_31} :catchall_3d

    const-wide/16 v2, 0x0

    const/4 v14, 0x0

    :try_start_32
    invoke-virtual {v1, v2, v3, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_46
    .catchall {:try_start_32 .. :try_end_32} :catchall_3c

    :goto_46
    move-object/from16 v1, p26

    :goto_47
    if-eqz v1, :cond_3f

    const/16 v2, 0x5a

    move/from16 v3, p3

    if-eq v3, v2, :cond_3e

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_3d

    goto :goto_48

    .line 388
    :cond_3d
    :try_start_33
    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 389
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_49

    .line 385
    :cond_3e
    :goto_48
    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 386
    iget v14, v1, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1b
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    :goto_49
    move/from16 v71, v14

    move v14, v2

    move/from16 v2, v71

    goto :goto_4d

    :catchall_1c
    move-exception v0

    move/from16 v14, p7

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v7, v4

    move v11, v13

    :goto_4a
    const/4 v5, -0x5

    :goto_4b
    const/4 v6, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_c0

    :catch_1b
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v13

    move/from16 v58, v27

    const/4 v8, 0x0

    :goto_4c
    const/4 v10, 0x0

    const/16 v20, -0x5

    const/16 v31, 0x0

    const/16 v53, 0x0

    const/16 v56, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_b5

    :cond_3f
    move/from16 v3, p3

    move/from16 v14, p7

    move/from16 v2, p8

    .line 395
    :goto_4d
    :try_start_34
    sget-boolean v32, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_46
    .catchall {:try_start_34 .. :try_end_34} :catchall_3c

    if-eqz v32, :cond_40

    .line 396
    :try_start_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create encoder with w = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitrate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1b
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    .line 398
    :cond_40
    :try_start_36
    invoke-static {v15, v14, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v3, "color-format"

    const v6, 0x7f000789

    .line 399
    invoke-virtual {v1, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    .line 400
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    .line 401
    invoke-virtual {v1, v3, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    const/4 v6, 0x2

    .line 402
    invoke-virtual {v1, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 404
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_46
    .catchall {:try_start_36 .. :try_end_36} :catchall_3c

    const/16 v6, 0x17

    if-ge v3, v6, :cond_42

    :try_start_37
    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v6, 0x1e0

    if-gt v3, v6, :cond_42

    const v3, 0xe1000

    if-le v4, v3, :cond_41

    move v4, v3

    :cond_41
    const-string v3, "bitrate"

    .line 408
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1b
    .catchall {:try_start_37 .. :try_end_37} :catchall_1c

    :cond_42
    move/from16 v32, v4

    if-eqz v5, :cond_43

    .line 413
    :try_start_38
    invoke-static {v5}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1c
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    goto :goto_4e

    :catchall_1d
    move-exception v0

    move/from16 v14, p7

    move/from16 v10, p8

    move-wide/from16 v47, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move v11, v13

    move/from16 v7, v32

    goto/16 :goto_4a

    :catch_1c
    :cond_43
    const/4 v3, 0x0

    :goto_4e
    if-nez v3, :cond_44

    .line 419
    :try_start_39
    invoke-static {v15}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1d
    .catchall {:try_start_39 .. :try_end_39} :catchall_1d

    goto :goto_4f

    :catch_1d
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move-object v1, v0

    move-object v8, v3

    move v11, v13

    move/from16 v58, v27

    move/from16 v4, v32

    goto/16 :goto_4c

    :cond_44
    :goto_4f
    move-object v7, v3

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 421
    :try_start_3a
    invoke-virtual {v7, v1, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 422
    new-instance v5, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_45
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3b

    .line 423
    :try_start_3b
    invoke-virtual {v5}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 424
    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V

    move-object/from16 v4, v21

    .line 426
    invoke-virtual {v9, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_44
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    .line 427
    :try_start_3c
    new-instance v1, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_43
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3b

    const/16 v21, 0x0

    move-object/from16 p10, v3

    int-to-float v3, v13

    const/16 v33, 0x0

    move-wide/from16 v34, p16

    move-object/from16 p16, v1

    move/from16 v51, v2

    move/from16 v50, v38

    const-wide/16 v38, 0x0

    move-object/from16 v2, p22

    move-object/from16 v52, p10

    move/from16 v53, v27

    move/from16 v27, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v4

    move-object/from16 v4, p23

    move-object/from16 v56, v5

    move-object/from16 v5, p24

    move/from16 v38, v6

    move-object/from16 v6, p26

    move-object/from16 p10, v7

    move/from16 v7, p7

    move-object/from16 v57, v8

    move/from16 v8, p8

    move-object/from16 v58, v9

    move/from16 v9, p5

    move-object/from16 v59, v10

    move/from16 v10, p6

    move-object/from16 v60, v11

    move/from16 v11, p3

    move/from16 v12, v27

    move-object/from16 v27, v15

    move/from16 v15, v38

    move-object/from16 v71, v21

    move/from16 v21, v14

    move-object/from16 v14, v71

    move/from16 v13, v33

    :try_start_3d
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_42
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3a

    if-nez p27, :cond_46

    move/from16 v1, p8

    .line 428
    :try_start_3e
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_21
    .catchall {:try_start_3e .. :try_end_3e} :catchall_21

    int-to-float v2, v2

    move/from16 v6, p5

    move/from16 v7, p6

    :try_start_3f
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_20
    .catchall {:try_start_3f .. :try_end_3f} :catchall_20

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_45

    move/from16 v2, p7

    .line 429
    :try_start_40
    invoke-static {v6, v7, v2, v1, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1f
    .catchall {:try_start_40 .. :try_end_40} :catchall_1f

    const/4 v5, 0x0

    :try_start_41
    invoke-static {v6, v7, v2, v1, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_1f
    .catchall {:try_start_41 .. :try_end_41} :catchall_1e

    move-object/from16 v8, p16

    :try_start_42
    invoke-virtual {v8, v3, v4}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1e
    .catchall {:try_start_42 .. :try_end_42} :catchall_1e

    goto/16 :goto_5a

    :catch_1e
    move-exception v0

    goto :goto_56

    :catchall_1e
    move-exception v0

    goto :goto_52

    :catchall_1f
    move-exception v0

    goto :goto_51

    :catch_1f
    move-exception v0

    goto :goto_55

    :cond_45
    move/from16 v2, p7

    goto :goto_59

    :catchall_20
    move-exception v0

    goto :goto_50

    :catch_20
    move-exception v0

    goto :goto_54

    :catchall_21
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_50
    move/from16 v2, p7

    :goto_51
    const/4 v5, 0x0

    :goto_52
    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move v10, v1

    move v14, v2

    move v6, v5

    :goto_53
    move/from16 v7, v32

    const/4 v5, -0x5

    goto/16 :goto_43

    :catch_21
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_54
    move/from16 v2, p7

    :goto_55
    move-object/from16 v8, p16

    :goto_56
    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v14, p14

    move-object v1, v0

    move/from16 v4, v32

    move-object/from16 v10, v52

    :goto_57
    move/from16 v58, v53

    const/16 v20, -0x5

    const/16 v31, 0x0

    :goto_58
    move-object/from16 v53, v8

    move-object/from16 v8, p10

    goto/16 :goto_b5

    :cond_46
    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v2, p7

    move/from16 v1, p8

    :goto_59
    move-object/from16 v8, p16

    const/4 v5, 0x0

    .line 431
    :goto_5a
    :try_start_43
    invoke-virtual {v8}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_41
    .catchall {:try_start_43 .. :try_end_43} :catchall_3a

    move-object/from16 v10, v52

    move-object/from16 v4, v58

    const/4 v9, 0x0

    :try_start_44
    invoke-virtual {v10, v4, v3, v9, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 432
    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    .line 437
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_40
    .catchall {:try_start_44 .. :try_end_44} :catchall_3a

    const/16 v4, 0x15

    if-ge v3, v4, :cond_47

    .line 438
    :try_start_45
    invoke-virtual {v10}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 439
    invoke-virtual/range {p10 .. p10}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_22
    .catchall {:try_start_45 .. :try_end_45} :catchall_1e

    goto :goto_5c

    :catch_22
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v14, p14

    :goto_5b
    move-object v1, v0

    move-object/from16 v31, v9

    move/from16 v4, v32

    move/from16 v58, v53

    const/16 v20, -0x5

    goto :goto_58

    :cond_47
    move-object v3, v9

    move-object v4, v3

    :goto_5c
    move/from16 v11, v50

    if-ltz v11, :cond_50

    move-object/from16 v13, p0

    .line 444
    :try_start_46
    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 445
    invoke-virtual {v12, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_29
    .catchall {:try_start_46 .. :try_end_46} :catchall_27

    if-nez v5, :cond_49

    :try_start_47
    invoke-virtual {v12, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "audio/mpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_23
    .catchall {:try_start_47 .. :try_end_47} :catchall_22

    if-eqz v5, :cond_48

    goto :goto_5f

    :cond_48
    const/4 v5, 0x0

    goto :goto_60

    :catchall_22
    move-exception v0

    :goto_5d
    move/from16 v11, p9

    move-wide/from16 v47, p14

    move v10, v1

    move v14, v2

    move/from16 v7, v32

    const/4 v5, -0x5

    const/4 v6, 0x0

    goto/16 :goto_43

    :catch_23
    move-exception v0

    :goto_5e
    move/from16 v11, p9

    move-wide/from16 v14, p14

    goto/16 :goto_68

    :cond_49
    :goto_5f
    move v5, v15

    .line 447
    :goto_60
    :try_start_48
    invoke-virtual {v12, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "audio/unknown"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_29
    .catchall {:try_start_48 .. :try_end_48} :catchall_27

    if-eqz v9, :cond_4a

    const/4 v11, -0x1

    :cond_4a
    if-ltz v11, :cond_4f

    if-eqz v5, :cond_4d

    .line 453
    :try_start_49
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v9, v12, v15}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    .line 454
    iget-object v14, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_25
    .catchall {:try_start_49 .. :try_end_49} :catchall_23

    :try_start_4a
    const-string v14, "max-input-size"

    .line 456
    invoke-virtual {v12, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_24
    .catchall {:try_start_4a .. :try_end_4a} :catchall_22

    goto :goto_61

    :catch_24
    move-exception v0

    move-object v12, v0

    .line 458
    :try_start_4b
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    :goto_61
    if-gtz v12, :cond_4b

    const/high16 v12, 0x10000

    .line 463
    :cond_4b
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_25
    .catchall {:try_start_4b .. :try_end_4b} :catchall_23

    move-wide/from16 v6, p12

    move-object/from16 p16, v4

    move/from16 p17, v5

    const-wide/16 v4, 0x0

    cmp-long v33, v6, v4

    if-lez v33, :cond_4c

    .line 466
    :try_start_4c
    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v15, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v33, v14

    goto :goto_62

    .line 468
    :cond_4c
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v33, v14

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v14, v15, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_23
    .catchall {:try_start_4c .. :try_end_4c} :catchall_22

    :goto_62
    move-wide/from16 v14, p14

    move/from16 v4, p17

    move v5, v9

    const/4 v9, 0x0

    goto/16 :goto_6a

    :catchall_23
    move-exception v0

    move-wide/from16 v6, p12

    goto :goto_5d

    :catch_25
    move-exception v0

    move-wide/from16 v6, p12

    goto :goto_5e

    :cond_4d
    move-wide/from16 v6, p12

    move-object/from16 p16, v4

    move/from16 p17, v5

    .line 471
    :try_start_4d
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v5, p1

    .line 472
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_28
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    const-wide/16 v14, 0x0

    cmp-long v9, v6, v14

    if-lez v9, :cond_4e

    const/4 v9, 0x0

    .line 476
    :try_start_4e
    invoke-virtual {v4, v6, v7, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_23
    .catchall {:try_start_4e .. :try_end_4e} :catchall_24

    goto :goto_63

    :catchall_24
    move-exception v0

    move/from16 v11, p9

    move-wide/from16 v47, p14

    move v10, v1

    move v14, v2

    move v6, v9

    goto/16 :goto_53

    :cond_4e
    const/4 v9, 0x0

    .line 478
    :try_start_4f
    invoke-virtual {v4, v14, v15, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 481
    :goto_63
    new-instance v9, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v9, v12, v4, v11}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_28
    .catchall {:try_start_4f .. :try_end_4f} :catchall_26

    .line 482
    :try_start_50
    iput-wide v6, v9, Lorg/telegram/messenger/video/AudioRecoder;->startTime:J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_27
    .catchall {:try_start_50 .. :try_end_50} :catchall_26

    move-wide/from16 v14, p14

    .line 483
    :try_start_51
    iput-wide v14, v9, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    .line 484
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v12, v9, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v5, 0x1

    invoke-virtual {v4, v12, v5}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_26
    .catchall {:try_start_51 .. :try_end_51} :catchall_25

    move v5, v4

    const/4 v12, 0x0

    const/16 v33, 0x0

    move/from16 v4, p17

    goto :goto_6a

    :catchall_25
    move-exception v0

    goto :goto_66

    :catch_26
    move-exception v0

    goto :goto_64

    :catch_27
    move-exception v0

    move-wide/from16 v14, p14

    :goto_64
    move/from16 v11, p9

    goto/16 :goto_5b

    :catchall_26
    move-exception v0

    goto :goto_65

    :catch_28
    move-exception v0

    goto :goto_67

    :cond_4f
    move-wide/from16 v6, p12

    move-wide/from16 v14, p14

    move-object/from16 p16, v4

    move/from16 p17, v5

    move/from16 v4, p17

    goto :goto_69

    :catchall_27
    move-exception v0

    move-wide/from16 v6, p12

    :goto_65
    move-wide/from16 v14, p14

    :goto_66
    move/from16 v11, p9

    move v10, v1

    move-wide/from16 v47, v14

    move/from16 v7, v32

    const/4 v5, -0x5

    const/4 v6, 0x0

    move-object v1, v0

    move v14, v2

    goto/16 :goto_c0

    :catch_29
    move-exception v0

    move-wide/from16 v6, p12

    :goto_67
    move-wide/from16 v14, p14

    move/from16 v11, p9

    :goto_68
    move-object v1, v0

    move/from16 v4, v32

    goto/16 :goto_57

    :cond_50
    move-object/from16 v13, p0

    move-wide/from16 v6, p12

    move-wide/from16 v14, p14

    move-object/from16 p16, v4

    const/4 v4, 0x1

    :goto_69
    const/4 v5, -0x5

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v33, 0x0

    :goto_6a
    if-gez v11, :cond_51

    const/16 v39, 0x1

    goto :goto_6b

    :cond_51
    const/16 v39, 0x0

    .line 493
    :goto_6b
    :try_start_52
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_3f
    .catchall {:try_start_52 .. :try_end_52} :catchall_39

    move-object/from16 p14, p16

    move-wide/from16 v65, v18

    move-wide/from16 v67, v65

    move-wide/from16 v63, v22

    move-object/from16 v52, v33

    move/from16 v43, v39

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v33, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v50, -0x5

    const-wide/16 v54, 0x0

    const-wide/16 v61, 0x0

    :goto_6c
    if-eqz v22, :cond_53

    if-nez v4, :cond_52

    if-nez v43, :cond_52

    goto :goto_6d

    :cond_52
    move/from16 v11, p9

    move v3, v1

    move v5, v2

    move/from16 v4, v32

    move/from16 v20, v50

    move/from16 v58, v53

    const/4 v6, 0x0

    const/16 v36, 0x0

    move-object/from16 v53, v8

    move-object/from16 v8, p10

    goto/16 :goto_b7

    .line 496
    :cond_53
    :goto_6d
    :try_start_53
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3e
    .catchall {:try_start_53 .. :try_end_53} :catchall_38

    if-nez v4, :cond_54

    if-eqz v9, :cond_54

    .line 499
    :try_start_54
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v9, v2, v5}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2a
    .catchall {:try_start_54 .. :try_end_54} :catchall_28

    goto :goto_6e

    :catch_2a
    move-exception v0

    move/from16 v11, p9

    move-object v1, v0

    move-object/from16 v31, v9

    move/from16 v4, v32

    move/from16 v20, v50

    move/from16 v58, v53

    goto/16 :goto_58

    :cond_54
    move/from16 v2, v43

    :goto_6e
    if-nez v23, :cond_63

    move/from16 p15, v2

    .line 504
    :try_start_55
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v2
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2c
    .catchall {:try_start_55 .. :try_end_55} :catchall_28

    move-object/from16 p16, v9

    move/from16 v9, v53

    if-ne v2, v9, :cond_58

    move-object/from16 v53, v8

    move/from16 v58, v9

    const-wide/16 v8, 0x9c4

    .line 506
    :try_start_56
    invoke-virtual {v10, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_57

    .line 509
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_55

    .line 510
    aget-object v8, v3, v2

    goto :goto_6f

    .line 512
    :cond_55
    invoke-virtual {v10, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 514
    :goto_6f
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 p17, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v8, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v46

    if-gez v46, :cond_56

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x4

    move-object/from16 v43, v10

    move/from16 v44, v2

    .line 516
    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v23, 0x1

    goto :goto_70

    :cond_56
    const/16 v45, 0x0

    .line 519
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v47

    const/16 v49, 0x0

    move-object/from16 v43, v10

    move/from16 v44, v2

    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 520
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_70

    :cond_57
    move-object/from16 p17, v3

    :goto_70
    move/from16 v69, v4

    move/from16 v70, v5

    move-object/from16 v9, v59

    const/4 v2, 0x0

    move/from16 v59, v11

    goto/16 :goto_76

    :catch_2b
    move-exception v0

    goto/16 :goto_77

    :cond_58
    move-object/from16 p17, v3

    move-object/from16 v53, v8

    move/from16 v58, v9

    if-eqz v4, :cond_61

    const/4 v3, -0x1

    if-eq v11, v3, :cond_60

    if-ne v2, v11, :cond_61

    .line 524
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_59

    .line 525
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v8

    move/from16 v69, v4

    int-to-long v3, v12

    cmp-long v3, v8, v3

    if-lez v3, :cond_5a

    const-wide/16 v3, 0x400

    add-long/2addr v8, v3

    long-to-int v12, v8

    .line 528
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v52

    goto :goto_71

    :cond_59
    move/from16 v69, v4

    :cond_5a
    :goto_71
    move-object/from16 v3, v52

    .line 531
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    move-object/from16 v9, v59

    iput v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_5b

    .line 533
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 536
    :cond_5b
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_5c

    .line 537
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move v4, v11

    move v8, v12

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iput-wide v11, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 538
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_72

    :cond_5c
    move v4, v11

    move v8, v12

    const/4 v2, 0x0

    .line 540
    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v23, 0x1

    .line 543
    :goto_72
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_5f

    const-wide/16 v11, 0x0

    cmp-long v2, v14, v11

    if-ltz v2, :cond_5d

    iget-wide v11, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v11, v14

    if-gez v2, :cond_5f

    :cond_5d
    const/4 v2, 0x0

    .line 544
    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 545
    iget-object v11, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 546
    iget-object v11, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v11, v5, v3, v9, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v11

    const-wide/16 v41, 0x0

    cmp-long v2, v11, v41

    if-eqz v2, :cond_5f

    .line 548
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v2, :cond_5f

    move-object/from16 v43, v3

    move/from16 v59, v4

    .line 549
    iget-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v44, v3, v6

    cmp-long v44, v44, v54

    if-lez v44, :cond_5e

    sub-long v54, v3, v6

    :cond_5e
    move-wide/from16 v3, v54

    move/from16 v70, v5

    long-to-float v5, v3

    const/high16 v28, 0x447a0000    # 1000.0f

    div-float v5, v5, v28

    div-float v5, v5, v26

    .line 552
    invoke-interface {v2, v11, v12, v5}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v54, v3

    goto :goto_73

    :cond_5f
    move-object/from16 v43, v3

    move/from16 v59, v4

    move/from16 v70, v5

    :goto_73
    move v12, v8

    move-object/from16 v52, v43

    goto :goto_75

    :cond_60
    move/from16 v69, v4

    move/from16 v70, v5

    move-object/from16 v9, v59

    move/from16 v59, v11

    goto :goto_74

    :cond_61
    move/from16 v69, v4

    move/from16 v70, v5

    move-object/from16 v9, v59

    move/from16 v59, v11

    const/4 v3, -0x1

    :goto_74
    if-ne v2, v3, :cond_62

    const/4 v2, 0x1

    goto :goto_76

    :cond_62
    :goto_75
    const/4 v2, 0x0

    :goto_76
    if-eqz v2, :cond_64

    const-wide/16 v2, 0x9c4

    .line 560
    invoke-virtual {v10, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v44

    if-ltz v44, :cond_64

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x4

    move-object/from16 v43, v10

    .line 562
    invoke-virtual/range {v43 .. v49}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2b
    .catchall {:try_start_56 .. :try_end_56} :catchall_28

    const/16 v23, 0x1

    goto :goto_78

    :catchall_28
    move-exception v0

    move/from16 v11, p9

    move v10, v1

    move-wide/from16 v47, v14

    move/from16 v7, v32

    move/from16 v5, v50

    goto/16 :goto_42

    :catch_2c
    move-exception v0

    move-object/from16 p16, v9

    move/from16 v58, v53

    move-object/from16 v53, v8

    :goto_77
    move/from16 v11, p9

    goto/16 :goto_a9

    :cond_63
    move/from16 p15, v2

    move-object/from16 p17, v3

    move/from16 v69, v4

    move/from16 v70, v5

    move-object/from16 p16, v9

    move/from16 v58, v53

    move-object/from16 v9, v59

    move-object/from16 v53, v8

    move/from16 v59, v11

    :cond_64
    :goto_78
    xor-int/lit8 v2, v33, 0x1

    move v3, v2

    move/from16 v5, v50

    const/4 v4, 0x1

    move-object/from16 v2, p14

    move/from16 p14, v12

    move-wide/from16 v11, v63

    :goto_79
    if-nez v3, :cond_66

    if-eqz v4, :cond_65

    goto :goto_7a

    :cond_65
    move/from16 v43, p15

    move-object/from16 v3, p17

    move/from16 v50, v5

    move-wide/from16 v63, v11

    move-object/from16 v8, v53

    move/from16 v53, v58

    move/from16 v11, v59

    move/from16 v4, v69

    move/from16 v5, v70

    move/from16 v12, p14

    move-object/from16 p14, v2

    move-object/from16 v59, v9

    move/from16 v2, p7

    move-object/from16 v9, p16

    goto/16 :goto_6c

    .line 571
    :cond_66
    :goto_7a
    :try_start_57
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_3d
    .catchall {:try_start_57 .. :try_end_57} :catchall_37

    if-eqz p21, :cond_67

    const-wide/16 v43, 0x55f0

    move-object/from16 v8, p10

    move/from16 p10, v3

    move-wide/from16 v71, v43

    move/from16 v43, v4

    move-wide/from16 v3, v71

    goto :goto_7b

    :cond_67
    move-object/from16 v8, p10

    move/from16 p10, v3

    move/from16 v43, v4

    const-wide/16 v3, 0x9c4

    .line 572
    :goto_7b
    :try_start_58
    invoke-virtual {v8, v9, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_3c
    .catchall {:try_start_58 .. :try_end_58} :catchall_37

    const/4 v4, -0x1

    if-ne v3, v4, :cond_68

    move-wide/from16 v44, v11

    move-wide/from16 v47, v14

    move/from16 v1, v21

    move/from16 v14, v51

    move-object/from16 v12, v57

    const/high16 v28, 0x447a0000    # 1000.0f

    const/16 v43, 0x0

    move v11, v4

    move-object/from16 v4, v27

    goto/16 :goto_8c

    :cond_68
    const/4 v4, -0x3

    if-ne v3, v4, :cond_6a

    .line 576
    :try_start_59
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v4, v1, :cond_69

    .line 577
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_69
    move-wide/from16 v44, v11

    move-wide/from16 v47, v14

    move/from16 v1, v21

    move-object/from16 v4, v27

    move/from16 v14, v51

    move-object/from16 v12, v57

    :goto_7c
    const/4 v11, -0x1

    const/high16 v28, 0x447a0000    # 1000.0f

    goto/16 :goto_8c

    :catchall_29
    move-exception v0

    move/from16 v10, p8

    move/from16 v11, p9

    move-object v1, v0

    move-wide/from16 v47, v14

    move/from16 v7, v32

    goto/16 :goto_b1

    :catch_2d
    move-exception v0

    :goto_7d
    move/from16 v11, p9

    goto/16 :goto_a8

    :cond_6a
    const/4 v1, -0x2

    if-ne v3, v1, :cond_6d

    .line 580
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v4, -0x5

    if-ne v5, v4, :cond_6c

    if-eqz v1, :cond_6c

    .line 582
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move-wide/from16 v44, v11

    const/4 v11, 0x0

    invoke-virtual {v4, v1, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2d
    .catchall {:try_start_59 .. :try_end_59} :catchall_29

    move-object/from16 v11, v60

    .line 583
    :try_start_5a
    invoke-virtual {v1, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {v1, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_6b

    move-object/from16 v12, v57

    .line 584
    invoke-virtual {v1, v12}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_2f
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2b

    move/from16 v46, v4

    :try_start_5b
    const-string v4, "csd-1"

    .line 585
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 586
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2e
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2a

    add-int/2addr v4, v1

    move/from16 v39, v4

    goto :goto_7e

    :catchall_2a
    move-exception v0

    goto :goto_7f

    :catch_2e
    move-exception v0

    goto :goto_80

    :cond_6b
    move/from16 v46, v4

    move-object/from16 v12, v57

    :goto_7e
    move/from16 v5, v46

    goto :goto_81

    :catchall_2b
    move-exception v0

    move/from16 v46, v4

    :goto_7f
    move/from16 v10, p8

    move/from16 v11, p9

    move-object v1, v0

    move-wide/from16 v47, v14

    move/from16 v7, v32

    move/from16 v5, v46

    goto/16 :goto_b1

    :catch_2f
    move-exception v0

    move/from16 v46, v4

    :goto_80
    move/from16 v11, p9

    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v4, v32

    move/from16 v20, v46

    goto/16 :goto_b5

    :cond_6c
    move-wide/from16 v44, v11

    move-object/from16 v12, v57

    move-object/from16 v11, v60

    :goto_81
    move-object/from16 v60, v11

    move-wide/from16 v47, v14

    move/from16 v1, v21

    move-object/from16 v4, v27

    move/from16 v14, v51

    goto/16 :goto_7c

    :cond_6d
    move-wide/from16 v44, v11

    move-object/from16 v12, v57

    move-object/from16 v11, v60

    if-ltz v3, :cond_98

    .line 593
    :try_start_5c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_3c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_37

    const/16 v4, 0x15

    if-ge v1, v4, :cond_6e

    .line 594
    :try_start_5d
    aget-object v1, v2, v3
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_29

    goto :goto_82

    .line 596
    :cond_6e
    :try_start_5e
    invoke-virtual {v8, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_82
    if-eqz v1, :cond_97

    .line 601
    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_3c
    .catchall {:try_start_5e .. :try_end_5e} :catchall_37

    move-object/from16 v22, v2

    const/4 v2, 0x1

    if-le v4, v2, :cond_7c

    .line 602
    :try_start_5f
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_30
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2c

    and-int/lit8 v46, v2, 0x2

    if-nez v46, :cond_78

    if-eqz v39, :cond_6f

    and-int/lit8 v46, v2, 0x1

    if-eqz v46, :cond_6f

    move-object/from16 v60, v11

    .line 604
    :try_start_60
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v11, v11, v39

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v4, v4, v39

    .line 605
    iput v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_83

    :cond_6f
    move-object/from16 v60, v11

    :goto_83
    if-eqz v40, :cond_74

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_74

    .line 608
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v11, 0x64

    if-le v2, v11, :cond_73

    .line 609
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v11, [B

    .line 611
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/16 v37, 0x0

    :goto_84
    const/16 v11, 0x60

    if-ge v4, v11, :cond_73

    .line 614
    aget-byte v11, v2, v4

    if-nez v11, :cond_71

    add-int/lit8 v11, v4, 0x1

    aget-byte v11, v2, v11

    if-nez v11, :cond_71

    add-int/lit8 v11, v4, 0x2

    aget-byte v11, v2, v11

    if-nez v11, :cond_71

    add-int/lit8 v11, v4, 0x3

    aget-byte v11, v2, v11

    move-object/from16 v40, v2

    const/4 v2, 0x1

    if-ne v11, v2, :cond_72

    add-int/lit8 v11, v37, 0x1

    if-le v11, v2, :cond_70

    .line 617
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 618
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v4

    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_2d
    .catchall {:try_start_60 .. :try_end_60} :catchall_29

    goto :goto_86

    :cond_70
    move/from16 v37, v11

    goto :goto_85

    :cond_71
    move-object/from16 v40, v2

    :cond_72
    :goto_85
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v40

    const/16 v11, 0x64

    goto :goto_84

    :cond_73
    :goto_86
    const/16 v40, 0x0

    .line 626
    :cond_74
    :try_start_61
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v1, v9, v4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v1

    const-wide/16 v41, 0x0

    cmp-long v4, v1, v41

    if-eqz v4, :cond_76

    .line 628
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_30
    .catchall {:try_start_61 .. :try_end_61} :catchall_2c

    if-eqz v4, :cond_76

    move-wide/from16 v47, v14

    .line 629
    :try_start_62
    iget-wide v14, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v49, v14, v6

    cmp-long v11, v49, v54

    if-lez v11, :cond_75

    sub-long v54, v14, v6

    :cond_75
    move-wide/from16 v14, v54

    long-to-float v11, v14

    const/high16 v28, 0x447a0000    # 1000.0f

    div-float v11, v11, v28

    div-float v11, v11, v26

    .line 632
    invoke-interface {v4, v1, v2, v11}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v54, v14

    goto :goto_87

    :cond_76
    move-wide/from16 v47, v14

    const/high16 v28, 0x447a0000    # 1000.0f

    :cond_77
    :goto_87
    move/from16 v1, v21

    move-object/from16 v4, v27

    move/from16 v14, v51

    goto/16 :goto_8a

    :cond_78
    move-object/from16 v60, v11

    move-wide/from16 v47, v14

    const/4 v2, -0x5

    const/high16 v28, 0x447a0000    # 1000.0f

    if-ne v5, v2, :cond_77

    .line 636
    new-array v2, v4, [B

    .line 637
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v4

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 638
    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 639
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 642
    iget v1, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    :goto_88
    if-ltz v1, :cond_7a

    const/4 v4, 0x3

    if-le v1, v4, :cond_7a

    .line 644
    aget-byte v14, v2, v1

    if-ne v14, v11, :cond_79

    add-int/lit8 v14, v1, -0x1

    aget-byte v14, v2, v14

    if-nez v14, :cond_79

    add-int/lit8 v14, v1, -0x2

    aget-byte v14, v2, v14

    if-nez v14, :cond_79

    add-int/lit8 v14, v1, -0x3

    aget-byte v15, v2, v14

    if-nez v15, :cond_79

    .line 645
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 646
    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    const/4 v4, 0x0

    .line 647
    invoke-virtual {v1, v2, v4, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 648
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v14

    invoke-virtual {v15, v2, v14, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v2, v1

    goto :goto_89

    :cond_79
    add-int/lit8 v1, v1, -0x1

    const/4 v11, 0x1

    goto :goto_88

    :cond_7a
    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_89
    move/from16 v1, v21

    move-object/from16 v4, v27

    move/from16 v14, v51

    .line 656
    invoke-static {v4, v1, v14}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v11

    if-eqz v2, :cond_7b

    if-eqz v15, :cond_7b

    .line 658
    invoke-virtual {v11, v12, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v2, "csd-1"

    .line 659
    invoke-virtual {v11, v2, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 661
    :cond_7b
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v15, 0x0

    invoke-virtual {v2, v11, v15}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_31
    .catchall {:try_start_62 .. :try_end_62} :catchall_2d

    move v5, v2

    goto :goto_8a

    :catchall_2c
    move-exception v0

    move-wide/from16 v47, v14

    goto/16 :goto_8f

    :catch_30
    move-exception v0

    move-wide/from16 v47, v14

    goto/16 :goto_7d

    :cond_7c
    move-object/from16 v60, v11

    move-wide/from16 v47, v14

    move/from16 v1, v21

    move-object/from16 v4, v27

    move/from16 v14, v51

    const/high16 v28, 0x447a0000    # 1000.0f

    .line 664
    :goto_8a
    :try_start_63
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    goto :goto_8b

    :cond_7d
    const/4 v2, 0x0

    :goto_8b
    const/4 v11, 0x0

    .line 665
    invoke-virtual {v8, v3, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_3a
    .catchall {:try_start_63 .. :try_end_63} :catchall_35

    const/4 v11, -0x1

    move-object/from16 v71, v22

    move/from16 v22, v2

    move-object/from16 v2, v71

    :goto_8c
    if-eq v3, v11, :cond_7e

    move/from16 v3, p10

    move/from16 v21, v1

    move-object/from16 v27, v4

    move-object/from16 p10, v8

    move-object/from16 v57, v12

    move/from16 v51, v14

    move/from16 v4, v43

    move-wide/from16 v11, v44

    move-wide/from16 v14, v47

    move/from16 v1, p8

    goto/16 :goto_79

    :cond_7e
    if-nez v33, :cond_95

    move-object/from16 v57, v12

    const-wide/16 v11, 0x9c4

    .line 672
    :try_start_64
    invoke-virtual {v10, v9, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_39
    .catchall {:try_start_64 .. :try_end_64} :catchall_34

    const/4 v15, -0x1

    if-ne v3, v15, :cond_7f

    move/from16 v11, p9

    move/from16 v21, v1

    move-object v12, v2

    move-object/from16 v37, v4

    move/from16 v51, v5

    move-object/from16 v7, v56

    :goto_8d
    const/4 v3, 0x0

    goto/16 :goto_a3

    :cond_7f
    const/4 v11, -0x3

    if-ne v3, v11, :cond_81

    :cond_80
    :goto_8e
    move/from16 v11, p9

    move/from16 v21, v1

    move-object v12, v2

    move-object/from16 v37, v4

    move/from16 v51, v5

    move-wide/from16 v3, v44

    move-object/from16 v7, v56

    goto/16 :goto_a2

    :cond_81
    const/4 v11, -0x2

    if-ne v3, v11, :cond_82

    .line 678
    :try_start_65
    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 679
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_80

    .line 680
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newFormat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_31
    .catchall {:try_start_65 .. :try_end_65} :catchall_2d

    goto :goto_8e

    :catchall_2d
    move-exception v0

    :goto_8f
    move/from16 v14, p7

    move/from16 v10, p8

    move/from16 v11, p9

    goto/16 :goto_a6

    :catch_31
    move-exception v0

    move/from16 v11, p9

    :goto_90
    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v20, v5

    goto/16 :goto_a4

    :cond_82
    if-ltz v3, :cond_94

    .line 685
    :try_start_66
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v21, v1

    move-object v12, v2

    if-eqz v11, :cond_83

    const/4 v11, 0x1

    goto :goto_91

    :cond_83
    const/4 v11, 0x0

    .line 686
    :goto_91
    iget-wide v1, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_39
    .catchall {:try_start_66 .. :try_end_66} :catchall_34

    const-wide/16 v41, 0x0

    cmp-long v27, v47, v41

    if-lez v27, :cond_84

    cmp-long v27, v1, v47

    if-ltz v27, :cond_84

    .line 691
    :try_start_67
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_31
    .catchall {:try_start_67 .. :try_end_67} :catchall_2d

    const/4 v11, 0x0

    const/16 v23, 0x1

    const/16 v33, 0x1

    :cond_84
    const-wide/16 v41, 0x0

    cmp-long v27, v34, v41

    if-ltz v27, :cond_87

    .line 694
    :try_start_68
    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_87

    sub-long v49, v34, v6

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->abs(J)J

    move-result-wide v49
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_34
    .catchall {:try_start_68 .. :try_end_68} :catchall_32

    const v15, 0xf4240

    move/from16 v27, v11

    move/from16 v11, p9

    :try_start_69
    div-int/2addr v15, v11
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_33
    .catchall {:try_start_69 .. :try_end_69} :catchall_31

    move-object/from16 v37, v4

    move/from16 v51, v5

    int-to-long v4, v15

    cmp-long v4, v49, v4

    if-lez v4, :cond_86

    const-wide/16 v4, 0x0

    cmp-long v15, v6, v4

    if-lez v15, :cond_85

    .line 696
    :try_start_6a
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_35
    .catchall {:try_start_6a .. :try_end_6a} :catchall_33

    const/4 v7, 0x0

    goto :goto_92

    .line 698
    :cond_85
    :try_start_6b
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_35
    .catchall {:try_start_6b .. :try_end_6b} :catchall_30

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :try_start_6c
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_35
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2f

    :goto_92
    add-long v61, v44, v29

    .line 706
    :try_start_6d
    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, -0x5

    and-int/2addr v4, v6

    iput v4, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 707
    invoke-virtual {v10}, Landroid/media/MediaCodec;->flush()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_32
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2e

    move/from16 v23, v7

    move/from16 v27, v23

    move/from16 v33, v27

    move-wide/from16 v47, v34

    const/4 v4, 0x1

    const-wide/16 v41, 0x0

    move-wide/from16 v34, v18

    goto/16 :goto_97

    :catchall_2e
    move-exception v0

    move/from16 v14, p7

    move/from16 v10, p8

    move-object v1, v0

    move v6, v7

    move/from16 v7, v32

    move-wide/from16 v47, v34

    move/from16 v5, v51

    move-wide/from16 v34, v18

    goto/16 :goto_c0

    :catch_32
    move-exception v0

    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v4, v32

    move-wide/from16 v14, v34

    move/from16 v20, v51

    move-wide/from16 v34, v18

    goto/16 :goto_b5

    :catchall_2f
    move-exception v0

    goto :goto_93

    :catchall_30
    move-exception v0

    const/4 v7, 0x0

    :goto_93
    move/from16 v14, p7

    move/from16 v10, p8

    move-object v1, v0

    move v6, v7

    move/from16 v7, v32

    move/from16 v5, v51

    goto/16 :goto_c0

    :cond_86
    const/4 v6, -0x5

    const/4 v7, 0x0

    goto :goto_96

    :catchall_31
    move-exception v0

    goto :goto_94

    :catch_33
    move-exception v0

    goto :goto_95

    :catchall_32
    move-exception v0

    move/from16 v11, p9

    :goto_94
    move/from16 v51, v5

    const/4 v7, 0x0

    move/from16 v14, p7

    move/from16 v10, p8

    move-object v1, v0

    move v6, v7

    move/from16 v7, v32

    goto/16 :goto_c0

    :catch_34
    move-exception v0

    move/from16 v11, p9

    :goto_95
    move/from16 v51, v5

    goto/16 :goto_a0

    :cond_87
    move-object/from16 v37, v4

    move/from16 v51, v5

    move/from16 v27, v11

    const/4 v6, -0x5

    const/4 v7, 0x0

    move/from16 v11, p9

    :goto_96
    move v4, v7

    const-wide/16 v41, 0x0

    :goto_97
    cmp-long v5, v65, v41

    if-lez v5, :cond_88

    .line 710
    :try_start_6e
    iget-wide v6, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v6, v6, v65

    cmp-long v5, v6, v24

    if-gez v5, :cond_88

    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_88

    const/4 v6, 0x0

    goto :goto_98

    :catch_35
    move-exception v0

    goto/16 :goto_a0

    :cond_88
    move/from16 v6, v27

    :goto_98
    const-wide/16 v41, 0x0

    cmp-long v5, v34, v41

    move v15, v6

    if-ltz v5, :cond_89

    move-wide/from16 v6, v34

    goto :goto_99

    :cond_89
    move-wide/from16 v6, p12

    :goto_99
    cmp-long v27, v6, v41

    if-lez v27, :cond_8d

    cmp-long v27, v67, v18

    if-nez v27, :cond_8d

    cmp-long v1, v1, v6

    if-gez v1, :cond_8b

    .line 717
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8a

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frame startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " present time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8a
    const/4 v6, 0x0

    goto :goto_9a

    .line 721
    :cond_8b
    iget-wide v1, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v6, -0x80000000

    cmp-long v6, v44, v6

    if-eqz v6, :cond_8c

    sub-long v61, v61, v1

    :cond_8c
    move-wide/from16 v67, v1

    :cond_8d
    move v6, v15

    :goto_9a
    if-eqz v4, :cond_8e

    move-wide/from16 v67, v18

    goto :goto_9b

    :cond_8e
    cmp-long v1, v34, v18

    if-nez v1, :cond_8f

    const-wide/16 v1, 0x0

    cmp-long v4, v61, v1

    if-eqz v4, :cond_8f

    .line 731
    iget-wide v1, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v1, v1, v61

    iput-wide v1, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_35
    .catchall {:try_start_6e .. :try_end_6e} :catchall_33

    .line 733
    :cond_8f
    :try_start_6f
    invoke-virtual {v10, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_9b
    if-eqz v6, :cond_92

    .line 736
    iget-wide v1, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_37
    .catchall {:try_start_6f .. :try_end_6f} :catchall_33

    move-wide/from16 v3, v44

    if-ltz v5, :cond_90

    .line 738
    :try_start_70
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_35
    .catchall {:try_start_70 .. :try_end_70} :catchall_33

    .line 742
    :cond_90
    :try_start_71
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_36
    .catchall {:try_start_71 .. :try_end_71} :catchall_33

    const/4 v6, 0x0

    goto :goto_9c

    :catch_36
    move-exception v0

    move-object v5, v0

    .line 745
    :try_start_72
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v6, 0x1

    :goto_9c
    if-nez v6, :cond_91

    .line 748
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V

    .line 749
    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_37
    .catchall {:try_start_72 .. :try_end_72} :catchall_33

    const-wide/16 v44, 0x3e8

    mul-long v5, v5, v44

    move-object/from16 v7, v56

    :try_start_73
    invoke-virtual {v7, v5, v6}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 750
    invoke-virtual {v7}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_9d

    :cond_91
    move-object/from16 v7, v56

    :goto_9d
    move-wide/from16 v65, v1

    goto :goto_9e

    :cond_92
    move-wide/from16 v3, v44

    move-object/from16 v7, v56

    .line 753
    :goto_9e
    iget v1, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_96

    .line 755
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_93

    const-string v1, "decoder stream end"

    .line 756
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 758
    :cond_93
    invoke-virtual {v8}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move-wide/from16 v44, v3

    goto/16 :goto_8d

    :catch_37
    move-exception v0

    goto :goto_9f

    :cond_94
    move/from16 v11, p9

    move/from16 v51, v5

    move-object/from16 v7, v56

    .line 683
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_38
    .catchall {:try_start_73 .. :try_end_73} :catchall_33

    :catchall_33
    move-exception v0

    move/from16 v14, p7

    move/from16 v10, p8

    move-object v1, v0

    move/from16 v7, v32

    move/from16 v5, v51

    goto/16 :goto_25

    :catch_38
    move-exception v0

    move-object/from16 v31, p16

    move-object v1, v0

    move-object/from16 v56, v7

    goto :goto_a1

    :catchall_34
    move-exception v0

    move/from16 v11, p9

    move/from16 v51, v5

    goto/16 :goto_a5

    :catch_39
    move-exception v0

    move/from16 v11, p9

    move/from16 v51, v5

    :goto_9f
    move-object/from16 v7, v56

    :goto_a0
    move-object/from16 v31, p16

    move-object v1, v0

    :goto_a1
    move/from16 v4, v32

    move-wide/from16 v14, v47

    move/from16 v20, v51

    goto/16 :goto_b5

    :cond_95
    move/from16 v11, p9

    move/from16 v21, v1

    move-object/from16 v37, v4

    move/from16 v51, v5

    move-object/from16 v57, v12

    move-wide/from16 v3, v44

    move-object/from16 v7, v56

    move-object v12, v2

    :cond_96
    :goto_a2
    move-wide/from16 v44, v3

    move/from16 v3, p10

    :goto_a3
    move/from16 v1, p8

    move-object/from16 v56, v7

    move-object/from16 p10, v8

    move-object v2, v12

    move-object/from16 v27, v37

    move/from16 v4, v43

    move-wide/from16 v11, v44

    move/from16 v5, v51

    move-wide/from16 v6, p12

    move/from16 v51, v14

    move-wide/from16 v14, v47

    goto/16 :goto_79

    :catchall_35
    move-exception v0

    move/from16 v11, p9

    goto :goto_a5

    :catch_3a
    move-exception v0

    move/from16 v11, p9

    move-object/from16 v7, v56

    goto/16 :goto_90

    :cond_97
    move/from16 v11, p9

    move-wide/from16 v47, v14

    move-object/from16 v7, v56

    .line 599
    :try_start_74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    move/from16 v11, p9

    move-wide/from16 v47, v14

    move-object/from16 v7, v56

    .line 590
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_3b
    .catchall {:try_start_74 .. :try_end_74} :catchall_36

    :catchall_36
    move-exception v0

    goto :goto_a5

    :catch_3b
    move-exception v0

    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v20, v5

    move-object/from16 v56, v7

    :goto_a4
    move/from16 v4, v32

    move-wide/from16 v14, v47

    goto/16 :goto_b5

    :catch_3c
    move-exception v0

    move/from16 v11, p9

    goto :goto_a7

    :catchall_37
    move-exception v0

    move/from16 v11, p9

    move-wide/from16 v47, v14

    :goto_a5
    move/from16 v14, p7

    move/from16 v10, p8

    :goto_a6
    move-object v1, v0

    move/from16 v7, v32

    goto/16 :goto_25

    :catch_3d
    move-exception v0

    move/from16 v11, p9

    move-object/from16 v8, p10

    :goto_a7
    move-wide/from16 v47, v14

    move-object/from16 v7, v56

    :goto_a8
    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v20, v5

    move/from16 v4, v32

    goto/16 :goto_b5

    :catchall_38
    move-exception v0

    move/from16 v11, p9

    move/from16 v10, p8

    move-object v1, v0

    move-wide/from16 v47, v14

    move/from16 v7, v32

    move/from16 v5, v50

    goto/16 :goto_b1

    :catch_3e
    move-exception v0

    move/from16 v11, p9

    move-object/from16 p16, v9

    move/from16 v58, v53

    move-object/from16 v7, v56

    move-object/from16 v53, v8

    :goto_a9
    move-object/from16 v8, p10

    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v4, v32

    move/from16 v20, v50

    goto/16 :goto_b5

    :catchall_39
    move-exception v0

    move/from16 v11, p9

    goto/16 :goto_ad

    :catch_3f
    move-exception v0

    move/from16 v11, p9

    move-object/from16 p16, v9

    move/from16 v58, v53

    move-object/from16 v7, v56

    move-object/from16 v53, v8

    move-object/from16 v8, p10

    move-object/from16 v31, p16

    move-object v1, v0

    move/from16 v4, v32

    const/16 v20, -0x5

    goto/16 :goto_b5

    :catch_40
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v14, p14

    goto :goto_aa

    :catch_41
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v14, p14

    move-object/from16 v10, v52

    :goto_aa
    move/from16 v58, v53

    move-object/from16 v7, v56

    move-object/from16 v53, v8

    move-object/from16 v8, p10

    move-object v1, v0

    move/from16 v4, v32

    const/16 v20, -0x5

    const/16 v31, 0x0

    goto/16 :goto_b5

    :catchall_3a
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-wide/from16 v14, p14

    goto :goto_ad

    :catch_42
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v11, p9

    move-object/from16 v8, p10

    move-wide/from16 v14, p14

    move-object/from16 v10, v52

    move/from16 v58, v53

    move-object/from16 v7, v56

    move-object v1, v0

    goto :goto_ab

    :catch_43
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move-object v10, v3

    move-object v8, v7

    move v11, v13

    move/from16 v58, v27

    move-object/from16 v13, p0

    move-object v7, v5

    move-object v1, v0

    move-object/from16 v56, v7

    :goto_ab
    move/from16 v4, v32

    goto :goto_ac

    :catch_44
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move-object v8, v7

    move v11, v13

    move/from16 v58, v27

    move-object/from16 v13, p0

    move-object v7, v5

    move-object v1, v0

    move-object/from16 v56, v7

    move/from16 v4, v32

    const/4 v10, 0x0

    :goto_ac
    const/16 v20, -0x5

    const/16 v31, 0x0

    const/16 v53, 0x0

    goto/16 :goto_b5

    :catchall_3b
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move v11, v13

    move-object/from16 v13, p0

    :goto_ad
    move/from16 v10, p8

    move-object v1, v0

    move-wide/from16 v47, v14

    move/from16 v7, v32

    goto/16 :goto_b0

    :catch_45
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move-object v8, v7

    move v11, v13

    move/from16 v58, v27

    move-object/from16 v13, p0

    move-object v1, v0

    move/from16 v4, v32

    goto/16 :goto_b4

    :catchall_3c
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move v11, v13

    move-object/from16 v13, p0

    goto :goto_ae

    :catch_46
    move-exception v0

    move-wide/from16 v14, p14

    move-wide/from16 v34, p16

    move v11, v13

    move/from16 v58, v27

    move-object/from16 v13, p0

    goto :goto_b3

    :catchall_3d
    move-exception v0

    move-wide/from16 v34, p16

    move v11, v13

    move-object v13, v14

    move-wide/from16 v14, p14

    :goto_ae
    move/from16 v10, p8

    move-object v1, v0

    move v7, v4

    goto :goto_af

    :catch_47
    move-exception v0

    move-wide/from16 v34, p16

    move v11, v13

    move-object v13, v14

    move/from16 v58, v27

    move-wide/from16 v14, p14

    goto :goto_b3

    :catchall_3e
    move-exception v0

    move v11, v13

    move-object v13, v14

    move-wide/from16 v14, p14

    move/from16 v10, p8

    move/from16 v7, p10

    move-wide/from16 v34, p16

    move-object v1, v0

    :goto_af
    move-wide/from16 v47, v14

    :goto_b0
    const/4 v5, -0x5

    :goto_b1
    const/4 v6, 0x0

    :goto_b2
    move/from16 v14, p7

    goto/16 :goto_c0

    :catch_48
    move-exception v0

    move/from16 v58, v3

    move v11, v13

    move-object v13, v14

    move-wide/from16 v14, p14

    move/from16 v4, p10

    move-wide/from16 v34, p16

    :goto_b3
    move-object v1, v0

    const/4 v8, 0x0

    :goto_b4
    const/4 v10, 0x0

    const/16 v20, -0x5

    const/16 v31, 0x0

    const/16 v53, 0x0

    const/16 v56, 0x0

    .line 768
    :goto_b5
    :try_start_75
    instance-of v2, v1, Ljava/lang/IllegalStateException;
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_42

    if-eqz v2, :cond_99

    if-nez p21, :cond_99

    const/4 v6, 0x1

    goto :goto_b6

    :cond_99
    const/4 v6, 0x0

    .line 771
    :goto_b6
    :try_start_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_41

    move/from16 v3, p8

    :try_start_77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_40

    move/from16 v5, p7

    :try_start_78
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 772
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_3f

    move/from16 v36, v6

    move-object/from16 v9, v31

    const/4 v6, 0x1

    .line 776
    :goto_b7
    :try_start_79
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v2, v58

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v10, :cond_9b

    .line 778
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V

    .line 779
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    goto :goto_b9

    :catchall_3f
    move-exception v0

    goto :goto_b8

    :catchall_40
    move-exception v0

    move/from16 v5, p7

    goto :goto_b8

    :catchall_41
    move-exception v0

    move/from16 v5, p7

    move/from16 v3, p8

    :goto_b8
    move-object v1, v0

    move v10, v3

    move v7, v4

    move-wide/from16 v47, v14

    goto :goto_ba

    :catchall_42
    move-exception v0

    move/from16 v5, p7

    move/from16 v3, p8

    move-object v1, v0

    move v10, v3

    move v7, v4

    move-wide/from16 v47, v14

    const/4 v6, 0x0

    goto :goto_ba

    :cond_9a
    move/from16 v5, p7

    move/from16 v3, p8

    move v11, v13

    move-object v13, v14

    move-wide/from16 v14, p14

    move/from16 v4, p10

    move-wide/from16 v34, p16

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v20, -0x5

    const/16 v36, 0x0

    const/16 v53, 0x0

    const/16 v56, 0x0

    :cond_9b
    :goto_b9
    if-eqz v53, :cond_9c

    .line 783
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_bb

    :catchall_43
    move-exception v0

    move-object v1, v0

    move v10, v3

    move v7, v4

    move-wide/from16 v47, v14

    move/from16 v6, v36

    :goto_ba
    move v14, v5

    move/from16 v5, v20

    goto/16 :goto_c0

    :cond_9c
    :goto_bb
    if-eqz v56, :cond_9d

    .line 786
    invoke-virtual/range {v56 .. v56}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_9d
    if-eqz v8, :cond_9e

    .line 789
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 790
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    :cond_9e
    if-eqz v9, :cond_9f

    .line 793
    invoke-virtual {v9}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 795
    :cond_9f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_43

    move v10, v3

    move/from16 v1, v20

    .line 805
    :goto_bc
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_a0

    .line 806
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 808
    :cond_a0
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v2, :cond_a1

    .line 810
    :try_start_7a
    invoke-virtual {v2}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 811
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v1

    iput-wide v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_44

    goto :goto_bd

    :catchall_44
    move-exception v0

    move-object v1, v0

    .line 813
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a1
    :goto_bd
    move v12, v4

    move v8, v5

    move v9, v10

    move-wide/from16 v47, v14

    goto/16 :goto_c2

    :catchall_45
    move-exception v0

    move-wide/from16 v14, p14

    move v11, v5

    move v5, v9

    move v3, v10

    move-object v13, v12

    goto :goto_be

    :catchall_46
    move-exception v0

    move v11, v8

    move v5, v9

    move v3, v10

    move-object v13, v15

    move-wide/from16 v14, p14

    :goto_be
    move/from16 v7, p10

    move-wide/from16 v34, p16

    move-object v1, v0

    move-wide/from16 v47, v14

    const/4 v6, 0x0

    move v14, v5

    :goto_bf
    const/4 v5, -0x5

    .line 802
    :goto_c0
    :try_start_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 803
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_48

    .line 805
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_a2

    .line 806
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 808
    :cond_a2
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_a3

    .line 810
    :try_start_7c
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 811
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v1

    iput-wide v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_47

    goto :goto_c1

    :catchall_47
    move-exception v0

    move-object v1, v0

    .line 813
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a3
    :goto_c1
    move/from16 v36, v6

    move v12, v7

    move v9, v10

    move v8, v14

    const/4 v6, 0x1

    :goto_c2
    if-eqz v36, :cond_a4

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    move v11, v12

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, v47

    move-wide/from16 v17, v34

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    .line 819
    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z

    move-result v1

    return v1

    .line 826
    :cond_a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    .line 827
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a5

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compression completed time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " needCompress="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " w="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " file size="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a5
    return v6

    :catchall_48
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 805
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_a6

    .line 806
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 808
    :cond_a6
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_a7

    .line 810
    :try_start_7d
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 811
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_49

    goto :goto_c3

    :catchall_49
    move-exception v0

    move-object v3, v0

    .line 813
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 816
    :cond_a7
    :goto_c3
    throw v2
.end method

.method private static createFragmentShader(IIIIZ)Ljava/lang/String;
    .locals 3

    .line 997
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

    .line 999
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1002
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

    .line 1005
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

    .line 1024
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

    .line 836
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 837
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

    .line 847
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 848
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 849
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 851
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 853
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 857
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 859
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

    .line 863
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 864
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "mime"

    .line 866
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 869
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 871
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

    .line 873
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 876
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 878
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 885
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 888
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 890
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 893
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 897
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

    .line 900
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 901
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

    .line 911
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 912
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 915
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 917
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 918
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

    .line 921
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

    .line 924
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 925
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 926
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 927
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

    .line 936
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 937
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 939
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 943
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

    .line 945
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 947
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

    .line 948
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 949
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 950
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 952
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 953
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

    .line 956
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 964
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

    .line 969
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

    .line 976
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 979
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
