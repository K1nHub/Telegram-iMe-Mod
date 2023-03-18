.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer72;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6f2223ef


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60249
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 6

    .line 60253
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

    .line 60254
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 60255
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 60256
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 60257
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 60258
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 60259
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 60260
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    .line 60261
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 60262
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 60264
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 60265
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 60266
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 60268
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    .line 60269
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 60271
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 60272
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    .line 60273
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    .line 60275
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 60276
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 60277
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 60278
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_9

    .line 60280
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_9
    if-eqz v0, :cond_a

    .line 60282
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 60283
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 60286
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 60287
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 60289
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_f

    .line 60290
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_d

    if-nez p2, :cond_c

    return-void

    .line 60293
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string/jumbo v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60297
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_f

    .line 60299
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 60303
    :cond_e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 60306
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    .line 60307
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 60309
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 60310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 60312
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 60313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 60318
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer72;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60319
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

    .line 60320
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60321
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60322
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60323
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 60324
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60325
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60326
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    .line 60327
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60329
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60330
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 60331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60333
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    .line 60334
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60336
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 60337
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60339
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60340
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 60341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 60342
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60344
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 60345
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60347
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const v0, 0x1cb5c415

    .line 60348
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60349
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60350
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_b

    .line 60352
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 60355
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 60356
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60358
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 60359
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60361
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 60362
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 60364
    :cond_e
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/TLRPC$Message;->writeAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
