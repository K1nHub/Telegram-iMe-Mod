.class public Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption_layer151;
.super Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x490ee142


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1375
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 1380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    .line 1381
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    .line 1382
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->currency:Ljava/lang/String;

    .line 1383
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->amount:J

    .line 1384
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    .line 1385
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1386
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 1391
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption_layer151;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1392
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1393
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1395
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 1396
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1397
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
