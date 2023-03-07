.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;
.super Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x17db940b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8912
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 8916
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    .line 8917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    .line 8918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    .line 8919
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8920
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 8922
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8923
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 8925
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8926
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    .line 8928
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8929
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    .line 8931
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 8935
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8936
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8937
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8938
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8939
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8940
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8942
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8943
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8945
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8946
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8948
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8949
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8951
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
