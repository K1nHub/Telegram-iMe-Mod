.class public Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6eff98f9


# instance fields
.field public about:Ljava/lang/String;

.field public address:Ljava/lang/String;

.field public broadcast:Z

.field public flags:I

.field public for_import:Z

.field public forum:Z

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public megagroup:Z

.field public title:Ljava/lang/String;

.field public ttl_period:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57290
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57305
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 57309
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57310
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 57311
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 57312
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->for_import:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 57313
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->forum:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 57314
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57315
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57316
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57317
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 57318
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57320
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 57321
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57323
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 57324
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->ttl_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_6
    return-void
.end method
