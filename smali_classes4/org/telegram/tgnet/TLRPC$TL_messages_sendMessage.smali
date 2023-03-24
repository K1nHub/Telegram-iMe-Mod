.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1cc20387


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

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public noforwards:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public random_id:J

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to_msg_id:I

.field public schedule_date:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public top_msg_id:I

.field public update_stickersets_order:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52300
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 52316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 52321
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 52325
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52326
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52327
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52328
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->background:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52329
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52330
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->noforwards:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52331
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->update_stickersets_order:Z

    if-eqz v1, :cond_5

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 52332
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52333
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 52334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 52335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52337
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 52338
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52340
    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 52341
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 52342
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 52343
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 52345
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    const v0, 0x1cb5c415

    .line 52346
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52347
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52348
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_9

    .line 52350
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 52353
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 52354
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->schedule_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52356
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    .line 52357
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_b
    return-void
.end method
