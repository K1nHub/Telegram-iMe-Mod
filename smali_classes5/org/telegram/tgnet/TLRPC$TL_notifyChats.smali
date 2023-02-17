.class public Lorg/telegram/tgnet/TLRPC$TL_notifyChats;
.super Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3ff8313d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1075
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 1080
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
