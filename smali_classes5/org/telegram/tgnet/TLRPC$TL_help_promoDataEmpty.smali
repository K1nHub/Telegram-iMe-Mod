.class public Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;
.super Lorg/telegram/tgnet/TLRPC$help_PromoData;
.source "TLRPC.java"


# instance fields
.field public expires:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41710
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PromoData;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 41716
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;->expires:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x6709538b

    .line 41720
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41721
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
