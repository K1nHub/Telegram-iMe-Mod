.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
.super Ljava/lang/Object;
.source "ReactionsLayoutInBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleReaction"
.end annotation


# instance fields
.field public documentId:J

.field public emojicon:Ljava/lang/String;

.field public hash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 989
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 990
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 991
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0
.end method

.method public static fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    .line 970
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    const-string v1, "animated_"

    .line 973
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 975
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 976
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 978
    :catch_0
    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    goto :goto_0

    .line 982
    :cond_1
    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 983
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    :goto_0
    return-object v0
.end method

.method public static fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 959
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 960
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 961
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0
.end method

.method public static fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 946
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 947
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v1, :cond_0

    .line 948
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 949
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    goto :goto_0

    .line 950
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v1, :cond_1

    .line 951
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 952
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 998
    const-class v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 999
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1000
    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-wide v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1005
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
