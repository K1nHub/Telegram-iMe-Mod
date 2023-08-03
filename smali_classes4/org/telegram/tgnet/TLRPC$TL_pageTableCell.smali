.class public Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x34566b6a


# instance fields
.field public align_center:Z

.field public align_right:Z

.field public colspan:I

.field public flags:I

.field public header:Z

.field public rowspan:I

.field public text:Lorg/telegram/tgnet/TLRPC$RichText;

.field public valign_bottom:Z

.field public valign_middle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8506
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;
    .locals 1

    .line 8520
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8522
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_pageTableCell"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8527
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;-><init>()V

    .line 8528
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 8533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 8534
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 8535
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 8536
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 8537
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v2, v3

    .line 8538
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 8540
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 8542
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 8543
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    .line 8545
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 8546
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 8551
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8552
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 8553
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 8554
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 8555
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 8556
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 8557
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8558
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 8559
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8561
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 8562
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8564
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 8565
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_7
    return-void
.end method
