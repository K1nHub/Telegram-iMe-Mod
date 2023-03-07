.class public Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1135a31d


# instance fields
.field public base_lang_code:Ljava/lang/String;

.field public flags:I

.field public lang_code:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public native_name:Ljava/lang/String;

.field public official:Z

.field public plural_code:Ljava/lang/String;

.field public rtl:Z

.field public strings_count:I

.field public translated_count:I

.field public translations_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6352
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    .locals 1

    .line 6368
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6370
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_langPackLanguage"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6375
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;-><init>()V

    .line 6376
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 6381
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6382
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->official:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 6383
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->rtl:Z

    .line 6384
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    .line 6385
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->native_name:Ljava/lang/String;

    .line 6386
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    .line 6387
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6388
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->base_lang_code:Ljava/lang/String;

    .line 6390
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->plural_code:Ljava/lang/String;

    .line 6391
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->strings_count:I

    .line 6392
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->translated_count:I

    .line 6393
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->translations_url:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 6397
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6398
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->official:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    .line 6399
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->rtl:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    .line 6400
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6401
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6402
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->native_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6403
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6404
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6405
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->base_lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6407
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->plural_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6408
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->strings_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6409
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->translated_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6410
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->translations_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
