.class public Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory_layer162;
.super Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12589
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 12593
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    .line 12594
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    .line 12595
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 12596
    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 12597
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    .line 12598
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12599
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 12604
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_0

    .line 12605
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    goto :goto_0

    .line 12607
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    :goto_0
    const v0, -0x6c65b98f

    .line 12609
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12610
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12611
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12612
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12613
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 12614
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_1
    return-void
.end method
