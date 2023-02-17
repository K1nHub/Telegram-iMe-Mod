.class public Lorg/telegram/tgnet/TLRPC$TL_forumTopicDeleted;
.super Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x23f109b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65524
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 65528
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 65532
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopicDeleted;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65533
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
