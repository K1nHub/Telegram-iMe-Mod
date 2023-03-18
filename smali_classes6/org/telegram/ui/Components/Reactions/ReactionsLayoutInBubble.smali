.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.super Ljava/lang/Object;
.source "ReactionsLayoutInBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    }
.end annotation


# static fields
.field private static animationUniq:I

.field private static final comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

.field private static paint:Landroid/graphics/Paint;

.field private static pointer:I

.field private static textPaint:Landroid/text/TextPaint;

.field private static final usersComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/telegram/tgnet/TLRPC$User;",
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
.method public static synthetic $r8$lambda$EbVUGXlj36W4pPPsa9AxY9dB0PU(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lambda$static$0(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I

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

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$1;)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    .line 95
    sput v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    .line 97
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 101
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    .line 102
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "chat_inLoader"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "featuredStickers_buttonText"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 104
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 105
    sget-object p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    return-void
.end method

.method static synthetic access$300()Landroid/text/TextPaint;
    .locals 1

    .line 45
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    .line 45
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasGradientService()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700()Ljava/util/Comparator;
    .locals 1

    .line 45
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static equalsTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 4

    .line 110
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 113
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    .line 114
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long v0, v2, p0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 449
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 450
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 451
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 452
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

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

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 847
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private hasGradientService()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private synthetic lambda$chekTouchEvent$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 3

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    const/4 p1, 0x0

    .line 809
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public animateChange()Z
    .locals 9

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 369
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 373
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_b

    .line 374
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 375
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v5, :cond_2

    .line 376
    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v6

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_9

    .line 380
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
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

    .line 407
    :cond_3
    iput v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    goto :goto_4

    .line 382
    :cond_4
    :goto_2
    iput v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    .line 383
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    .line 384
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    .line 386
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    .line 387
    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    const/4 v2, 0x3

    .line 388
    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    .line 390
    iget v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-eq v2, v6, :cond_5

    .line 391
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v2, v6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 392
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 394
    :cond_5
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_6

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_a

    :cond_6
    if-nez v2, :cond_7

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 398
    :cond_7
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_8

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 401
    :cond_8
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 402
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v3, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-virtual {v2, v3, v5, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V

    goto :goto_3

    .line 411
    :cond_9
    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    :cond_a
    :goto_3
    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 414
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 417
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 418
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

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    .line 423
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

    .line 424
    :cond_e
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    .line 425
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    .line 426
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    const/4 v2, 0x1

    .line 430
    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    if-eq v0, v1, :cond_10

    .line 431
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    .line 432
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    const/4 v2, 0x1

    .line 436
    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    if-eq v0, v1, :cond_11

    .line 437
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    .line 438
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    goto :goto_6

    :cond_11
    move v4, v2

    :goto_6
    return v4
.end method

.method public animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 8

    .line 915
    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 916
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 918
    sget v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 919
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

    .line 921
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

    .line 923
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 924
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 925
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public chekTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 788
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

    .line 791
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    .line 794
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_c

    .line 795
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

    .line 796
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

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastX:F

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastY:F

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 800
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 801
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 802
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 805
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->can_see_list:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    .line 807
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 810
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 807
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 812
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 816
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 817
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

    .line 818
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    .line 819
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 820
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    .line 821
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 822
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_1

    .line 825
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 826
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 827
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 828
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    .line 830
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    .line 835
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    .line 836
    iput-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 838
    :cond_c
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    return p1

    :cond_d
    :goto_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;FLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 301
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 304
    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v3, v3

    .line 305
    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v4, v4

    .line 306
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    .line 307
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    .line 308
    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    goto :goto_0

    .line 309
    :cond_1
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    if-eqz v5, :cond_2

    mul-float v3, v3, p2

    .line 310
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    sub-float v7, v6, p2

    mul-float v5, v5, v7

    add-float/2addr v3, v5

    mul-float v4, v4, p2

    .line 311
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    .line 313
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 315
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    if-ge v4, v5, :cond_9

    .line 316
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 317
    iget-object v9, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v2, :cond_3

    iget-object v9, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_5

    .line 320
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget v9, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v10, v9

    .line 322
    iget v11, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v12, v11

    const/4 v13, 0x3

    cmpl-float v14, p2, v6

    if-eqz v14, :cond_4

    .line 323
    iget v15, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v15, v13, :cond_4

    int-to-float v9, v9

    mul-float v9, v9, p2

    .line 324
    iget v10, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    int-to-float v10, v10

    sub-float v12, v6, p2

    mul-float v10, v10, v12

    add-float/2addr v10, v9

    int-to-float v9, v11

    mul-float v9, v9, p2

    .line 325
    iget v11, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    int-to-float v11, v11

    mul-float v11, v11, v12

    add-float v12, v9, v11

    .line 327
    :cond_4
    invoke-virtual {v1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v9, 0x1

    if-eqz v14, :cond_5

    .line 329
    iget v10, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v10, v9, :cond_5

    mul-float v10, p2, v8

    add-float/2addr v10, v8

    .line 332
    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v11, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-virtual {v1, v10, v10, v8, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v7, p2

    goto :goto_2

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    .line 334
    :goto_2
    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v8, v13, :cond_6

    move/from16 v8, p2

    goto :goto_3

    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_3
    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v5, v1, v8, v7, v9}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFZ)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    .line 338
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 339
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 341
    iget v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v5, v5

    iget v9, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v9, v9

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v5, v6, p2

    mul-float v9, v5, v8

    add-float/2addr v9, v8

    .line 343
    iget v10, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v1, v9, v9, v10, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 344
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v4, v1, v6, v5, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFZ)V

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 347
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentTotalHeight(F)F
    .locals 2

    .line 858
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    if-eqz v0, :cond_0

    .line 859
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0

    .line 861
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float p1, p1

    return p1
.end method

.method public getCurrentWidth(F)F
    .locals 2

    .line 851
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    if-eqz v0, :cond_0

    .line 852
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0

    .line 854
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float p1, p1

    return p1
.end method

.method public getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    .locals 3

    .line 473
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-eqz p1, :cond_1

    .line 475
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

    .line 480
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

    .line 231
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    .line 232
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    .line 233
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->positionOffsetY:I

    .line 234
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 235
    iget-boolean v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 242
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-ge v4, v8, :cond_6

    .line 243
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 244
    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v11

    const/4 v12, 0x4

    if-eqz v11, :cond_1

    const/16 v9, 0xe

    .line 245
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 246
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    goto/16 :goto_3

    :cond_1
    const/16 v11, 0x8

    .line 248
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

    .line 249
    iget-object v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v13, :cond_3

    iget-object v13, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 250
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 252
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
    const/4 v11, 0x0

    .line 253
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

    mul-int v11, v11, v14

    int-to-float v11, v11

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, v14

    add-float/2addr v15, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v15, v10

    add-float/2addr v13, v15

    float-to-int v10, v13

    iput v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 254
    iget-object v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    goto :goto_2

    .line 256
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

    .line 258
    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    .line 261
    :goto_3
    iget v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v9, v5

    if-le v9, v1, :cond_4

    .line 263
    iget v5, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v6, v5

    const/4 v5, 0x0

    .line 265
    :cond_4
    iput v5, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    .line 266
    iput v6, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    .line 267
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

    .line 272
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 274
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 275
    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_9

    .line 276
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    if-eq v13, v8, :cond_8

    .line 277
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

    .line 279
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

    .line 284
    :cond_9
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    .line 285
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

    .line 287
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v13, v10

    iput v13, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 290
    :cond_a
    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastLineX:I

    if-ne v2, v4, :cond_b

    .line 292
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    goto :goto_7

    .line 294
    :cond_b
    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    .line 296
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

    .line 297
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    return-void
.end method

.method public onAttachToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    const/4 v0, 0x0

    .line 896
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 897
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

    .line 902
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    .line 903
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
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

    .line 908
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    goto :goto_1

    .line 911
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public recordDrawingState()V
    .locals 4

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 352
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 353
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

    .line 355
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->wasDrawn:Z

    .line 356
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    .line 357
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    .line 358
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    .line 359
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    return-void
.end method

.method public resetAnimation()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 460
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 461
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 464
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    .line 465
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    .line 466
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    const/4 v1, 0x0

    .line 467
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 468
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

    .line 120
    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 121
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    .line 122
    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    .line 124
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    .line 125
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_f

    .line 126
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-eqz v5, :cond_f

    .line 127
    sget-object v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->dialogId:J

    .line 128
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 130
    :goto_0
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 131
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
    const/4 v5, 0x0

    .line 133
    :goto_1
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_d

    .line 134
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 143
    new-instance v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v7, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    .line 144
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    if-nez v2, :cond_9

    .line 145
    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v11, :cond_9

    .line 148
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 149
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 151
    iget v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 152
    iget v14, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-ne v14, v10, :cond_2

    if-eqz v12, :cond_1

    .line 154
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v13, :cond_4

    .line 157
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_2
    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v14, :cond_3

    if-eqz v12, :cond_4

    .line 162
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    .line 166
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    :goto_2
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    .line 171
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 172
    iput v4, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 173
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v11, v4, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto/16 :goto_4

    .line 175
    :cond_5
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v12, 0x3

    if-gt v11, v12, :cond_9

    if-gt v6, v12, :cond_9

    move-object v12, v9

    const/4 v11, 0x0

    .line 176
    :goto_3
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_8

    .line 177
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 178
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v14

    .line 179
    iget-object v15, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v15

    .line 180
    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 181
    iget v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    if-eqz v13, :cond_7

    if-nez v12, :cond_6

    .line 184
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :cond_6
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 190
    :cond_8
    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    if-eqz v12, :cond_9

    .line 191
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 192
    iput v4, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 193
    iget-object v11, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v11, v4, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    .line 197
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    iget-boolean v11, v7, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v11, :cond_a

    .line 199
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-direct {v6, v0, v9, v7, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v4, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 201
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v12, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 202
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v12, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 203
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v12, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 204
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    if-ne v5, v10, :cond_b

    goto :goto_5

    .line 210
    :cond_b
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    if-eqz v7, :cond_c

    .line 211
    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_5
    if-nez v2, :cond_e

    .line 215
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 216
    sget-object v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iput v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->currentAccount:I

    .line 217
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 218
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 219
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v5

    sget v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->lastDrawnPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 222
    :cond_e
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->hasUnreadReactions(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    .line 224
    :cond_f
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_10

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 227
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    return-void
.end method

.method public setScrimReaction(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/String;

    return-void
.end method
