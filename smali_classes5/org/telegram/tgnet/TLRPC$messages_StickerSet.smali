.class public abstract Lorg/telegram/tgnet/TLRPC$messages_StickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_stickerKeyword;",
            ">;"
        }
    .end annotation
.end field

.field public packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_stickerPack;",
            ">;"
        }
    .end annotation
.end field

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10704
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 10708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->keywords:Ljava/util/ArrayList;

    .line 10709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1

    const v0, -0x49f5db5a

    if-eq p1, v0, :cond_2

    const v0, -0x2c06db15

    if-eq p1, v0, :cond_1

    const v0, 0x6e153f16

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10715
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    goto :goto_0

    .line 10721
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetNotModified;-><init>()V

    goto :goto_0

    .line 10718
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet_layer146;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet_layer146;-><init>()V

    :goto_0
    if-nez v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 10725
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in messages_StickerSet"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 10728
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_5
    return-object v0
.end method
