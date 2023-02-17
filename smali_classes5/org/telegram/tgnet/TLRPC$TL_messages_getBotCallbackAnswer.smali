.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6cbd35f9


# instance fields
.field public data:[B

.field public flags:I

.field public game:Z

.field public msg_id:I

.field public password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54425
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54436
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54440
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54441
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 54442
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54443
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54444
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54445
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 54446
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 54448
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 54449
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_2
    return-void
.end method
