.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputPeer;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7f3b18ea


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49300
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 49305
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
