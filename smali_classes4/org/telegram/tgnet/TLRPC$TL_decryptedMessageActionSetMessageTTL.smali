.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5e8cc514


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34065
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 34070
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 34074
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34075
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
