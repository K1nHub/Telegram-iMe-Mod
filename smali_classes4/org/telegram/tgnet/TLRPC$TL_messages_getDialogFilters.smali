.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogFilters;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0xe612693


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56257
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 4

    .line 56262
    new-instance p2, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 56263
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 56265
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    invoke-static {p1, v2, p3}, Lorg/telegram/tgnet/TLRPC$DialogFilter;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DialogFilter;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p2

    .line 56269
    :cond_0
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 56275
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogFilters;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
