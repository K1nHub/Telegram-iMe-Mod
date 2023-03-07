.class public Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6e32cd58


# instance fields
.field public limit:I

.field public max_id:J

.field public offset:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52673
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 52682
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$photos_Photos;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$photos_Photos;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 52686
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52687
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 52688
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52689
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 52690
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
