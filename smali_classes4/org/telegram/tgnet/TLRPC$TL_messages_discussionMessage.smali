.class public Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x59cbe87e


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public max_id:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public unread_count:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
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

    .line 19826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 19830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->messages:Ljava/util/ArrayList;

    .line 19835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->chats:Ljava/util/ArrayList;

    .line 19836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;
    .locals 1

    .line 19839
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19841
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_messages_discussionMessage"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19846
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;-><init>()V

    .line 19847
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 19852
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    .line 19853
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const-string v1, "wrong Vector magic, got %x"

    const v2, 0x1cb5c415

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 19856
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19860
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 19862
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    .line 19866
    :cond_2
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19868
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 19869
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->max_id:I

    .line 19871
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 19872
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->read_inbox_max_id:I

    .line 19874
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 19875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->read_outbox_max_id:I

    .line 19877
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->unread_count:I

    .line 19878
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-nez p2, :cond_7

    return-void

    .line 19881
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19885
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_a

    .line 19887
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-nez v6, :cond_9

    return-void

    .line 19891
    :cond_9
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19893
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v2, :cond_c

    if-nez p2, :cond_b

    return-void

    .line 19896
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19900
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_e

    .line 19902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 19906
    :cond_d
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 19911
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19912
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v0, 0x1cb5c415

    .line 19913
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19914
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 19915
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 19917
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19919
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 19920
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->max_id:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19922
    :cond_1
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 19923
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->read_inbox_max_id:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19925
    :cond_2
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 19926
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->read_outbox_max_id:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19928
    :cond_3
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->unread_count:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19929
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19930
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 19931
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 19933
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19935
    :cond_4
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19936
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 19937
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_2
    if-ge v2, v0, :cond_5

    .line 19939
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
