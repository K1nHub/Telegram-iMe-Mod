.class public Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x10e6e3a6


# instance fields
.field public filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

.field public invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1663
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;
    .locals 1

    .line 1670
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1672
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_chatlists_exportedChatlistInvite"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1677
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;-><init>()V

    .line 1678
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 1683
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DialogFilter;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DialogFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    .line 1684
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 1688
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1689
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1690
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatlists_exportedChatlistInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_exportedChatlistInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
