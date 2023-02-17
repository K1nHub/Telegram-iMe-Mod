.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeersDisabled;
.super Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4ad36c63


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36571
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 36576
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeersDisabled;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
