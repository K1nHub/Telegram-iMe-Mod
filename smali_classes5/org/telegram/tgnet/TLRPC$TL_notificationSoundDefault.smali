.class public Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;
.super Lorg/telegram/tgnet/TLRPC$NotificationSound;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9482
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$NotificationSound;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x68174142

    .line 9487
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
