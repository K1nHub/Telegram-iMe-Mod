.class public Lorg/telegram/tgnet/TLRPC$TL_messageViews;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x455b853d


# instance fields
.field public flags:I

.field public forwards:I

.field public replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

.field public views:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11298
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageViews;
    .locals 1

    .line 11307
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11309
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_messageViews"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11314
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageViews;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageViews;-><init>()V

    .line 11315
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 11320
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11322
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->views:I

    .line 11324
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11325
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->forwards:I

    .line 11327
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageReplies;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageReplies;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 11333
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11336
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11338
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11339
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->forwards:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11341
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11342
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageViews;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_2
    return-void
.end method
