.class public Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;
.super Lorg/telegram/tgnet/TLRPC$WebPage;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x14eb8818


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20559
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 20564
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 20568
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20569
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
