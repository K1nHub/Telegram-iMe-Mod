.class public Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x25939651


# instance fields
.field public date:I

.field public flags:I

.field public pts:I

.field public pts_total_limit:I

.field public qts:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54674
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54684
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$updates_Difference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54688
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54689
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54690
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54691
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54692
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts_total_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54694
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54695
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
