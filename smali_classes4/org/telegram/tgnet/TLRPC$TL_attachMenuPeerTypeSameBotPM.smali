.class public Lorg/telegram/tgnet/TLRPC$TL_attachMenuPeerTypeSameBotPM;
.super Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7d6be90e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuPeerTypeSameBotPM;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
