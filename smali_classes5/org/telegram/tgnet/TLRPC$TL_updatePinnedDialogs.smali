.class public Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public flags:I

.field public folder_id:I

.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$DialogPeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35550
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 35555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 35558
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 35560
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->folder_id:I

    .line 35562
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 35563
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v2, 0x1cb5c415

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 35566
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35570
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 35572
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$DialogPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DialogPeer;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 35576
    :cond_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, -0x5f0c35e

    .line 35582
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35584
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 35585
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->folder_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35587
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const v0, 0x1cb5c415

    .line 35588
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35589
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35590
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 35592
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
