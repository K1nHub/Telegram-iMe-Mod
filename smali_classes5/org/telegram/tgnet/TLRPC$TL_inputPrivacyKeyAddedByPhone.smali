.class public Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;
.super Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12729
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x2ede6423

    .line 12734
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
