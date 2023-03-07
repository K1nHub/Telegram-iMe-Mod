.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2cf2872c


# instance fields
.field public add_to_recent:Z

.field public big:Z

.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reaction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Reaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55577
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 55585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->reaction:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55588
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 55592
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55593
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->big:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    .line 55594
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->add_to_recent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    .line 55595
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55596
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55597
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55598
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const v0, 0x1cb5c415

    .line 55599
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55600
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->reaction:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55601
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 55603
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->reaction:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
