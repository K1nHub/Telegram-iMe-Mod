.class Lorg/telegram/ui/Components/SearchTagsList$Item;
.super Ljava/lang/Object;
.source "SearchTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field count:I

.field reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)Lorg/telegram/ui/Components/SearchTagsList$Item;
    .locals 1

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-direct {v0}, Lorg/telegram/ui/Components/SearchTagsList$Item;-><init>()V

    .line 56
    iput-object p0, v0, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 57
    iput p1, v0, Lorg/telegram/ui/Components/SearchTagsList$Item;->count:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 67
    instance-of v0, p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Item;->count:I

    iget v2, p1, Lorg/telegram/ui/Components/SearchTagsList$Item;->count:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hash()J
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-wide v0
.end method
