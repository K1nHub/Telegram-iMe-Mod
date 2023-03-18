.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0xf94e5f1


# instance fields
.field public correct_answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public poll:Lorg/telegram/tgnet/TLRPC$Poll;

.field public solution:Ljava/lang/String;

.field public solution_entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
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

    .line 29884
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    .line 29888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->correct_answers:Ljava/util/ArrayList;

    .line 29890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution_entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 29893
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 29894
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Poll;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 29895
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string/jumbo v2, "wrong Vector magic, got %x"

    const v3, 0x1cb5c415

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 29896
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 29899
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29903
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 29905
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->correct_answers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29908
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 29909
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution:Ljava/lang/String;

    .line 29911
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 29912
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 29915
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29919
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 29921
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 29925
    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution_entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 29931
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29932
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29933
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29934
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_0

    .line 29935
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29936
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->correct_answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 29937
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 29939
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->correct_answers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29942
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 29943
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 29945
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 29946
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29947
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution_entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 29948
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 29950
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution_entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
