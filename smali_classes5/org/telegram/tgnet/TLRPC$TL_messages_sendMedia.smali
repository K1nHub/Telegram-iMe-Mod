.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public background:Z

.field public clear_draft:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public invert_media:Z

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public message:Ljava/lang/String;

.field public noforwards:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public random_id:J

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public schedule_date:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public update_stickersets_order:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57543
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57564
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, 0x72ccc23d

    .line 57568
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57569
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57570
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57571
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->clear_draft:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57572
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->noforwards:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x4000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x4001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57573
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->update_stickersets_order:Z

    if-eqz v1, :cond_4

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_4

    :cond_4
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57574
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->invert_media:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 57575
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57576
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57577
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 57578
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57580
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57581
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57582
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 57583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 57584
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57586
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const v0, 0x1cb5c415

    .line 57587
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57588
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57589
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_8

    .line 57591
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 57594
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 57595
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->schedule_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57597
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    .line 57598
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_a
    return-void
.end method
