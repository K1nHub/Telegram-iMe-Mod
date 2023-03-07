.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x10ea6184


# instance fields
.field public msg_id:I

.field public options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55163
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 55168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->options:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55171
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 55175
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55176
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55177
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v0, 0x1cb5c415

    .line 55178
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55179
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55180
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 55182
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendVote;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
