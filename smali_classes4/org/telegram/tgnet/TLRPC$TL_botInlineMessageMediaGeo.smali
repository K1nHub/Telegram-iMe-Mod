.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;
.super Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x51846fd


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19631
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 19636
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    .line 19637
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 19638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19639
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->heading:I

    .line 19641
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19642
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->period:I

    .line 19644
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 19645
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->proximity_notification_radius:I

    .line 19647
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 19648
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 19653
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19654
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19655
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19656
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19657
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->heading:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19659
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19660
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19662
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 19663
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->proximity_notification_radius:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19665
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 19666
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_3
    return-void
.end method
