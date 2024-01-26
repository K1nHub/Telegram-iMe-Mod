.class public Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public button_id:I

.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public url:Ljava/lang/String;

.field public write_allowed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60920
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60931
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$UrlAuthResult;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UrlAuthResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x4ed38edb

    .line 60935
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60936
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->write_allowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    .line 60937
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60938
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 60939
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60941
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 60942
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60944
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 60945
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->button_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60947
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 60948
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
