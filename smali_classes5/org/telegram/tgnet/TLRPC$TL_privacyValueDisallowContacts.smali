.class public Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowContacts;
.super Lorg/telegram/tgnet/TLRPC$PrivacyRule;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8140
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x77705e6

    .line 8145
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
