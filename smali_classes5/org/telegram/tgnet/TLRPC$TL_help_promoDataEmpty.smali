.class public Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;
.super Lorg/telegram/tgnet/TLRPC$help_PromoData;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6709538b


# instance fields
.field public expires:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38967
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PromoData;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 38973
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;->expires:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 38977
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 38978
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_promoDataEmpty;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
