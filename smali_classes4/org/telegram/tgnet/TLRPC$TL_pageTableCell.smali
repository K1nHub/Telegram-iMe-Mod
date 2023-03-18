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

    .line 7903
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;
    .locals 1

    .line 7917
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7919
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

    .line 7924
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;-><init>()V

    .line 7925
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 7930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7931
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7932
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 7933
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 7934
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 7935
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 7937
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 7939
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 7940
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    .line 7942
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 7943
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 7948
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7949
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

    .line 7950
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 7951
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 7952
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_middle:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 7953
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->valign_bottom:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    .line 7954
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7955
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 7956
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7958
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 7959
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7961
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 7962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_7
    return-void
.end method
