.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5b38c6c1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30842
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 30847
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 30848
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 30849
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->force_file:Z

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    .line 30850
    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    .line 30851
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 30852
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 30853
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 30855
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 30856
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const-string/jumbo v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eq v0, v4, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 30859
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30863
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_7

    .line 30865
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    .line 30869
    :cond_6
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30871
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 30872
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 30875
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30879
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_b

    .line 30881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 30885
    :cond_a
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30888
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 30889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 30894
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30895
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 30896
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->force_file:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 30897
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 30898
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30899
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 30900
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 30901
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 30903
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v0, 0x1cb5c415

    .line 30904
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30905
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 30906
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    .line 30908
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 30910
    :cond_4
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 30911
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30912
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 30913
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_4
    if-ge v2, v0, :cond_5

    .line 30915
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30918
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 30919
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_6
    return-void
.end method
