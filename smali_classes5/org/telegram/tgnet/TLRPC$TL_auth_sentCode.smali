.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCode;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5e002502


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9532
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCode;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9536
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    .line 9537
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    .line 9538
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    .line 9539
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9540
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_CodeType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    .line 9542
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 9543
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9548
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9549
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9550
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9551
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9552
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9553
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9555
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 9556
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
