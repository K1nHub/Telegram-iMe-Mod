.class public Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickersNotModified;
.super Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3923f39a


# instance fields
.field public count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20924
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 20930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickersNotModified;->count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 20934
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickersNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20935
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickersNotModified;->count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
