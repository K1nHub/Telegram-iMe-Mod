.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5d2dbd70


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8672
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 8677
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Video;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Video;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 8681
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8682
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
