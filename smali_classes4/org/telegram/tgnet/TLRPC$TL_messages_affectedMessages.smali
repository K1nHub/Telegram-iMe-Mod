.class public Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7b2e6e7b


# instance fields
.field public pts:I

.field public pts_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4879
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    .locals 1

    .line 4886
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4888
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_messages_affectedMessages"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4893
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;-><init>()V

    .line 4894
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 4899
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    .line 4900
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 4904
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4905
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4906
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
