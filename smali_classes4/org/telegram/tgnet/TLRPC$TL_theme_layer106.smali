.class public Lorg/telegram/tgnet/TLRPC$TL_theme_layer106;
.super Lorg/telegram/tgnet/TLRPC$TL_theme;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x826f320


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37717
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_theme;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 37722
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37723
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->creator:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 37724
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->isDefault:Z

    .line 37725
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 37726
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->access_hash:J

    .line 37727
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    .line 37728
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    .line 37729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 37730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 37732
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->installs_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 37736
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_theme_layer106;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37737
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    .line 37738
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->isDefault:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    .line 37739
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37740
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 37741
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 37742
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37743
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37744
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 37745
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 37747
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->installs_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
