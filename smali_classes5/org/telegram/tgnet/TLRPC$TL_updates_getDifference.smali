.class public Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public date:I

.field public flags:I

.field public pts:I

.field public pts_total_limit:I

.field public qts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57893
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57903
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$updates_Difference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x25939651

    .line 57907
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57908
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57909
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57910
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57911
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts_total_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57913
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57914
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
