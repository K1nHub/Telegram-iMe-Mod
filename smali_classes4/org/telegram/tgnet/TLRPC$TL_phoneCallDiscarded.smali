.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x50ca4de1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22440
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 22445
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 22446
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 22447
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    move v2, v3

    .line 22448
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    .line 22449
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    .line 22450
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 22451
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 22453
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 22454
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->duration:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 22459
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22460
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    .line 22461
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    .line 22462
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    .line 22463
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22464
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 22465
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 22466
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22468
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 22469
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
