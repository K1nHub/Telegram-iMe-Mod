.class public Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x34090c3b


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public media_count:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57777
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57785
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_historyImport;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_historyImport;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 57789
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57790
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57791
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57792
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;->media_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
