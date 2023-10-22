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

    .line 9412
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$LangPackString;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9417
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    .line 9418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    .line 9419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9420
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    .line 9422
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9423
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    .line 9425
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9426
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    .line 9428
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9429
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    .line 9431
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9432
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    .line 9434
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9438
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9441
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9442
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9444
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9445
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9447
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9448
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9450
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9451
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9453
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9454
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9456
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
