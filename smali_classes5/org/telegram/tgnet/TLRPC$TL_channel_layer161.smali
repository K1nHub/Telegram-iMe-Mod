.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer161;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46532
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 46536
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer161;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V
    .locals 7

    .line 46540
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 46541
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 46542
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 46543
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 46544
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 46545
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 46546
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 46547
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 46548
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 46549
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 46550
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 46551
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 46552
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    .line 46553
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_d

    :cond_d
    move v1, v2

    .line 46554
    :goto_d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_e

    :cond_e
    move v1, v2

    .line 46555
    :goto_e
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_f

    :cond_f
    move v1, v2

    .line 46556
    :goto_f
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_10

    :cond_10
    move v1, v2

    .line 46557
    :goto_10
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_11

    :cond_11
    move v1, v2

    .line 46558
    :goto_11
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_12

    :cond_12
    move v1, v2

    .line 46559
    :goto_12
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_13

    :cond_13
    move v0, v2

    .line 46560
    :goto_13
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    .line 46561
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_14

    :cond_14
    move v1, v2

    .line 46562
    :goto_14
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_15

    :cond_15
    move v0, v2

    .line 46563
    :goto_15
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    .line 46564
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 46565
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_16

    .line 46566
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 46568
    :cond_16
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 46569
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_17

    .line 46570
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 46572
    :cond_17
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 46573
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    iput p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    .line 46574
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 p3, p3, 0x200

    const-string v0, "wrong Vector magic, got %x"

    const v1, 0x1cb5c415

    if-eqz p3, :cond_1b

    .line 46575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    if-eq p3, v1, :cond_19

    if-nez p2, :cond_18

    return-void

    .line 46578
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46582
    :cond_19
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    move v4, v2

    :goto_16
    if-ge v4, p3, :cond_1b

    .line 46584
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    move-result-object v5

    if-nez v5, :cond_1a

    return-void

    .line 46588
    :cond_1a
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 46591
    :cond_1b
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 p3, p3, 0x4000

    if-eqz p3, :cond_1c

    .line 46592
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 46594
    :cond_1c
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const v4, 0x8000

    and-int/2addr p3, v4

    if-eqz p3, :cond_1d

    .line 46595
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 46597
    :cond_1d
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr p3, v4

    if-eqz p3, :cond_1e

    .line 46598
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 46600
    :cond_1e
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr p3, v4

    if-eqz p3, :cond_1f

    .line 46601
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    iput p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 46603
    :cond_1f
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/2addr p3, v3

    if-eqz p3, :cond_23

    .line 46604
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    if-eq p3, v1, :cond_21

    if-nez p2, :cond_20

    return-void

    .line 46607
    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46611
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p3

    :goto_17
    if-ge v2, p3, :cond_23

    .line 46613
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_username;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_username;

    move-result-object v0

    if-nez v0, :cond_22

    return-void

    .line 46617
    :cond_22
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, -0x7cda6b9c

    .line 46623
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46624
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46625
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46626
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46627
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46628
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46629
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x200

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x201

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46630
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x801

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46631
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x1000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x1001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46632
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_8

    :cond_8
    const v1, -0x80001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46633
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46634
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_a

    :cond_a
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46635
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_b

    :cond_b
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46636
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_c
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46637
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_d
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46638
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_e
    const v1, -0x2000001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46639
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v1, :cond_f

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_f
    const v1, -0x4000001

    and-int/2addr v0, v1

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46640
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_10
    const v1, -0x8000001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46641
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_11
    const v1, -0x10000001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46642
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    goto :goto_12

    :cond_12
    const v1, -0x20000001

    and-int/2addr v0, v1

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46643
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    goto :goto_13

    :cond_13
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 46644
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46645
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_14

    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, -0x3

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 46646
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x4

    goto :goto_15

    :cond_15
    and-int/lit8 v0, v0, -0x5

    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 46647
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46648
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 46649
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_16

    .line 46650
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 46652
    :cond_16
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 46653
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_17

    .line 46654
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 46656
    :cond_17
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 46657
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46658
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_18

    .line 46659
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 46661
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_16
    if-ge v3, v0, :cond_18

    .line 46663
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 46666
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_19

    .line 46667
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 46669
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1a

    .line 46670
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 46672
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1b

    .line 46673
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 46675
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1c

    .line 46676
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46678
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 46679
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46680
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 46681
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_17
    if-ge v1, v0, :cond_1d

    .line 46683
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_username;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1d
    return-void
.end method
