.class public Lorg/telegram/tgnet/TLRPC$TL_account_wallPapersNotModified;
.super Lorg/telegram/tgnet/TLRPC$account_WallPapers;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28610
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_WallPapers;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x1c199183

    .line 28615
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
