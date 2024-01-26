.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.super Ljava/lang/Object;
.source "ReactionsLayoutInBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;
    }
.end annotation


# static fields
.field private static animationUniq:I

.field private static final comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

.field private static cutTagPaint:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;

.field private static pointer:I

.field private static textPaint:Landroid/text/TextPaint;

.field private static final usersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animateFromTotalHeight:I

.field private animateHeight:Z

.field private animateMove:Z

.field private animateWidth:Z

.field animatedReactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field attached:Z

.field currentAccount:I

.field public drawServiceShaderBackground:F

.field public fromWidth:I

.field private fromX:F

.field private fromY:F

.field public hasUnreadReactions:Z

.field public height:I

.field public isEmpty:Z

.field public isSmall:Z

.field private lastDrawTotalHeight:I

.field lastDrawingReactionButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;",
            ">;"
        }
    .end annotation
.end field

.field lastDrawingReactionButtonsTmp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;",
            ">;"
        }
    .end annotation
.end field

.field private lastDrawnWidth:I

.field private lastDrawnX:F

.field private lastDrawnY:F

.field public lastLineX:I

.field lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

.field lastX:F

.field lastY:F

.field longPressRunnable:Ljava/lang/Runnable;

.field messageObject:Lorg/telegram/messenger/MessageObject;

.field outButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;",
            ">;"
        }
    .end annotation
.end field

.field parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public positionOffsetY:I

.field pressed:Z

.field reactionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;",
            ">;"
        }
    .end annotation
.end field

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimViewReaction:Ljava/lang/String;

.field public totalHeight:I

.field private touchSlop:F

.field private wasDrawn:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public static synthetic $r8$lambda$e08uo535ULhmANjZ5dChZHfb5_4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lambda$static$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gCWCl9rNIxL9NEOoQ2ZbN9A6kdk(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lambda$chekTouchEvent$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->cutTagPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$1;)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    .line 105
    sput v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    .line 107
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    .line 121
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 122
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    .line 123
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 125
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    .line 128
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->cutTagPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$300()Landroid/text/TextPaint;
    .locals 1

    .line 53
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    .line 53
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Comparator;
    .locals 1

    .line 53
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static equalsTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 4

    .line 132
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 135
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    .line 136
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    .line 464
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 465
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 466
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 467
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v4

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method private static getPeerId(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    .line 110
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    .line 113
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 114
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private synthetic lambda$chekTouchEvent$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 3

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    const/4 p1, 0x0

    .line 906
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 2

    .line 107
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public animateChange()Z
    .locals 9

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 383
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 384
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move v0, v1

    move v2, v0

    .line 388
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_b

    .line 389
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 390
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v5, :cond_2

    .line 391
    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v6

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_9

    .line 395
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    if-ne v6, v7, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    if-ne v6, v8, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    if-ne v6, v8, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-ne v6, v8, :cond_4

    iget-boolean v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    iget-boolean v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    if-ne v6, v8, :cond_4

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v6, :cond_4

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_3

    goto :goto_2

    .line 422
    :cond_3
    iput v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    goto :goto_4

    .line 397
    :cond_4
    :goto_2
    iput v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    .line 398
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    .line 399
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    .line 401
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    .line 402
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    const/4 v2, 0x3

    .line 403
    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    .line 405
    iget v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-eq v2, v6, :cond_5

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz v2, :cond_5

    .line 406
    invoke-virtual {v2, v6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 407
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 409
    :cond_5
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_6

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_a

    :cond_6
    if-nez v2, :cond_7

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 413
    :cond_7
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_8

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 416
    :cond_8
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v2, :cond_a

    .line 417
    iget-object v3, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-virtual {v2, v3, v5, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V

    goto :goto_3

    .line 426
    :cond_9
    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    :cond_a
    :goto_3
    move v2, v4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 429
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 432
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move v2, v4

    .line 438
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->wasDrawn:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_e

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_f

    .line 439
    :cond_e
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    .line 440
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    .line 441
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    move v2, v4

    .line 445
    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    if-eq v0, v1, :cond_10

    .line 446
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    .line 447
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    move v2, v4

    .line 451
    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    if-eq v0, v1, :cond_11

    .line 452
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    .line 453
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    goto :goto_6

    :cond_11
    move v4, v2

    :goto_6
    return v4
.end method

.method public animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 8

    .line 1012
    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1013
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 1014
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1015
    sget v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 1016
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v6, :cond_0

    .line 1018
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v3, "40_40_nolimit"

    const-string v5, "tgs"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    const/4 v1, 0x0

    .line 1020
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 1021
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1022
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public chekTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 885
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    .line 891
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_c

    .line 892
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    .line 893
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastX:F

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastY:F

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 898
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 899
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 902
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 904
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 907
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 904
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 909
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 913
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 914
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 915
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    .line 916
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 917
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    .line 918
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 919
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_1

    .line 922
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 923
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 924
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 925
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 927
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 928
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 929
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    .line 932
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    .line 933
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 935
    :cond_c
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    return p1

    :cond_d
    :goto_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;FLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 321
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 324
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v1, v1

    .line 325
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v2, v2

    .line 326
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 327
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    .line 328
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    goto :goto_0

    .line 329
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    if-eqz v3, :cond_2

    mul-float v1, v1, p2

    .line 330
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    sub-float v4, v10, p2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float v2, v2, p2

    .line 331
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    :cond_2
    :goto_0
    move v11, v1

    move v12, v2

    const/4 v14, 0x0

    .line 333
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v16, 0x3f000000    # 0.5f

    if-ge v14, v1, :cond_9

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 335
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v9, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_5

    .line 338
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v2

    .line 340
    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v5, v4

    cmpl-float v6, p2, v10

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    .line 341
    iget v13, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v13, v7, :cond_4

    int-to-float v2, v2

    mul-float v2, v2, p2

    .line 342
    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    int-to-float v3, v3

    sub-float v5, v10, p2

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    int-to-float v2, v4

    mul-float v2, v2, p2

    .line 343
    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v5, v2, v4

    :cond_4
    const/4 v2, 0x1

    if-eqz v6, :cond_5

    .line 346
    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v4, v2, :cond_5

    mul-float v4, p2, v16

    add-float v4, v4, v16

    add-float v6, v11, v3

    .line 349
    iget v13, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v13, v13

    div-float/2addr v13, v15

    add-float/2addr v6, v13

    add-float v13, v12, v5

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v15

    add-float/2addr v13, v2

    invoke-virtual {v8, v4, v4, v6, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v6, p2

    goto :goto_2

    :cond_5
    move v6, v10

    :goto_2
    add-float/2addr v3, v11

    add-float v4, v12, v5

    .line 351
    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v2, v7, :cond_6

    move/from16 v5, p2

    goto :goto_3

    :cond_6
    move v5, v10

    :goto_3
    if-eqz v9, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZ)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    .line 355
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    .line 356
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    sub-float v6, v10, p2

    mul-float v2, v6, v16

    add-float v2, v2, v16

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    add-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v12

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v15

    add-float/2addr v4, v5

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 360
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v1, v1

    add-float v4, v12, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZ)V

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method public getCurrentTotalHeight(F)F
    .locals 2

    .line 955
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    if-eqz v0, :cond_0

    .line 956
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    .line 958
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float p1, p1

    return p1
.end method

.method public getCurrentWidth(F)F
    .locals 2

    .line 948
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    if-eqz v0, :cond_0

    .line 949
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    .line 951
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float p1, p1

    return p1
.end method

.method public getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    .locals 3

    .line 488
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p1, :cond_1

    return-object p1

    .line 495
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    return-object p1
.end method

.method public measure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 251
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    .line 252
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    .line 253
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->positionOffsetY:I

    .line 254
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 255
    iget-boolean v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 262
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-ge v4, v8, :cond_6

    .line 263
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 264
    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v11

    const/4 v12, 0x4

    if-eqz v11, :cond_1

    const/16 v9, 0xe

    .line 265
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 266
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    goto/16 :goto_3

    :cond_1
    const/16 v11, 0x8

    .line 268
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    const/16 v14, 0x14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v13, v15

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v13, v15

    iput v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 269
    iget-object v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v13, :cond_3

    iget-object v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 270
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 272
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v10, :cond_2

    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    goto :goto_1

    :cond_2
    move v11, v3

    .line 273
    :goto_1
    iget v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v13, v13

    const/4 v15, 0x2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    mul-int/lit8 v16, v16, 0x1

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    mul-int/2addr v11, v14

    int-to-float v11, v11

    const v14, 0x3f4ccccd    # 0.8f

    mul-float/2addr v11, v14

    add-float/2addr v15, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v15, v10

    add-float/2addr v13, v15

    float-to-int v10, v13

    iput v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 274
    iget-object v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    goto :goto_2

    .line 276
    :cond_3
    iget v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v10, v10

    iget-object v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v13, v13, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v14, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v13, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    iput v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 278
    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    .line 281
    :goto_3
    iget v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v9, v5

    if-le v9, v1, :cond_4

    .line 283
    iget v5, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v6, v5

    move v5, v3

    .line 285
    :cond_4
    iput v5, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    .line 286
    iput v6, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    .line 287
    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    if-le v5, v7, :cond_5

    move v7, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x5

    if-ne v2, v4, :cond_a

    .line 292
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 294
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    move v11, v3

    move v12, v11

    .line 295
    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_9

    .line 296
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    if-eq v13, v8, :cond_8

    .line 297
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v13, v14

    sub-int v13, v1, v13

    :goto_5
    if-ge v12, v11, :cond_7

    .line 299
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v15, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v15, v13

    iput v15, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    move v12, v11

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 304
    :cond_9
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    .line 305
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v11, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    :goto_6
    if-gt v12, v8, :cond_a

    .line 307
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v13, v10

    iput v13, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 310
    :cond_a
    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastLineX:I

    if-ne v2, v4, :cond_b

    .line 312
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    goto :goto_7

    .line 314
    :cond_b
    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    .line 316
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_8
    add-int/2addr v6, v3

    iput v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    const/4 v1, 0x0

    .line 317
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    return-void
.end method

.method public onAttachToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 992
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    const/4 v0, 0x0

    .line 993
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 994
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 999
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    .line 1000
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1001
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    .line 1005
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    goto :goto_1

    .line 1008
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public recordDrawingState()V
    .locals 4

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->wasDrawn:Z

    .line 371
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    .line 372
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    .line 373
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    .line 374
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    return-void
.end method

.method public resetAnimation()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 475
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 476
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 479
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    .line 480
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    .line 481
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    move v1, v0

    .line 482
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v0, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setMessage(Lorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 142
    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 143
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    .line 144
    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    .line 146
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    .line 147
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_10

    .line 148
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-eqz v5, :cond_10

    .line 149
    sget-object v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->dialogId:J

    .line 150
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    move v5, v4

    move v6, v5

    .line 152
    :goto_0
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 153
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 155
    :goto_1
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_e

    .line 156
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 165
    new-instance v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v7, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    .line 166
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    if-nez v2, :cond_9

    .line 167
    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v11, :cond_9

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 171
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 173
    iget v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 174
    iget v14, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-ne v14, v10, :cond_2

    if-eqz v12, :cond_1

    .line 176
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v13, :cond_4

    .line 179
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_2
    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v14, :cond_3

    if-eqz v12, :cond_4

    .line 184
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    .line 188
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_4
    :goto_2
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 193
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 194
    iput v4, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 195
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v11, v4, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto/16 :goto_4

    .line 197
    :cond_5
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v12, 0x3

    if-gt v11, v12, :cond_9

    if-gt v6, v12, :cond_9

    move v11, v4

    move-object v12, v9

    .line 198
    :goto_3
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_8

    .line 199
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 200
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v14

    .line 201
    iget-object v15, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v15

    .line 202
    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v16, v5

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    .line 203
    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    if-nez v12, :cond_6

    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    .line 207
    :cond_6
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    const/4 v10, 0x2

    goto :goto_3

    :cond_8
    move/from16 v16, v5

    .line 210
    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    if-eqz v12, :cond_a

    .line 211
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    .line 212
    iput v4, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 213
    iget-object v5, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v5, v4, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v16, v5

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    .line 217
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    iget-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v4, :cond_b

    .line 218
    new-instance v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;

    invoke-direct {v4, v0, v9, v7, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    .line 219
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v7, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 221
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 222
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 224
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    move/from16 v4, v16

    if-eqz v2, :cond_c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    goto :goto_6

    .line 230
    :cond_c
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    if-eqz v5, :cond_d

    .line 231
    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_d
    add-int/lit8 v5, v4, 0x1

    move v4, v7

    goto/16 :goto_1

    :cond_e
    move v7, v4

    :goto_6
    if-nez v2, :cond_f

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 236
    sget-object v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iput v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->currentAccount:I

    .line 237
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v7

    .line 238
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_f

    .line 239
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v2

    sget v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->lastDrawnPosition:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 242
    :cond_f
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->hasUnreadReactions(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    goto :goto_8

    :cond_10
    move v7, v4

    :goto_8
    move v4, v7

    .line 244
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_11

    .line 245
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 247
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    return-void
.end method

.method public setScrimReaction(Ljava/lang/String;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/String;

    return-void
.end method
