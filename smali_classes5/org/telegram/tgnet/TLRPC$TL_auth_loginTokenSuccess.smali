.class public Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;
.super Lorg/telegram/tgnet/TLRPC$auth_LoginToken;
.source "TLRPC.java"


# instance fields
.field public authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19266
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 19272
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_Authorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x390d5c5e

    .line 19276
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19277
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
