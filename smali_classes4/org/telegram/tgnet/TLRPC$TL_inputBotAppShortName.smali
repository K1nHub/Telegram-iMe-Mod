.class public Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;
.super Lorg/telegram/tgnet/TLRPC$InputBotApp;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6f73fbf9


# instance fields
.field public bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public short_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65198
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputBotApp;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 65205
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;->bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 65206
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;->short_name:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 65210
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65211
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;->bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 65212
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppShortName;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
