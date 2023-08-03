.class public Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;
.super Lorg/telegram/tgnet/TLRPC$PrivacyKey;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x43d154d0


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6232
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PrivacyKey;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 6237
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
