.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer135;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7a29341e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60697
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 60702
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60703
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 60704
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 60705
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 60706
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 60707
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 60708
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 60709
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 60710
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 60711
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 60712
    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    .line 60713
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 60714
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 60715
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 60717
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 60718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 60719
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 60721
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 60722
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 60724
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 60725
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    .line 60727
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 60728
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 60729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    .line 60730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_e

    .line 60732
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_e
    if-eqz v0, :cond_f

    .line 60734
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 60735
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 60738
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_10

    .line 60739
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 60741
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    const-string v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eqz v0, :cond_14

    .line 60742
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_12

    if-nez p2, :cond_11

    return-void

    .line 60745
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60749
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v0, :cond_14

    .line 60751
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    if-nez v6, :cond_13

    return-void

    .line 60755
    :cond_13
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 60758
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_15

    .line 60759
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 60761
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_16

    .line 60762
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    .line 60764
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-eqz v0, :cond_17

    .line 60765
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageReplies;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageReplies;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    .line 60767
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v5, 0x8000

    and-int/2addr v0, v5

    if-eqz v0, :cond_18

    .line 60768
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 60770
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_19

    .line 60771
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    .line 60773
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1a

    .line 60774
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 60776
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1e

    .line 60777
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_1c

    if-nez p2, :cond_1b

    return-void

    .line 60780
    :cond_1b
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60784
    :cond_1c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_b
    if-ge v3, v0, :cond_1e

    .line 60786
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    move-result-object v1

    if-nez v1, :cond_1d

    return-void

    .line 60790
    :cond_1d
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 60793
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 60794
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    :cond_1f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 60799
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60800
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60801
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60802
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60803
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60804
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60805
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60806
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_6

    :cond_6
    const v1, -0x80001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60807
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60808
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_8

    :cond_8
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60809
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x4000001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60810
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60811
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60812
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 60813
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60815
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60816
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 60817
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60819
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 60820
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 60822
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 60823
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60825
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60826
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 60827
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_e

    .line 60828
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60830
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    .line 60831
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60833
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_10

    .line 60834
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60835
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60836
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_10

    .line 60838
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 60841
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_11

    .line 60842
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60844
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    .line 60845
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60847
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    .line 60848
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60850
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    .line 60851
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60853
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    .line 60854
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 60856
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_16

    .line 60857
    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 60859
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_17

    .line 60860
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60861
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60862
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_b
    if-ge v1, v0, :cond_17

    .line 60864
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 60867
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 60868
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60870
    :cond_18
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/TLRPC$Message;->writeAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
