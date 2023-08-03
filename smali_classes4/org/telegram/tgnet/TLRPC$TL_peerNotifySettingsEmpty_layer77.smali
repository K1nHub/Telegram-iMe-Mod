.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x70a68512


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9982
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9987
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty_layer77;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
