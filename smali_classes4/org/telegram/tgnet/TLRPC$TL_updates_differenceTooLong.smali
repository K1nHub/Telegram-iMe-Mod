.class public Lorg/telegram/tgnet/TLRPC$TL_updates_differenceTooLong;
.super Lorg/telegram/tgnet/TLRPC$updates_Difference;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x4afe8f6d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5587
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_Difference;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 5592
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->pts:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 5596
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceTooLong;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5597
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
