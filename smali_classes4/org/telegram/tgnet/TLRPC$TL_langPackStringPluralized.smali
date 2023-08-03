.class public Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;
.super Lorg/telegram/tgnet/TLRPC$LangPackString;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x6c47ac9f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9374
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$LangPackString;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9379
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    .line 9380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    .line 9381
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9382
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    .line 9384
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9385
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    .line 9387
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9388
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    .line 9390
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9391
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    .line 9393
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9394
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    .line 9396
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9400
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9401
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9402
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9403
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9404
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9406
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9407
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9409
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9410
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9412
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9413
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9415
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9416
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9418
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
