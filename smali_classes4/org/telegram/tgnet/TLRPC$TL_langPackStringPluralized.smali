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

    .line 9165
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$LangPackString;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    .line 9171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    .line 9172
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9173
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    .line 9175
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9176
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    .line 9178
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9179
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    .line 9181
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9182
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    .line 9184
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9185
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    .line 9187
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9191
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9192
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9193
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9194
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9195
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9197
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9198
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9200
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9201
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9203
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9204
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9206
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9207
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9209
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
