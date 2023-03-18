.class public Lorg/telegram/tgnet/TLRPC$TL_reactionCount;
.super Lorg/telegram/tgnet/TLRPC$ReactionCount;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5c2e3480


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46982
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReactionCount;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 46986
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46987
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v1, :cond_1

    .line 46988
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen_order:I

    .line 46990
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 46991
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 46995
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46996
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46997
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 46998
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen_order:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 47000
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 47001
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
