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

    .line 60982
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 60987
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 60988
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 60989
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 60990
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    .line 60991
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    .line 60992
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    .line 60993
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    .line 60994
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    move v1, v3

    .line 60995
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    move v1, v3

    .line 60996
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    .line 60997
    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    .line 60998
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 60999
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 61000
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 61002
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 61003
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 61004
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 61006
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 61007
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 61009
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 61010
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    .line 61012
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 61013
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 61014
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    .line 61015
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_e

    .line 61017
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_e
    if-eqz v0, :cond_f

    .line 61019
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 61020
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 61023
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_10

    .line 61024
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 61026
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    const-string/jumbo v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eqz v0, :cond_14

    .line 61027
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_12

    if-nez p2, :cond_11

    return-void

    .line 61030
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

    .line 61034
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v3

    :goto_a
    if-ge v5, v0, :cond_14

    .line 61036
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    if-nez v6, :cond_13

    return-void

    .line 61040
    :cond_13
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 61043
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_15

    .line 61044
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 61046
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_16

    .line 61047
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    .line 61049
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-eqz v0, :cond_17

    .line 61050
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageReplies;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageReplies;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    .line 61052
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v5, 0x8000

    and-int/2addr v0, v5

    if-eqz v0, :cond_18

    .line 61053
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 61055
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_19

    .line 61056
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    .line 61058
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1a

    .line 61059
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 61061
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1e

    .line 61062
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_1c

    if-nez p2, :cond_1b

    return-void

    .line 61065
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

    .line 61069
    :cond_1c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_b
    if-ge v3, v0, :cond_1e

    .line 61071
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    move-result-object v1

    if-nez v1, :cond_1d

    return-void

    .line 61075
    :cond_1d
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 61078
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 61079
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    :cond_1f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 61084
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61085
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

    .line 61086
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 61087
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 61088
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 61089
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 61090
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

    .line 61091
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

    .line 61092
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

    .line 61093
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

    .line 61094
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

    .line 61095
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61096
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61097
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 61098
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61100
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61101
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 61102
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61104
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 61105
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 61107
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 61108
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61110
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61111
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 61112
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_e

    .line 61113
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61115
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    .line 61116
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61118
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_10

    .line 61119
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61120
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61121
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_a
    if-ge v3, v0, :cond_10

    .line 61123
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 61126
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_11

    .line 61127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61129
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    .line 61130
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61132
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    .line 61133
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61135
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    .line 61136
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61138
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    .line 61139
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 61141
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_16

    .line 61142
    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 61144
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_17

    .line 61145
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61146
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61147
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_b
    if-ge v1, v0, :cond_17

    .line 61149
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 61152
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 61153
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61155
    :cond_18
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/TLRPC$Message;->writeAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
