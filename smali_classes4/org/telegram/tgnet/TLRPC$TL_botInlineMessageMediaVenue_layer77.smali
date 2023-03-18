.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue_layer77;
.super Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x4366232e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19481
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 19486
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    .line 19487
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 19488
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    .line 19489
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    .line 19490
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    .line 19491
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    .line 19492
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 19493
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 19498
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue_layer77;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19499
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19500
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19501
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19502
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19503
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19504
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19505
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 19506
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
