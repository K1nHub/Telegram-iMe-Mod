.class public Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x198fb446


# instance fields
.field public button_id:I

.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55387
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55397
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$UrlAuthResult;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UrlAuthResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 55401
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55402
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55403
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 55404
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55406
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 55407
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55409
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 55410
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->button_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55412
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 55413
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
