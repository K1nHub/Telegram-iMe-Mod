.class public Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;
.super Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2fd1802c


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19069
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 19074
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19075
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->request_write_access:Z

    .line 19076
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    .line 19077
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19078
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->fwd_text:Ljava/lang/String;

    .line 19080
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    .line 19081
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 19085
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19086
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->request_write_access:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    .line 19087
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19088
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19090
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->fwd_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19092
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19093
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
