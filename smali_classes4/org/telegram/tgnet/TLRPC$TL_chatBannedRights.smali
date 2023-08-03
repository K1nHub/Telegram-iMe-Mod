.class public Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x60edfbe8


# instance fields
.field public change_info:Z

.field public embed_links:Z

.field public flags:I

.field public invite_users:Z

.field public manage_topics:Z

.field public pin_messages:Z

.field public send_audios:Z

.field public send_docs:Z

.field public send_games:Z

.field public send_gifs:Z

.field public send_inline:Z

.field public send_media:Z

.field public send_messages:Z

.field public send_photos:Z

.field public send_plain:Z

.field public send_polls:Z

.field public send_roundvideos:Z

.field public send_stickers:Z

.field public send_videos:Z

.field public send_voices:Z

.field public until_date:I

.field public view_messages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 1

    .line 446
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 448
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_chatBannedRights"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 453
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 454
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 459
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 460
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 461
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 462
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    .line 463
    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    .line 464
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    .line 465
    :goto_5
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    .line 466
    :goto_6
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v2

    .line 467
    :goto_7
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 468
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 469
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    .line 470
    :goto_a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_b

    :cond_b
    move v4, v2

    .line 471
    :goto_b
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    move v4, v3

    goto :goto_c

    :cond_c
    move v4, v2

    .line 472
    :goto_c
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_d

    :cond_d
    move v4, v2

    .line 473
    :goto_d
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_e

    :cond_e
    move v4, v2

    .line 474
    :goto_e
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_f

    :cond_f
    move v4, v2

    .line 475
    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    move v4, v3

    goto :goto_10

    :cond_10
    move v4, v2

    .line 476
    :goto_10
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_11

    :cond_11
    move v4, v2

    .line 477
    :goto_11
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    move v4, v3

    goto :goto_12

    :cond_12
    move v4, v2

    .line 478
    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    const/high16 v4, 0x2000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_13

    move v2, v3

    .line 479
    :cond_13
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v1, :cond_14

    .line 481
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 482
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 483
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 484
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 485
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 486
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 488
    :cond_14
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 492
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 493
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v3, :cond_0

    .line 494
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    goto :goto_0

    .line 496
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 498
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v4, :cond_1

    .line 499
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    goto :goto_1

    .line 501
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 503
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    or-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    and-int/lit8 v1, v1, -0x2

    :goto_2
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 504
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v1, -0x3

    :goto_3
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 505
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    goto :goto_4

    :cond_4
    and-int/lit8 v1, v1, -0x5

    :goto_4
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 506
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x8

    goto :goto_5

    :cond_5
    and-int/lit8 v1, v1, -0x9

    :goto_5
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 507
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v2, :cond_6

    or-int/lit8 v1, v1, 0x10

    goto :goto_6

    :cond_6
    and-int/lit8 v1, v1, -0x11

    :goto_6
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 508
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x20

    goto :goto_7

    :cond_7
    and-int/lit8 v1, v1, -0x21

    :goto_7
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 509
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v2, :cond_8

    or-int/lit8 v1, v1, 0x40

    goto :goto_8

    :cond_8
    and-int/lit8 v1, v1, -0x41

    :goto_8
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 510
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0x80

    goto :goto_9

    :cond_9
    and-int/lit16 v1, v1, -0x81

    :goto_9
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 511
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v2, :cond_a

    or-int/lit16 v1, v1, 0x100

    goto :goto_a

    :cond_a
    and-int/lit16 v1, v1, -0x101

    :goto_a
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 512
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v2, :cond_b

    or-int/lit16 v1, v1, 0x400

    goto :goto_b

    :cond_b
    and-int/lit16 v1, v1, -0x401

    :goto_b
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 513
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v2, :cond_c

    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_c

    :cond_c
    const v2, -0x8001

    and-int/2addr v1, v2

    :goto_c
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 514
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v2, :cond_d

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    goto :goto_d

    :cond_d
    const v2, -0x20001

    and-int/2addr v1, v2

    :goto_d
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 515
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v2, :cond_e

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    goto :goto_e

    :cond_e
    const v2, -0x40001

    and-int/2addr v1, v2

    :goto_e
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    if-eqz v0, :cond_f

    const/high16 v0, 0x80000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_f
    const v0, -0x80001

    and-int/2addr v0, v1

    .line 516
    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 517
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_10
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 518
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_11
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 519
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_12

    :cond_12
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 520
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_13

    :cond_13
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 521
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_14

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_14

    :cond_14
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    if-eqz v3, :cond_15

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_15

    :cond_15
    const v1, -0x2000001

    and-int/2addr v0, v1

    .line 522
    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 523
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 524
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
