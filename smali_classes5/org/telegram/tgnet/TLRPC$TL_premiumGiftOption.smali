.class public Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public amount:J

.field public bot_url:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public flags:I

.field public months:I

.field public store_product:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1495
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;
    .locals 1

    const v0, 0x74c34319

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1508
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_premiumGiftOption"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1513
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    .line 1514
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 1519
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    .line 1520
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    .line 1521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    .line 1522
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    .line 1523
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    .line 1524
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1525
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->store_product:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x74c34319

    .line 1530
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1531
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1532
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1534
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1536
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->store_product:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
