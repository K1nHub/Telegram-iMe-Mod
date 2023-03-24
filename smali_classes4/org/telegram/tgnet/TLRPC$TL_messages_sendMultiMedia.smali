.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x490ee5e4


# instance fields
.field public background:Z

.field public clear_draft:Z

.field public flags:I

.field public multi_media:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;",
            ">;"
        }
    .end annotation
.end field

.field public noforwards:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

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

    .line 55348
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 55360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55365
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 55369
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55370
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 55371
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 55372
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->clear_draft:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 55373
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->noforwards:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x4000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x4001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 55374
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->update_stickersets_order:Z

    if-eqz v1, :cond_4

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_4

    :cond_4
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 55375
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55376
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55377
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 55378
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55380
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    .line 55381
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_6
    const v0, 0x1cb5c415

    .line 55383
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55384
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55385
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_7

    .line 55387
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 55389
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 55390
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->schedule_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55392
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 55393
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_9
    return-void
.end method
