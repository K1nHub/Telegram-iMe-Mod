.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;
.super Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x11965f3a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8919
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 8923
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    .line 8924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    .line 8925
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    .line 8926
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 8927
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    .line 8929
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 8930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    .line 8932
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 8933
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    .line 8935
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 8936
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 8938
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 8939
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 8941
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 8945
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8946
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8947
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8948
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8949
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 8950
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8952
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 8953
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8955
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 8956
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8958
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 8959
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8961
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 8962
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8964
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
