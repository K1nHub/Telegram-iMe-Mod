.class public Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x392718f8


# instance fields
.field public attached:Z

.field public flags:I

.field public id:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public unsave:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55930
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55939
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 55943
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55944
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->attached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->flags:I

    .line 55945
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55946
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55947
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->unsave:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    return-void
.end method
