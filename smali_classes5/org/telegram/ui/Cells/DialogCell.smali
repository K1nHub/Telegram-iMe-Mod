.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;,
        Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;,
        Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;,
        Lorg/telegram/ui/Cells/DialogCell$CustomDialog;,
        Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;
    }
.end annotation


# instance fields
.field private animateFromStatusDrawableParams:I

.field private animateToStatusDrawableParams:I

.field private animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatingArchiveAvatar:Z

.field private animatingArchiveAvatarProgress:F

.field private applyName:Z

.field private archiveBackgroundProgress:F

.field private archiveHidden:Z

.field protected archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private attachedToWindow:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private bottomClip:I

.field private buttonBackgroundPaint:Landroid/graphics/Paint;

.field private buttonCreated:Z

.field private buttonLayout:Landroid/text/StaticLayout;

.field private buttonLeft:I

.field private buttonTop:I

.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private chatCallProgress:F

.field protected checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkDrawLeft:I

.field private checkDrawLeft1:I

.field private checkDrawTop:I

.field public chekBoxPaddingTop:F

.field private clearingDialog:Z

.field private clipProgress:F

.field private clockDrawLeft:I

.field public collapseOffset:F

.field public collapsed:Z

.field private compactMode:Z

.field private cornerProgress:F

.field private countAnimationInLayout:Landroid/text/StaticLayout;

.field private countAnimationIncrement:Z

.field private countAnimationStableLayout:Landroid/text/StaticLayout;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field private countChangeProgress:F

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countLeftOld:I

.field private countOldLayout:Landroid/text/StaticLayout;

.field private countTop:I

.field private countWidth:I

.field private countWidthOld:I

.field private counterPaintOutline:Landroid/graphics/Paint;

.field private counterPath:Landroid/graphics/Path;

.field private counterPathRect:Landroid/graphics/RectF;

.field private currentAccount:I

.field private currentDialogFolderDialogsCount:I

.field private currentDialogFolderId:I

.field private currentDialogId:J

.field private currentMessagePaint:Landroid/text/TextPaint;

.field private currentRevealBounceProgress:F

.field private currentRevealProgress:F

.field private customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

.field delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

.field private dialogMuted:Z

.field private dialogMutedProgress:F

.field private dialogsType:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public drawAvatar:Z

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawCount2:Z

.field private drawError:Z

.field private drawMention:Z

.field private drawNameLock:Z

.field private drawPin:Z

.field private drawPinBackground:Z

.field private drawPinForced:Z

.field private drawPlay:[Z

.field private drawPremium:Z

.field private drawReactionMention:Z

.field private drawReorder:Z

.field private drawRevealBackground:Z

.field private drawScam:I

.field private drawSpoiler:[Z

.field private drawUnmute:Z

.field private drawVerified:Z

.field public drawingForBlur:Z

.field private emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private fadePaint:Landroid/graphics/Paint;

.field private fadePaintBack:Landroid/graphics/Paint;

.field private folderId:I

.field protected forbidDraft:Z

.field protected forbidVerified:Z

.field public forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field public fullSeparator:Z

.field public fullSeparator2:Z

.field private groupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private halfCheckDrawLeft:I

.field private hasCall:Z

.field private hasNameInMessage:Z

.field private hasUnmutedTopics:Z

.field private hasVideoThumb:Z

.field public heightDefault:I

.field public heightThreeLines:I

.field public inPreviewMode:Z

.field private innerProgress:F

.field private interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

.field private isDialogCell:Z

.field private isSelected:Z

.field private isShowPremiumBadgeEnabled:Z

.field private isShowPremiumStatusEnabled:Z

.field private isSliding:Z

.field private isTopic:Z

.field public isTransitionSupport:Z

.field lastDialogChangedTime:J

.field private lastDrawSwipeMessageStringId:I

.field private lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private lastMessageDate:I

.field private lastMessageString:Ljava/lang/CharSequence;

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field lastSize:I

.field private lastStatusDrawableParams:I

.field private lastTopicMessageUnread:Z

.field private lastUnreadState:Z

.field private lock2Left:I

.field private markUnread:Z

.field private mentionCount:I

.field private mentionLayout:Landroid/text/StaticLayout;

.field private mentionLeft:I

.field private mentionWidth:I

.field private message:Lorg/telegram/messenger/MessageObject;

.field private messageId:I

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageNameLayout:Landroid/text/StaticLayout;

.field private messageNameLeft:I

.field private messageNameTop:I

.field public messagePaddingStart:I

.field private messageTop:I

.field moving:Z

.field private nameIsEllipsized:Z

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLayoutEllipsizeByGradient:Z

.field private nameLayoutEllipsizeLeft:Z

.field private nameLayoutFits:Z

.field private nameLayoutTranslateX:F

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private nameWidth:I

.field private needEmoji:Z

.field private onlineProgress:F

.field protected overrideSwipeAction:Z

.field protected overrideSwipeActionBackgroundColorKey:Ljava/lang/String;

.field protected overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field protected overrideSwipeActionRevealBackgroundColorKey:Ljava/lang/String;

.field protected overrideSwipeActionStringId:I

.field protected overrideSwipeActionStringKey:Ljava/lang/String;

.field private paintIndex:I

.field private parentFragment:Lorg/telegram/ui/DialogsActivity;

.field private pinLeft:I

.field private pinTop:I

.field private preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

.field private printingStringType:I

.field private progressStage:I

.field private promoDialog:Z

.field private reactionMentionCount:I

.field private reactionMentionLeft:I

.field private reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

.field private reactionsMentionsChangeProgress:F

.field private readOutboxMaxId:I

.field private rect:Landroid/graphics/RectF;

.field private reorderIconProgress:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightFragmentOpenedProgress:F

.field private showTopicIconInName:Z

.field private showTtl:Z

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilers2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool2:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private statusDrawableAnimationInProgress:Z

.field private statusDrawableAnimator:Landroid/animation/ValueAnimator;

.field private statusDrawableLeft:I

.field private statusDrawableProgress:F

.field public swipeCanceled:Z

.field private swipeMessageTextId:I

.field private swipeMessageTextLayout:Landroid/text/StaticLayout;

.field private swipeMessageWidth:I

.field private thumbBackgroundPaint:Landroid/graphics/Paint;

.field private thumbImage:[Lorg/telegram/messenger/ImageReceiver;

.field private thumbImageSeen:[Z

.field private thumbPath:Landroid/graphics/Path;

.field thumbSize:I

.field private thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private thumbsCount:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private timerPaint:Landroid/graphics/Paint;

.field private timerPaint2:Landroid/graphics/Paint;

.field private topClip:I

.field topMessageTopicEndIndex:I

.field topMessageTopicStartIndex:I

.field private topicCounterPaint:Landroid/graphics/Paint;

.field protected topicIconInName:[Landroid/graphics/drawable/Drawable;

.field private topicMuted:Z

.field protected translateY:I

.field private translationAnimationStarted:Z

.field private translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field protected translationX:F

.field private ttlPeriod:I

.field private ttlProgress:F

.field private twoLinesForName:Z

.field private typingLayout:Landroid/text/StaticLayout;

.field private typingLeft:I

.field private unreadCount:I

.field private final updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

.field public useForceThreeLines:Z

.field public useFromUserAsAvatar:Z

.field private useMeForMyMessages:Z

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field protected xOffset:F


# direct methods
.method public static synthetic $r8$lambda$1ElNZG_I_2BClHBAAD7Yiux0k9M(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$createStatusDrawableAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1TWetX0jlzaqqPS9MQSVpuUGCbo(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$updateMessageThumbs$6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8_ZRZFZVm5W8mFksz8hNqNnAiYs(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JXvRH2vPsVOzfl6xMrqRLEjO2JQ(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YNjMvRzw1UKGakEK7WFZwP4PvMA(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_cYNSIqirewKvzKHeE1W8QKmY6E(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJXPUY18vpeq8W0-PCNuYp3765o(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$3()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 7

    .line 554
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 560
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 181
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    const/16 v0, 0x48

    .line 182
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    .line 183
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 v0, 0x4e

    .line 184
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/high16 v0, 0x42280000    # 42.0f

    .line 192
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    .line 214
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    .line 215
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 375
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const/4 v1, 0x3

    new-array v2, v1, [Z

    .line 385
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    new-array v2, v1, [Lorg/telegram/messenger/ImageReceiver;

    .line 386
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    new-array v2, v1, [Z

    .line 387
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    new-array v1, v1, [Z

    .line 388
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    .line 390
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 391
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 394
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    .line 457
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    .line 459
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    .line 484
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    const/high16 p3, 0x3f800000    # 1.0f

    .line 493
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 494
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 515
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    const/4 p3, -0x1

    .line 522
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 534
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 535
    new-instance p3, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell$1;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    .line 561
    iput-object p6, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 562
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 563
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 p1, 0x0

    .line 566
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 567
    new-instance p3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object p3, p2, p1

    .line 568
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, p1

    const/4 p3, 0x2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 569
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, p1

    invoke-virtual {p2, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    .line 572
    iput p5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    .line 575
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 576
    iput-boolean v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/DialogCell;II)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 123
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/DialogCell;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Cells/DialogCell;I)I
    .locals 0

    .line 123
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/DialogCell;)J
    .locals 2

    .line 123
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 123
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 123
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 123
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 123
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 123
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    return p0
.end method

.method private applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 2479
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_0

    .line 2480
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, " "

    .line 2481
    invoke-virtual {p1, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2482
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object p1
.end method

.method private calcCompactDrawingElementTop(I)I
    .locals 1

    .line 154
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private checkChatTheme()V
    .locals 5

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    if-eqz v1, :cond_0

    .line 667
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 668
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private checkGroupCall()V
    .locals 2

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 657
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    return-void
.end method

.method private checkOnline()V
    .locals 3

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 628
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 633
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 634
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    return-void
.end method

.method private checkTtl()V
    .locals 1

    .line 661
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 662
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return-void
.end method

.method private checkTwoLinesForName()V
    .locals 1

    const/4 v0, 0x0

    .line 802
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 803
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 805
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 806
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 807
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method private computeHeight()I
    .locals 1

    .line 790
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    if-nez v0, :cond_3

    .line 791
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    add-int/lit8 v0, v0, 0x5b

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x56

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    .line 793
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method private createStatusDrawableAnimator(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4546
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4547
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 4548
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4550
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4551
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    .line 4552
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    .line 4553
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4557
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x1

    .line 4570
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    .line 4571
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p6, v0

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, p6, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0xff

    if-eqz p2, :cond_3

    .line 2578
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_1

    .line 2580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2581
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    sget-object p4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, v3, v3, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2582
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p6, p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2584
    :cond_1
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_2

    .line 2586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2587
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2589
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_a

    if-eqz p3, :cond_8

    .line 2592
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    if-eqz p5, :cond_4

    .line 2594
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2595
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2596
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p3, p6, v4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-nez p5, :cond_5

    if-eqz v1, :cond_5

    .line 2599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2600
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2601
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v4, v4, p6

    float-to-int p3, v4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2602
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2605
    :cond_5
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_6

    .line 2608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x4

    .line 2610
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p6

    mul-float p2, p2, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2612
    :cond_6
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 2613
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_7

    .line 2615
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2616
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez p5, :cond_a

    if-eqz v1, :cond_a

    .line 2620
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2621
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2622
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 2625
    :cond_8
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_9

    .line 2627
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2628
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    sget-object p4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, v3, v3, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2629
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p6, p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2631
    :cond_9
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_a

    .line 2633
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2634
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    .line 4375
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 4376
    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_2

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v8, :cond_3

    :cond_2
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_29

    .line 4377
    :cond_3
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v8, :cond_4

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    sub-float v8, v9, v8

    goto :goto_2

    :cond_4
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    :goto_2
    const/16 v10, 0xff

    const/high16 v11, 0x437f0000    # 255.0f

    if-eqz p7, :cond_6

    .line 4382
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    if-nez v12, :cond_5

    .line 4383
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    .line 4384
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4385
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4386
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 4387
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_5
    const-string v12, "chats_pinnedOverlay"

    .line 4389
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 4390
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const-string v14, "windowBackgroundWhite"

    .line 4391
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    .line 4392
    invoke-static {v12, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    .line 4393
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    .line 4390
    invoke-static {v14, v15, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 4396
    :cond_6
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v12, :cond_a

    .line 4397
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 4398
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    .line 4400
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_8

    const-string v10, "topics_unreadCounterMuted"

    goto :goto_3

    :cond_8
    const-string v10, "topics_unreadCounter"

    .line 4401
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    .line 4402
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4403
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_9

    const/16 v10, 0x1e

    goto :goto_6

    :cond_9
    const/16 v10, 0x28

    goto :goto_6

    :cond_a
    if-nez p2, :cond_c

    .line 4407
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto :goto_5

    :cond_c
    :goto_4
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_5
    move-object v6, v7

    const/4 v7, 0x0

    .line 4410
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x40b00000    # 5.5f

    const/16 v16, 0x4

    const/high16 v17, 0x41380000    # 11.5f

    if-eqz v12, :cond_1d

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v13, :cond_d

    goto/16 :goto_f

    .line 4465
    :cond_d
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    int-to-float v10, v10

    mul-float v12, v12, v10

    float-to-int v10, v12

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4466
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    mul-float v12, v12, v11

    float-to-int v11, v12

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v8, v10

    cmpl-float v12, v11, v9

    if-lez v12, :cond_e

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_e
    move v12, v11

    :goto_7
    int-to-float v3, v3

    mul-float v3, v3, v12

    move/from16 v13, p5

    int-to-float v13, v13

    sub-float v18, v9, v12

    mul-float v13, v13, v18

    add-float/2addr v3, v13

    .line 4474
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    .line 4475
    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v10, v2

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v9, v9

    mul-float v9, v9, v12

    add-float/2addr v9, v13

    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    int-to-float v14, v14

    mul-float v14, v14, v18

    add-float/2addr v9, v14

    const/16 v14, 0xb

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v9, v14

    const/16 v14, 0x17

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v2

    int-to-float v14, v14

    invoke-virtual {v15, v13, v10, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f000000    # 0.5f

    cmpg-float v14, v8, v13

    if-gtz v14, :cond_f

    .line 4479
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float v8, v8, v9

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 4481
    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float/2addr v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, v8, v13

    sub-float v8, v11, v8

    invoke-virtual {v14, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float v8, v8, v9

    :goto_8
    add-float/2addr v8, v11

    .line 4484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v8, v8, v4

    .line 4485
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v5, :cond_14

    .line 4487
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 4488
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_11

    .line 4489
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_9

    .line 4491
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4493
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_12

    .line 4494
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4496
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4498
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_15

    .line 4500
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 4503
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_15

    .line 4505
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4508
    :cond_15
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_16

    .line 4509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4510
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4511
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4512
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4515
    :cond_16
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 4516
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float v6, v5, v12

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4517
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/16 v6, 0xd

    if-eqz v4, :cond_18

    .line 4518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4519
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v4, :cond_17

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_b

    :cond_17
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    :goto_b
    int-to-float v4, v4

    mul-float v4, v4, v18

    add-float/2addr v4, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4520
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4521
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    .line 4522
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1a

    .line 4523
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4524
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v4, :cond_19

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_c

    :cond_19
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    :goto_c
    int-to-float v4, v4

    mul-float v4, v4, v18

    add-float/2addr v4, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4525
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4526
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4529
    :cond_1a
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1c

    .line 4530
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    mul-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4532
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v4, :cond_1b

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    goto :goto_e

    :cond_1b
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_e
    int-to-float v4, v4

    mul-float v4, v4, v12

    add-float/2addr v4, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4533
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4534
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4536
    :cond_1c
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4537
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 4411
    :cond_1d
    :goto_f
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 4412
    :goto_10
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v9, v13, v9

    int-to-float v10, v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4413
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v10, v13, v10

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4415
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v3, v9

    .line 4416
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v13, v9

    int-to-float v14, v2

    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    add-int/2addr v9, v15

    const/16 v15, 0xb

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v9, v15

    int-to-float v9, v9

    const/16 v15, 0x17

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v2

    int-to-float v15, v15

    invoke-virtual {v10, v13, v14, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4418
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v10

    if-eqz v13, :cond_1f

    .line 4420
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v1, v4, v4, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1f
    cmpl-float v4, v8, v10

    if-eqz v4, :cond_21

    .line 4423
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4424
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v13, v10, v13

    mul-float v13, v13, v11

    float-to-int v11, v13

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4425
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v4, v11, v13}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4426
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v4, v10, v8

    .line 4427
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1, v4, v4, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4428
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4431
    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v1, v8, v8, v4, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_21
    if-eqz v5, :cond_26

    .line 4435
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_22

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4436
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_23

    .line 4437
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_11

    .line 4439
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4441
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_24

    .line 4442
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4444
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4446
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_27

    .line 4448
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    .line 4451
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_27

    .line 4453
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_27
    :goto_12
    if-eqz v12, :cond_28

    .line 4457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    .line 4458
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4459
    invoke-virtual {v12, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4460
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4463
    :cond_28
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_13
    if-eqz v7, :cond_29

    .line 4540
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    const-string v2, "chats_unreadCounterText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_29
    return-void
.end method

.method private findFolderTopMessage()Lorg/telegram/messenger/MessageObject;
    .locals 10

    .line 2692
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2696
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2697
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2699
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2700
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2702
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 2703
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2704
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_4

    .line 2706
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2707
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    .line 2708
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_3

    :cond_2
    move-object v4, v7

    .line 2711
    :cond_3
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    move-object v1, v4

    :cond_6
    return-object v1
.end method

.method private formatArchivedDialogNames()Ljava/lang/CharSequence;
    .locals 12

    .line 876
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 879
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 881
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 882
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 883
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    .line 884
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 887
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 888
    iget v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 890
    iget v8, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v7

    goto :goto_1

    .line 893
    :cond_1
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 894
    iget v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_1

    .line 896
    :cond_2
    iget v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_1
    const/16 v8, 0x20

    const/16 v9, 0xa

    if-eqz v7, :cond_3

    .line 901
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_7

    .line 903
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 904
    sget v6, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v7, "HiddenName"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 906
    :cond_4
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 911
    :goto_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, ", "

    .line 912
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 914
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 915
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    .line 916
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 917
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v5, :cond_6

    .line 918
    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v10, "chats_nameArchived"

    invoke-static {v10, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-direct {v5, v6, v3, v9}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 920
    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x96

    if-le v5, v6, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 924
    :cond_8
    :goto_3
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private formatTopicsNames()Ljava/lang/CharSequence;
    .locals 12

    const/4 v0, 0x0

    .line 2492
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2493
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2494
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 2495
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2498
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2500
    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2501
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2504
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const-string v5, " "

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 2505
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4, v6}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 2506
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v7, v8, v9, v4}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2508
    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2509
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2510
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v9, :cond_0

    .line 2511
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 2513
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2514
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2516
    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2517
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    goto :goto_3

    .line 2519
    :cond_2
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    goto :goto_3

    .line 2522
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    const/4 v9, 0x0

    .line 2524
    :goto_3
    iget-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v7, :cond_5

    .line 2525
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2526
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v8, 0x3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v7, v8, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    const/4 v8, 0x0

    :goto_5
    const/4 v10, 0x5

    .line 2532
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 2533
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v10, v4, :cond_7

    goto :goto_7

    .line 2537
    :cond_7
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 2539
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_8
    const-string v6, ", "

    .line 2541
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2545
    :cond_9
    :goto_6
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ForumTopic;

    iget-object v10, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2546
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    if-lez v9, :cond_b

    .line 2549
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v4, "fonts/rmedium.ttf"

    .line 2550
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const-string v5, "chats_name"

    invoke-direct {v3, v4, v0, v5, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2551
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v9, v9, 0x2

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2549
    invoke-virtual {v1, v3, v0, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    return-object v1

    .line 2557
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2558
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->preloadTopics(J)V

    const-string v0, "Loading..."

    return-object v0

    :cond_d
    const-string v0, "no created topics"

    return-object v0

    :cond_e
    return-object v2
.end method

.method private getCaptionMessage()Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 4774
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4775
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 4783
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4784
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_3

    .line 4785
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 4787
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    move-object v3, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-le v2, v0, :cond_5

    return-object v1

    :cond_5
    return-object v3
.end method

.method private getCollapsedHeight()I
    .locals 2

    .line 798
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method private getTopicId()I
    .locals 1

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    :goto_0
    return v0
.end method

.method private isArchiveContentHidden()Z
    .locals 2

    .line 158
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/LockedSectionsController;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCloudContentHidden()Z
    .locals 2

    .line 163
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/LockedSectionsController;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOnline()Z
    .locals 5

    .line 638
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v0, :cond_2

    .line 645
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 649
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    if-le v0, v3, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$createStatusDrawableAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    .line 4555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    .line 2500
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 1

    .line 3663
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3664
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$4()V
    .locals 1

    .line 3668
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3669
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3040
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 3041
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 3103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$updateMessageThumbs$6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 0

    .line 4806
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private setThumb(ILorg/telegram/messenger/MessageObject;)V
    .locals 11

    .line 4829
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 4830
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 4835
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz v0, :cond_a

    .line 4840
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4841
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_a

    add-int/2addr v2, v3

    .line 4842
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4843
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    aput-boolean v4, v2, p1

    .line 4844
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v4

    aput-boolean v4, v2, p1

    .line 4845
    iget v2, p2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v3, :cond_7

    if-eqz v1, :cond_7

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 4846
    :goto_3
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "5_5_b"

    goto :goto_4

    :cond_8
    const-string v3, "20_20"

    :goto_4
    move-object v4, v3

    .line 4847
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, p1

    iget-object v5, p2, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v5, p2, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    int-to-long v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v3

    move-object v2, v4

    move-object v3, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 4848
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    goto :goto_5

    :cond_9
    const/4 v1, 0x2

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 4849
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_a
    return-void
.end method

.method private updateThumbsPosition()V
    .locals 7

    .line 2440
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_6

    .line 2441
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2442
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 2447
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2448
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_6

    .line 2449
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 2450
    array-length v5, v3

    if-lez v5, :cond_5

    .line 2451
    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v3, v6

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2456
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 2457
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2458
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz v0, :cond_4

    .line 2460
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2462
    :cond_4
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v6, v2, :cond_6

    .line 2463
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v6

    add-int v3, v1, v0

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v4, v4, 0x2

    mul-int v4, v4, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V

    .line 2464
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_6

    .line 2468
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v6, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2473
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public animateArchiveAvatar()V
    .locals 2

    .line 2660
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2663
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/4 v0, 0x0

    .line 2664
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 2665
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 2666
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2667
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public buildLayout()V
    .locals 52

    move-object/from16 v1, p0

    .line 930
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-eqz v0, :cond_0

    return-void

    .line 933
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    return-void

    .line 940
    :cond_1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/16 v4, 0x12

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 950
    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 951
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 952
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 953
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 955
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v7, v0, v6

    aget-object v0, v0, v6

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v9, "chats_message"

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iput v8, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 956
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    const/16 v0, 0x13

    .line 957
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    goto :goto_1

    .line 941
    :cond_3
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 942
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 943
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    const/16 v7, 0xf

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 944
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    const/16 v7, 0xf

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 946
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v7, v0, v5

    aget-object v0, v0, v5

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v9, "chats_message_threeLines"

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iput v8, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 947
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    .line 948
    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    .line 960
    :goto_1
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 970
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_5

    .line 971
    :cond_4
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10, v5}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v7

    .line 973
    :goto_2
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v9

    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 976
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 977
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 978
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 979
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 980
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 981
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 982
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 983
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 984
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 986
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    const/4 v9, -0x1

    .line 988
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 990
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-nez v10, :cond_7

    .line 991
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 995
    :cond_7
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v4, :cond_b

    .line 996
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_8

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_a

    :cond_8
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    .line 1001
    :cond_9
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "\u2068%1$s\u2069"

    goto :goto_6

    .line 998
    :cond_a
    :goto_4
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%2$s: \u2068%1$s\u2069"

    goto :goto_6

    .line 1004
    :cond_b
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_c

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_e

    :cond_c
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v10, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_5

    .line 1009
    :cond_d
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%1$s"

    goto :goto_6

    .line 1006
    :cond_e
    :goto_5
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%2$s: %1$s"

    .line 1013
    :goto_6
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_f

    .line 1014
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    .line 1016
    :cond_f
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_10
    move-object v11, v7

    .line 1017
    :goto_7
    instance-of v12, v11, Landroid/text/Spannable;

    if-eqz v12, :cond_13

    .line 1018
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1019
    invoke-interface {v12}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v13, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    invoke-interface {v12, v6, v11, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    array-length v13, v11

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_11

    aget-object v15, v11, v14

    .line 1020
    invoke-interface {v12, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1021
    :cond_11
    invoke-interface {v12}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v13, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v12, v6, v11, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/URLSpanNoUnderline;

    array-length v13, v11

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_12

    aget-object v15, v11, v14

    .line 1022
    invoke-interface {v12, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_12
    move-object v11, v12

    .line 1025
    :cond_13
    iput-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    .line 1027
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v14, 0x20

    const/high16 v15, 0x41480000    # 12.5f

    const/16 v9, 0xa

    const/16 v17, 0x16

    const/16 v2, 0x21

    const/16 v3, 0x96

    const/16 v20, 0x8

    const/16 v21, 0x4

    const-string v22, ""

    const/16 v23, 0x14

    const/16 v24, 0x6

    const/4 v13, 0x2

    if-eqz v12, :cond_2a

    .line 1028
    iget v0, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v13, :cond_19

    .line 1029
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1031
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x418c0000    # 17.5f

    .line 1032
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1033
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1034
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1036
    :cond_14
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    const/high16 v0, 0x41840000    # 16.5f

    .line 1046
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1047
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_16

    .line 1048
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1049
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1051
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v0, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1052
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1037
    :cond_17
    :goto_a
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1038
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_18

    .line 1039
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1040
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1042
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v0, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1043
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1056
    :cond_19
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v0, :cond_1a

    iget-boolean v0, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1058
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_1b

    .line 1059
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v13

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1061
    :cond_1b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1c

    goto :goto_c

    .line 1068
    :cond_1c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1d

    .line 1069
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1071
    :cond_1d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1062
    :cond_1e
    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1f

    .line 1063
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1065
    :cond_1f
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1076
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v8, v5, :cond_24

    .line 1077
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v8, "FromYou"

    invoke-static {v8, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v11, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v11, :cond_20

    .line 1081
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v11

    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    new-array v8, v5, [Ljava/lang/Object;

    .line 1082
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v11, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 1083
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "chats_attachMessage"

    invoke-direct {v10, v12, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v8, v10, v6, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    .line 1085
    :cond_20
    iget-object v2, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1086
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_21

    .line 1087
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1089
    :cond_21
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v8, :cond_23

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_22

    goto :goto_e

    :cond_22
    new-array v8, v13, [Ljava/lang/Object;

    .line 1092
    invoke-virtual {v2, v9, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    aput-object v0, v8, v5

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    goto :goto_f

    :cond_23
    :goto_e
    new-array v8, v13, [Ljava/lang/Object;

    aput-object v2, v8, v6

    aput-object v0, v8, v5

    .line 1090
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 1095
    :goto_f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v10

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v8, v2, v10, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v8, 0x0

    goto :goto_10

    .line 1097
    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1098
    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v0, :cond_25

    .line 1099
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v8

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_25
    move-object v0, v7

    const/4 v8, 0x1

    .line 1103
    :goto_10
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 1105
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v11, :cond_26

    .line 1106
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    new-array v12, v5, [Ljava/lang/Object;

    .line 1107
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v6

    const-string v11, "%d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    .line 1109
    :cond_26
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object v11, v7

    .line 1112
    :goto_11
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v14, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    if-nez v14, :cond_27

    .line 1113
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1114
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1115
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    goto :goto_12

    :cond_27
    if-ne v14, v13, :cond_28

    .line 1117
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1118
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1119
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    :cond_28
    if-ne v14, v5, :cond_29

    .line 1121
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1122
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1123
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    .line 1125
    :cond_29
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1126
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1127
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1130
    :goto_12
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1131
    iget-object v12, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move-object v3, v2

    move-object v13, v7

    move-object v15, v11

    move-object v14, v12

    const/4 v4, -0x1

    move-object v2, v0

    move-object v12, v13

    move-object/from16 v7, v22

    const/4 v0, 0x1

    goto/16 :goto_5d

    .line 1134
    :cond_2a
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_2b

    .line 1135
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v12, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1137
    :cond_2b
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v12, :cond_2e

    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v12, :cond_2c

    goto :goto_13

    .line 1144
    :cond_2c
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_2d

    .line 1145
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1147
    :cond_2d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1138
    :cond_2e
    :goto_13
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_2f

    .line 1139
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1141
    :cond_2f
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1151
    :goto_14
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v12, :cond_35

    .line 1152
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v12, :cond_41

    .line 1153
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1155
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_30

    const/high16 v12, 0x418c0000    # 17.5f

    .line 1156
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1157
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1158
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1160
    :cond_30
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v12, :cond_33

    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v12, :cond_31

    goto :goto_15

    :cond_31
    const/high16 v12, 0x41840000    # 16.5f

    .line 1170
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1171
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_32

    .line 1172
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1173
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1175
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1176
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1161
    :cond_33
    :goto_15
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1162
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_34

    .line 1163
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1164
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v12, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1166
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v14, v14, 0x6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1167
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1181
    :cond_35
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v12, :cond_41

    .line 1182
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_39

    .line 1183
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v14, :cond_36

    .line 1184
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1185
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1a

    .line 1186
    :cond_36
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v14, :cond_37

    .line 1187
    iput v13, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1188
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1a

    .line 1190
    :cond_37
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v14, :cond_38

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v12, :cond_38

    const/4 v12, 0x1

    goto :goto_16

    :cond_38
    const/4 v12, 0x0

    :goto_16
    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_1a

    .line 1192
    :cond_39
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_41

    .line 1193
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v14, :cond_3a

    .line 1194
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1195
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_18

    .line 1196
    :cond_3a
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v14, :cond_3b

    .line 1197
    iput v13, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1198
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_18

    .line 1200
    :cond_3b
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v14, :cond_3c

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v12, :cond_3c

    const/4 v12, 0x1

    goto :goto_17

    :cond_3c
    const/4 v12, 0x0

    :goto_17
    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1203
    :goto_18
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v12

    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1204
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v12

    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 1206
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-eqz v12, :cond_3e

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    iget-wide v13, v12, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v12, v13, v3

    if-eqz v12, :cond_3e

    const-wide/16 v12, 0x0

    cmp-long v14, v3, v12

    if-eqz v14, :cond_3e

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v3, :cond_3d

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v3, :cond_3e

    :cond_3d
    const/4 v3, 0x1

    goto :goto_19

    :cond_3e
    const/4 v3, 0x0

    :goto_19
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v3, :cond_41

    .line 1208
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v3

    .line 1209
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v4, :cond_3f

    if-eqz v3, :cond_3f

    .line 1210
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1211
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_1a

    .line 1213
    :cond_3f
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1215
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v3, :cond_40

    .line 1216
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1217
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v7, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1a

    .line 1219
    :cond_40
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1226
    :cond_41
    :goto_1a
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v3, :cond_42

    .line 1227
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_42

    .line 1228
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1231
    :cond_42
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v4, :cond_43

    .line 1232
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v14

    invoke-virtual {v4, v12, v13, v14}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v4, :cond_45

    .line 1233
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1234
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1b

    .line 1236
    :cond_43
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v4, :cond_44

    .line 1237
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v4, v12, v13, v6}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1b

    .line 1239
    :cond_44
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1242
    :cond_45
    :goto_1b
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v4, :cond_47

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v4, :cond_4a

    :cond_46
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    if-le v3, v4, :cond_47

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v3, :cond_4a

    :cond_47
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1243
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_48

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_48

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v3, :cond_4a

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_4a

    :cond_48
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_49

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v4, :cond_4a

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v4, :cond_4a

    :cond_49
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidDraft:Z

    if-nez v4, :cond_4a

    .line 1244
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v3, :cond_4b

    .line 1245
    :cond_4a
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1248
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1249
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1250
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatTopicsNames()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1254
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4c

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_4c
    move-object v3, v7

    .line 1255
    :goto_1c
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_4d

    invoke-virtual {v1, v10, v3, v0, v5}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1d

    :cond_4d
    move-object/from16 v3, v22

    .line 1256
    :goto_1d
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_4e

    if-eqz v0, :cond_4e

    .line 1257
    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1258
    new-instance v4, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v11, "chats_name"

    invoke-direct {v4, v11, v10}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v4, v6, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1261
    :cond_4e
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v10

    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v7, v3

    move-object/from16 v4, v22

    const/4 v3, 0x1

    const/4 v10, 0x1

    const/16 v16, -0x1

    goto/16 :goto_49

    :cond_4f
    if-eqz v0, :cond_53

    .line 1264
    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 1265
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v4

    invoke-virtual {v3, v12, v13, v4}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1266
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1269
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_1e

    :cond_50
    const/4 v3, 0x0

    .line 1271
    :goto_1e
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v12, "..."

    .line 1273
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v12, v13}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1274
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_51

    .line 1275
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "**oo**"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    goto :goto_1f

    :cond_51
    const/4 v12, -0x1

    :goto_1f
    if-ltz v12, :cond_52

    .line 1278
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-direct {v3, v13}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v13, v12, 0x6

    invoke-virtual {v0, v3, v12, v13, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_20

    :cond_52
    const-string v13, " "

    .line 1280
    invoke-virtual {v4, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v13, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-direct {v13, v3}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v0, v13, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_20
    move/from16 v16, v12

    const/4 v0, 0x0

    goto :goto_21

    .line 1286
    :cond_53
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1287
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    move-object/from16 v4, v22

    const/4 v0, 0x1

    const/16 v16, -0x1

    .line 1289
    :goto_21
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_5b

    .line 1291
    sget v0, Lorg/telegram/messenger/R$string;->Draft:I

    const-string v3, "Draft"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1292
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1293
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_55

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_54

    goto :goto_22

    .line 1296
    :cond_54
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1297
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "chats_draft"

    invoke-direct {v10, v12, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v3, v10, v6, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v2, v3

    goto :goto_23

    :cond_55
    :goto_22
    move-object/from16 v2, v22

    :goto_23
    const/4 v3, 0x1

    const/4 v10, 0x0

    goto/16 :goto_49

    .line 1301
    :cond_56
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 1302
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x96

    if-le v11, v12, :cond_57

    .line 1303
    invoke-virtual {v3, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1305
    :cond_57
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/16 v12, 0x108

    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/tgnet/TLRPC$DraftMessage;Landroid/text/Spannable;I)V

    .line 1307
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_59

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    .line 1308
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v12, :cond_58

    move-object v12, v7

    goto :goto_24

    :cond_58
    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    :goto_24
    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_59
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/CharSequence;

    .line 1311
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v12, v6

    aput-object v0, v12, v5

    invoke-static {v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1312
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_5a

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v10, :cond_5a

    .line 1313
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "chats_draft"

    invoke-direct {v10, v12, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v3, v10, v6, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1315
    :cond_5a
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v10

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v3, v2, v10, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_23

    .line 1318
    :cond_5b
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v3, :cond_5c

    .line 1319
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1320
    sget v2, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    const-string v3, "HistoryCleared"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_25
    move v10, v0

    move-object v0, v7

    :goto_26
    const/4 v3, 0x1

    goto/16 :goto_49

    .line 1321
    :cond_5c
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_63

    .line 1322
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_61

    .line 1323
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v10

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1324
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v3, :cond_5d

    .line 1325
    sget v2, Lorg/telegram/messenger/R$string;->EncryptionProcessing:I

    const-string v3, "EncryptionProcessing"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1326
    :cond_5d
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v3, :cond_5e

    .line 1327
    sget v2, Lorg/telegram/messenger/R$string;->AwaitingEncryption:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v6

    const-string v10, "AwaitingEncryption"

    invoke-static {v10, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1328
    :cond_5e
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v3, :cond_5f

    .line 1329
    sget v2, Lorg/telegram/messenger/R$string;->EncryptionRejected:I

    const-string v3, "EncryptionRejected"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1330
    :cond_5f
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_62

    .line 1331
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v12, v2, v10

    if-nez v12, :cond_60

    .line 1332
    sget v2, Lorg/telegram/messenger/R$string;->EncryptedChatStartedOutgoing:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v6

    const-string v10, "EncryptedChatStartedOutgoing"

    invoke-static {v10, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1334
    :cond_60
    sget v2, Lorg/telegram/messenger/R$string;->EncryptedChatStartedIncoming:I

    const-string v3, "EncryptedChatStartedIncoming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1338
    :cond_61
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_62

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1339
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    const-string v3, "SavedMessagesInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move-object v0, v7

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto/16 :goto_49

    :cond_62
    move v10, v0

    move-object v0, v7

    move-object/from16 v2, v22

    goto/16 :goto_26

    .line 1347
    :cond_63
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1350
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v12

    .line 1351
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v14

    if-eqz v14, :cond_64

    .line 1352
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-object v12, v7

    goto :goto_27

    .line 1354
    :cond_64
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 1356
    :goto_27
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    .line 1358
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v13, :cond_68

    iget-wide v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v25, 0x0

    cmp-long v27, v13, v25

    if-lez v27, :cond_68

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v13

    if-eqz v13, :cond_68

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v13, :cond_68

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v13, :cond_68

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_68

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v13, :cond_68

    .line 1359
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 1360
    iget-boolean v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v14, :cond_68

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v26, v8

    iget-wide v7, v14, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v27, 0x0

    cmp-long v14, v7, v27

    if-eqz v14, :cond_67

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    move-object/from16 v28, v3

    iget-wide v2, v14, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v14, v7, v2

    if-eqz v14, :cond_69

    .line 1362
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    .line 1363
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v7

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1364
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_65

    .line 1365
    sget v2, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const-string v3, "ReactionInDialog"

    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_28
    const/4 v3, 0x1

    goto :goto_2b

    .line 1367
    :cond_65
    sget v3, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "**reaction**"

    aput-object v8, v7, v6

    const-string v8, "ReactionInDialog"

    invoke-static {v8, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "**reaction**"

    .line 1368
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "**reaction**"

    const-string v13, "d"

    .line 1369
    invoke-virtual {v3, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1371
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1372
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v13, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v2, :cond_66

    const/4 v2, 0x0

    goto :goto_29

    :cond_66
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_29
    invoke-direct {v3, v13, v14, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v8, v3, v7, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v2, v8

    goto :goto_28

    :cond_67
    move-object/from16 v28, v3

    goto :goto_2a

    :cond_68
    move-object/from16 v28, v3

    move/from16 v26, v8

    :cond_69
    :goto_2a
    move-object/from16 v2, v22

    const/4 v3, 0x0

    :goto_2b
    if-eqz v3, :cond_6a

    :goto_2c
    move/from16 v8, v26

    :goto_2d
    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_47

    .line 1380
    :cond_6a
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_72

    .line 1381
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_71

    .line 1382
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_6d

    .line 1383
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_6b

    const-string v2, "Subscribers"

    .line 1384
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1386
    :cond_6b
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1387
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v3, "ChannelPrivate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1389
    :cond_6c
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v3, "ChannelPublic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1393
    :cond_6d
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_6e

    const-string v2, "Members"

    .line 1394
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1396
    :cond_6e
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_6f

    .line 1397
    sget v2, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v3, "MegaLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1398
    :cond_6f
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 1399
    sget v2, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v3, "MegaPrivate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1401
    :cond_70
    sget v2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v3, "MegaPublic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_71
    move-object/from16 v2, v22

    .line 1408
    :goto_2e
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    goto :goto_2f

    :cond_72
    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    .line 1411
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1412
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    const-string v3, "SavedMessagesInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_47

    .line 1415
    :cond_73
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_76

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v2, :cond_76

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v2, :cond_76

    .line 1417
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isArchiveContentHidden()Z

    move-result v0

    if-eqz v0, :cond_74

    sget v0, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_74
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_75
    :goto_30
    move-object v2, v0

    :goto_31
    move/from16 v8, v26

    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 1418
    :cond_76
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_7a

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v2, :cond_7a

    .line 1419
    :cond_77
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v2, :cond_78

    move-object/from16 v11, v22

    const/4 v8, 0x0

    goto :goto_32

    :cond_78
    move/from16 v8, v26

    .line 1425
    :goto_32
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1426
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_79

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1428
    invoke-direct {v1, v11}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2d

    :cond_79
    move-object v2, v11

    goto/16 :goto_2d

    .line 1431
    :cond_7a
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1433
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_86

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v13, 0x0

    cmp-long v3, v7, v13

    if-lez v3, :cond_86

    if-nez v12, :cond_86

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_7b
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_7e

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v2, :cond_7e

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v2, :cond_7e

    .line 1436
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3, v7, v8}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1438
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v7, "-"

    invoke-direct {v3, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1439
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v8, :cond_7d

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_7c

    goto :goto_33

    :cond_7c
    const-string v8, "chats_nameMessage"

    goto :goto_34

    :cond_7d
    :goto_33
    const/4 v8, 0x0

    :goto_34
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v3, v7, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1442
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1443
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_35

    :cond_7e
    move-object v7, v0

    :goto_35
    move-object/from16 v2, v28

    .line 1448
    invoke-virtual {v1, v10, v2, v7, v6}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1451
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v0, :cond_81

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_7f

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_80

    :cond_7f
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_81

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 1453
    :cond_80
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    const-string v3, "chats_nameMessage"

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v3, v8}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v3, v5

    const/16 v8, 0x21

    :try_start_1
    invoke-virtual {v2, v0, v6, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_37

    :catch_0
    move-exception v0

    goto :goto_36

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 1456
    :goto_36
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_81
    const/4 v3, 0x0

    .line 1459
    :goto_37
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2, v0, v8, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1460
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1461
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_82

    move-object v0, v2

    .line 1466
    :cond_82
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v2, :cond_85

    .line 1467
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_83

    .line 1468
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 1471
    :cond_83
    move-object v2, v0

    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 1472
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lt v3, v8, :cond_84

    const-string v3, " "

    .line 1473
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1474
    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int v8, v8, v10

    sub-int/2addr v8, v11

    const/4 v10, 0x5

    add-int/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-direct {v3, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v2, v3, v8, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_38

    :cond_84
    const-string v8, " "

    .line 1476
    invoke-virtual {v2, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1477
    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v12, 0x2

    add-int/2addr v11, v12

    mul-int v10, v10, v11

    sub-int/2addr v10, v12

    const/4 v11, 0x5

    add-int/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v8, v10}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v10, v3, 0x1

    const/16 v11, 0x21

    invoke-virtual {v2, v8, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_85
    :goto_38
    move-object v2, v0

    move/from16 v8, v26

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_47

    :cond_86
    move-object/from16 v2, v28

    .line 1481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    :goto_39
    move-object v3, v2

    goto/16 :goto_45

    .line 1483
    :cond_87
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1484
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v3, :cond_88

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v7, :cond_89

    iget-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v7, :cond_88

    goto :goto_3a

    .line 1487
    :cond_88
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1489
    :cond_89
    :goto_3a
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    instance-of v2, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v2, :cond_a4

    .line 1490
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    neg-long v7, v7

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v10

    invoke-virtual {v2, v7, v8, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 1492
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    check-cast v7, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto/16 :goto_45

    .line 1495
    :cond_8a
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_8b

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v3, :cond_8b

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v3, :cond_8b

    .line 1496
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v3, "AttachPhotoExpired"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_45

    .line 1497
    :cond_8b
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_8c

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v3, :cond_8c

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v2, :cond_8c

    .line 1498
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v3, "AttachVideoExpired"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_45

    .line 1499
    :cond_8c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 1500
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 1502
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v3, :cond_8d

    move-object/from16 v3, v22

    goto :goto_3b

    .line 1504
    :cond_8d
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string v3, "\ud83d\udcf9 "

    goto :goto_3b

    .line 1506
    :cond_8e
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_8f

    const-string v3, "\ud83c\udfa4 "

    goto :goto_3b

    .line 1508
    :cond_8f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, "\ud83c\udfa7 "

    goto :goto_3b

    .line 1510
    :cond_90
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v3

    if-eqz v3, :cond_91

    const-string v3, "\ud83d\uddbc "

    goto :goto_3b

    :cond_91
    const-string v3, "\ud83d\udcce "

    .line 1515
    :goto_3b
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v7

    if-eqz v7, :cond_95

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 1516
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1520
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0x17

    add-int/lit8 v10, v10, 0x18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    .line 1521
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v10, :cond_93

    const/4 v10, 0x0

    .line 1522
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_92

    int-to-float v8, v8

    .line 1525
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v8, v11

    float-to-int v8, v8

    goto :goto_3c

    .line 1523
    :cond_92
    throw v10

    :cond_93
    :goto_3c
    if-lez v8, :cond_94

    .line 1528
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v11, 0x82

    invoke-static {v7, v2, v8, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1530
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 1532
    :cond_95
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1533
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_97

    .line 1534
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v11, 0x108

    invoke-static {v8, v10, v7, v11}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 1535
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v8, :cond_96

    const/4 v8, 0x0

    goto :goto_3d

    :cond_96
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    :goto_3d
    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1537
    :cond_97
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_39

    .line 1539
    :cond_98
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le v2, v5, :cond_9c

    .line 1540
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v2, :cond_9a

    .line 1541
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_99

    const/4 v2, 0x0

    goto :goto_3e

    :cond_99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3e
    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "Media"

    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    .line 1543
    :cond_9a
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_9b

    const/4 v2, 0x0

    goto :goto_3f

    :cond_9b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3f
    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "Photos"

    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_40
    move-object v3, v2

    .line 1545
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v7

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_45

    .line 1547
    :cond_9c
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v7, :cond_9d

    .line 1548
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83d\udcca "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_41
    move-object v3, v2

    goto/16 :goto_44

    .line 1550
    :cond_9d
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v7, :cond_9e

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udfae "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 1552
    :cond_9e
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v7, :cond_9f

    .line 1553
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto :goto_41

    .line 1554
    :cond_9f
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xe

    if-ne v3, v7, :cond_a0

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    .line 1555
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v6

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    const-string v2, "\ud83c\udfa7 %s - %s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 1557
    :cond_a0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 1558
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v7, v7, 0x17

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v3, v7

    .line 1563
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v10, 0x82

    invoke-static {v2, v7, v3, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 1565
    :cond_a1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v7, 0x108

    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 1567
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_a3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_a3

    .line 1568
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v7, :cond_a2

    const/4 v7, 0x0

    goto :goto_42

    :cond_a2
    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    :goto_42
    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1572
    :cond_a3
    :goto_43
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto/16 :goto_41

    .line 1574
    :goto_44
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_a4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 1575
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v7

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1578
    :cond_a4
    :goto_45
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v2, :cond_a8

    .line 1579
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1580
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1584
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x17

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int v7, v7, v10

    add-int/2addr v3, v7

    sub-int/2addr v3, v8

    const/4 v7, 0x5

    add-int/2addr v3, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1585
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v8, 0x82

    invoke-static {v0, v3, v2, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 1587
    :cond_a5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x96

    if-le v0, v2, :cond_a6

    .line 1588
    invoke-interface {v3, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1590
    :cond_a6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1592
    :goto_46
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_a7

    .line 1593
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 1596
    :cond_a7
    move-object v2, v0

    check-cast v2, Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    .line 1597
    invoke-virtual {v2, v6, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1598
    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int v7, v7, v10

    sub-int/2addr v7, v8

    const/4 v8, 0x5

    add-int/2addr v7, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-direct {v3, v7}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1599
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v7, 0x11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2, v3, v8, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 1600
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1601
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_75

    goto/16 :goto_31

    :cond_a8
    move-object v2, v3

    goto/16 :goto_2c

    .line 1609
    :goto_47
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v10, :cond_aa

    .line 1610
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isArchiveContentHidden()Z

    move-result v7

    if-eqz v7, :cond_a9

    sget v7, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_48

    :cond_a9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v7

    :cond_aa
    :goto_48
    move v10, v0

    move-object v0, v7

    const/4 v7, 0x0

    .line 1616
    :goto_49
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v11, :cond_ab

    .line 1617
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    .line 1618
    :cond_ab
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v11, :cond_ac

    int-to-long v11, v11

    .line 1619
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    .line 1620
    :cond_ac
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_ad

    .line 1621
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    :cond_ad
    move-object/from16 v11, v22

    .line 1624
    :goto_4a
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v12, :cond_ae

    .line 1625
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1626
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1627
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1628
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1629
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 1630
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1631
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_58

    .line 1633
    :cond_ae
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v13, :cond_b2

    .line 1635
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isArchiveContentHidden()Z

    move-result v12

    if-eqz v12, :cond_af

    .line 1636
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_4b

    .line 1638
    :cond_af
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    add-int v14, v12, v13

    if-lez v14, :cond_b1

    if-le v12, v13, :cond_b0

    .line 1640
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1641
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v5, [Ljava/lang/Object;

    add-int/2addr v12, v13

    .line 1642
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v6

    const-string v12, "%d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4c

    .line 1644
    :cond_b0
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1645
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v5, [Ljava/lang/Object;

    add-int/2addr v12, v13

    .line 1646
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v6

    const-string v12, "%d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    const/4 v12, 0x0

    goto :goto_4d

    .line 1649
    :cond_b1
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1650
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    :goto_4b
    const/4 v12, 0x0

    :goto_4c
    const/4 v13, 0x0

    .line 1652
    :goto_4d
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_51

    .line 1654
    :cond_b2
    iget-boolean v13, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v13, :cond_b3

    .line 1655
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v8, 0x0

    :goto_4e
    const/4 v12, 0x0

    goto :goto_4f

    .line 1657
    :cond_b3
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v13, :cond_b6

    if-ne v13, v5, :cond_b4

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v13, v14, :cond_b4

    if-eqz v12, :cond_b4

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-nez v12, :cond_b6

    .line 1658
    :cond_b4
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1660
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_b5

    const/16 v12, 0x63

    if-le v13, v12, :cond_b5

    const-string v12, "99+"

    goto :goto_4f

    :cond_b5
    new-array v12, v5, [Ljava/lang/Object;

    .line 1663
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "%d"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4f

    .line 1664
    :cond_b6
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v12, :cond_b7

    .line 1665
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object/from16 v12, v22

    goto :goto_4f

    .line 1668
    :cond_b7
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_4e

    .line 1670
    :goto_4f
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-eqz v13, :cond_b8

    .line 1671
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const-string v13, "@"

    goto :goto_50

    .line 1674
    :cond_b8
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const/4 v13, 0x0

    .line 1676
    :goto_50
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v14, :cond_b9

    .line 1677
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_51

    .line 1679
    :cond_b9
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1683
    :goto_51
    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_c5

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v14, :cond_c5

    if-eqz v8, :cond_c5

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v14, :cond_c5

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v14, :cond_ba

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v14, :cond_c5

    .line 1684
    :cond_ba
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 1685
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1686
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1687
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1688
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_58

    .line 1689
    :cond_bb
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 1690
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1691
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1692
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1693
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1694
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1695
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_58

    .line 1696
    :cond_bc
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 1697
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v8, :cond_be

    .line 1698
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-lt v8, v14, :cond_bd

    const/4 v8, 0x1

    goto :goto_52

    :cond_bd
    const/4 v8, 0x0

    :goto_52
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_57

    .line 1699
    :cond_be
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v8, :cond_c2

    .line 1700
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    if-lez v8, :cond_bf

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ge v8, v14, :cond_c1

    :cond_bf
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v8

    if-eqz v8, :cond_c1

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_c0

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_c0

    goto :goto_53

    :cond_c0
    const/4 v8, 0x0

    goto :goto_54

    :cond_c1
    :goto_53
    const/4 v8, 0x1

    :goto_54
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_57

    .line 1702
    :cond_c2
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v8

    if-eqz v8, :cond_c4

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_c3

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_c3

    goto :goto_55

    :cond_c3
    const/4 v8, 0x0

    goto :goto_56

    :cond_c4
    :goto_55
    const/4 v8, 0x1

    :goto_56
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1704
    :goto_57
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1705
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1706
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_58

    .line 1709
    :cond_c5
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1710
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1711
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1712
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1716
    :cond_c6
    :goto_58
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1717
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    .line 1718
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    move/from16 v26, v10

    if-nez v14, :cond_ca

    iget-wide v9, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v8, v9, v10, v5}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 1719
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1720
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1721
    iget v9, v8, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v10, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PROXY:I

    if-ne v9, v10, :cond_c7

    .line 1722
    sget v8, Lorg/telegram/messenger/R$string;->UseProxySponsor:I

    const-string v9, "UseProxySponsor"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_59

    .line 1723
    :cond_c7
    sget v10, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-ne v9, v10, :cond_ca

    .line 1724
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PsaType_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/telegram/messenger/MessagesController;->promoPsaType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1725
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 1726
    sget v9, Lorg/telegram/messenger/R$string;->PsaTypeDefault:I

    const-string v10, "PsaTypeDefault"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1728
    :cond_c8
    iget-object v10, v8, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c9

    .line 1729
    iget-object v2, v8, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    .line 1730
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    :cond_c9
    move-object v10, v9

    goto :goto_59

    :cond_ca
    move-object v10, v11

    .line 1735
    :goto_59
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_cc

    .line 1736
    sget v8, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v9, "ArchivedChats"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :cond_cb
    :goto_5a
    move-object v14, v8

    move-object v15, v12

    move/from16 v8, v26

    move-object v12, v7

    move-object v7, v4

    move/from16 v4, v16

    move-object/from16 v51, v2

    move-object v2, v0

    move v0, v3

    move-object/from16 v3, v51

    goto/16 :goto_5d

    .line 1738
    :cond_cc
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_d2

    .line 1739
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v9, :cond_ce

    .line 1740
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_cd

    new-array v8, v5, [Landroid/graphics/drawable/Drawable;

    .line 1741
    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1743
    :cond_cd
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v9, v8, v6

    .line 1744
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9, v11, v14, v15}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_d8

    goto/16 :goto_5b

    .line 1748
    :cond_ce
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v9, :cond_d1

    .line 1749
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_cf

    new-array v8, v5, [Landroid/graphics/drawable/Drawable;

    .line 1750
    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1752
    :cond_cf
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v9, v8, v6

    .line 1753
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz v9, :cond_d0

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v11, v11, v14

    invoke-static {v9, v11, v8}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5c

    :cond_d0
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_5c

    .line 1755
    :cond_d1
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_5c

    .line 1757
    :cond_d2
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_d7

    .line 1758
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1759
    sget v8, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v9, "RepliesTitle"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5c

    .line 1760
    :cond_d3
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 1761
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v8, :cond_d4

    .line 1762
    sget v8, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v9, "FromYou"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5c

    .line 1764
    :cond_d4
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d5

    .line 1765
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1767
    :cond_d5
    sget v8, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v9, "SavedMessages"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1769
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isCloudContentHidden()Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 1770
    sget v2, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 1775
    :cond_d6
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5c

    :cond_d7
    :goto_5b
    move-object/from16 v8, v22

    :cond_d8
    :goto_5c
    if-eqz v8, :cond_cb

    .line 1778
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_cb

    .line 1779
    sget v8, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v9, "HiddenName"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5a

    :goto_5d
    if-eqz v0, :cond_da

    .line 1786
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 1787
    new-instance v5, Landroid/text/StaticLayout;

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v9, v5

    move-object/from16 v37, v12

    move v12, v0

    move-object/from16 v38, v13

    move-object v13, v6

    move-object v6, v14

    move/from16 v14, v16

    move-object/from16 v39, v15

    move/from16 v15, v29

    move/from16 v16, v30

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 1788
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_d9

    .line 1789
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/16 v9, 0xf

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v5, v9

    sub-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_5e

    :cond_d9
    const/16 v5, 0xf

    .line 1791
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_5e

    :cond_da
    move-object/from16 v37, v12

    move-object/from16 v38, v13

    move-object v6, v14

    move-object/from16 v39, v15

    const/4 v5, 0x0

    .line 1795
    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    .line 1796
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    const/4 v0, 0x0

    .line 1800
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1801
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_db

    .line 1802
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v5, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    goto :goto_5f

    .line 1804
    :cond_db
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v5, v9

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    .line 1806
    :goto_5f
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, 0x0

    add-int/2addr v5, v9

    add-int/2addr v0, v5

    move/from16 v51, v5

    move v5, v0

    move/from16 v0, v51

    goto :goto_60

    :cond_dc
    move v5, v0

    const/4 v0, 0x0

    .line 1810
    :goto_60
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_dd

    .line 1811
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_61

    .line 1813
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v11, 0x5

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1814
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v5

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1817
    :goto_61
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    const/16 v10, 0x1f

    const/16 v40, 0xc

    if-eqz v9, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v9

    if-nez v9, :cond_e2

    .line 1818
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v9, :cond_de

    .line 1819
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_63

    :cond_de
    move-object/from16 v12, v39

    move-object/from16 v13, v38

    if-nez v12, :cond_e0

    if-eqz v13, :cond_df

    goto :goto_62

    .line 1827
    :cond_df
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v9, :cond_e3

    .line 1828
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_64

    :cond_e0
    :goto_62
    if-eqz v12, :cond_e1

    .line 1822
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v14, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v14, 0x12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v11, v15

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    :cond_e1
    if-eqz v13, :cond_e3

    .line 1825
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    const/16 v11, 0x1e

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_64

    :cond_e2
    :goto_63
    move-object/from16 v13, v38

    move-object/from16 v12, v39

    .line 1832
    :cond_e3
    :goto_64
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v9, :cond_e4

    .line 1833
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v11, v14

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1835
    :cond_e4
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_e6

    .line 1836
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    .line 1837
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1838
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e5

    .line 1839
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    goto/16 :goto_65

    .line 1841
    :cond_e5
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    .line 1842
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_65

    .line 1844
    :cond_e6
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_ea

    .line 1845
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    .line 1846
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1847
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v14, :cond_e8

    .line 1848
    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v11, v14

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1849
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e7

    .line 1850
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v0, 0x40b00000    # 5.5f

    .line 1851
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v11, v0

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto :goto_65

    .line 1853
    :cond_e7
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v11, 0x40b00000    # 5.5f

    .line 1854
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v0, v11

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 1855
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v9, v11

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_65

    .line 1858
    :cond_e8
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e9

    .line 1859
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    goto :goto_65

    .line 1861
    :cond_e9
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    .line 1862
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1867
    :cond_ea
    :goto_65
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_eb

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_eb

    const/16 v0, 0x24

    .line 1868
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1869
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1870
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1871
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_67

    .line 1873
    :cond_eb
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v0, :cond_ec

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_ed

    :cond_ec
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_ed

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v0, :cond_ed

    .line 1874
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 1875
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1876
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1877
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_67

    .line 1879
    :cond_ed
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_ee

    .line 1880
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 1881
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1882
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1883
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_67

    .line 1885
    :cond_ee
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_ef

    const/16 v0, 0x24

    .line 1886
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1887
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1888
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1889
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_67

    .line 1891
    :cond_ef
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_f1

    .line 1892
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_f0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_66

    :cond_f0
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_66
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 1893
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1894
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1895
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1899
    :cond_f1
    :goto_67
    :try_start_2
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    if-gez v0, :cond_f2

    const/4 v0, 0x0

    .line 1903
    :cond_f2
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_f3

    .line 1904
    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    const/16 v6, 0x20

    const/16 v9, 0xa

    invoke-virtual {v14, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1907
    :cond_f3
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v9, :cond_f5

    .line 1908
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v11, v11, v15

    int-to-float v15, v0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v11, v15, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v9, v11, :cond_f4

    const/4 v9, 0x1

    goto :goto_68

    :cond_f4
    const/4 v9, 0x0

    :goto_68
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    const/16 v9, 0x30

    .line 1909
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    .line 1911
    :cond_f5
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v11

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v11, v0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_f6

    const/4 v9, 0x1

    goto :goto_69

    :cond_f6
    const/4 v9, 0x0

    :goto_69
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    .line 1912
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-nez v9, :cond_f7

    .line 1913
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v14

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v9, v11, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1915
    :cond_f7
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v11

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v14, 0x0

    invoke-static {v6, v9, v11, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1916
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_f8

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 1917
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_f8

    move-object/from16 v30, v9

    goto :goto_6a

    :cond_f8
    move-object/from16 v30, v6

    .line 1922
    :goto_6a
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v6, :cond_f9

    .line 1923
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v42, v6, v9

    sget-object v44, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v45, 0x3f800000    # 1.0f

    const/16 v46, 0x0

    const/16 v47, 0x0

    sget-object v48, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v50, 0x2

    move-object/from16 v41, v30

    move/from16 v43, v0

    move/from16 v49, v0

    invoke-static/range {v41 .. v50}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    goto :goto_6b

    .line 1925
    :cond_f9
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v31, v9, v11

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v32

    sget-object v33, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v6

    invoke-direct/range {v29 .. v36}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    .line 1927
    :goto_6b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_fa

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_6c

    :cond_fa
    const/4 v0, 0x0

    :goto_6c
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    .line 1928
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6d

    :catch_2
    move-exception v0

    .line 1930
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1933
    :goto_6d
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v6, 0x1

    new-array v9, v6, [Landroid/text/Layout;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    invoke-static {v11, v1, v0, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1941
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_fc

    const/4 v0, 0x7

    .line 1942
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x11

    .line 1943
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/high16 v6, 0x41480000    # 12.5f

    .line 1944
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 1945
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 1946
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v6, 0x13

    .line 1947
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1948
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1949
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    if-nez v9, :cond_fb

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_fb
    const/4 v11, 0x2

    div-int/2addr v9, v11

    const/16 v11, 0x11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v9, v14

    .line 1950
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v9, v9

    int-to-float v14, v0

    const/16 v15, 0x22

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x22

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v11, v9, v14, v15, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    move/from16 v16, v0

    goto/16 :goto_77

    .line 1952
    :cond_fc
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_102

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_fd

    goto/16 :goto_73

    :cond_fd
    const/16 v0, 0x9

    .line 1976
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x1f

    .line 1977
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v6, 0x10

    .line 1978
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v6, 0x27

    .line 1979
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v6, 0x27

    .line 1980
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 1981
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v6, :cond_fe

    const/16 v6, 0x24

    goto :goto_6e

    :cond_fe
    const/16 v6, 0x27

    :goto_6e
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v6, 0x11

    .line 1982
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1983
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x17

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    const/4 v10, 0x0

    goto :goto_6f

    :cond_ff
    const/16 v10, 0xc

    :goto_6f
    sub-int/2addr v9, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1985
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_100

    .line 1986
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 1987
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x40

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 1988
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v11, v14

    mul-int v10, v10, v11

    sub-int/2addr v10, v14

    add-int/lit8 v10, v10, 0xb

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v9, v10

    goto :goto_70

    .line 1990
    :cond_100
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v9, 0xa

    .line 1991
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v10, 0x43

    .line 1992
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 1994
    :goto_70
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v9, v9

    int-to-float v14, v0

    const/16 v15, 0x36

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x36

    move/from16 v17, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v11, v9, v14, v15, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    const/4 v6, 0x0

    .line 1995
    :goto_71
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v11, v9

    if-ge v6, v11, :cond_105

    .line 1996
    aget-object v9, v9, v6

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v11, v14

    mul-int v11, v11, v6

    add-int/2addr v11, v10

    int-to-float v11, v11

    const/16 v14, 0x1e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v0

    iget-boolean v15, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v15, :cond_101

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_72

    :cond_101
    const/4 v15, 0x0

    :goto_72
    add-int/2addr v14, v15

    int-to-float v14, v14

    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v0

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v11, v14, v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto :goto_71

    :cond_102
    :goto_73
    const/16 v0, 0xb

    .line 1953
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x20

    .line 1954
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v6, 0xd

    .line 1955
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v6, 0x2b

    .line 1956
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v6, 0x2b

    .line 1957
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v6, 0x2b

    .line 1958
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v6, 0xd

    .line 1959
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1960
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1962
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_103

    const/16 v9, 0x10

    .line 1963
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x42

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x1f

    .line 1965
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v10, v9, v11

    goto :goto_74

    .line 1967
    :cond_103
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v9, 0xa

    .line 1968
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v10, 0x45

    .line 1969
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 1971
    :goto_74
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v9, v9

    int-to-float v14, v0

    const/16 v15, 0x38

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x38

    move/from16 v17, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v11, v9, v14, v15, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    const/4 v6, 0x0

    .line 1972
    :goto_75
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v11, v9

    if-ge v6, v11, :cond_105

    .line 1973
    aget-object v9, v9, v6

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v11, v14

    mul-int v11, v11, v6

    add-int/2addr v11, v10

    int-to-float v11, v11

    const/16 v14, 0x1f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v0

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v14, :cond_104

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    goto :goto_76

    :cond_104
    const/4 v14, 0x0

    :goto_76
    add-int/2addr v15, v14

    int-to-float v14, v15

    move/from16 v16, v0

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move/from16 v18, v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v11, v14, v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move/from16 v10, v18

    goto :goto_75

    :cond_105
    move/from16 v16, v0

    move/from16 v6, v17

    .line 1999
    :goto_77
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_106

    .line 2000
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2002
    :cond_106
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 2003
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_108

    .line 2004
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v0, v9

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2006
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_109

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_109

    .line 2007
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2008
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_107

    .line 2009
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_78

    :cond_107
    const/4 v10, 0x5

    .line 2010
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_109

    .line 2011
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2012
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_109

    .line 2013
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_78

    :cond_108
    const/16 v0, 0xe

    .line 2019
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2022
    :cond_109
    :goto_78
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v0, :cond_10c

    const/16 v9, 0x1f

    .line 2023
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    .line 2025
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_10b

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/16 v9, 0x22

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2028
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_123

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_123

    .line 2029
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/16 v9, 0xb

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2030
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v5, :cond_10a

    .line 2031
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    const/4 v9, 0x5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_85

    :cond_10a
    const/4 v9, 0x5

    .line 2032
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v5, :cond_123

    .line 2033
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2034
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v5, :cond_123

    .line 2035
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v5, v9

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_85

    :cond_10b
    const/16 v5, 0xb

    .line 2041
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2042
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2043
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2044
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_85

    :cond_10c
    if-nez v12, :cond_10f

    if-nez v13, :cond_10f

    .line 2046
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_10d

    goto :goto_79

    .line 2133
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2134
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    sub-int/2addr v6, v0

    .line 2136
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10e

    .line 2137
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2138
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2139
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_10e
    const/4 v5, 0x0

    .line 2142
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2143
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_85

    :cond_10f
    :goto_79
    if-eqz v12, :cond_113

    .line 2048
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 2049
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v31, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v33, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v0

    move-object/from16 v30, v12

    move/from16 v32, v9

    invoke-direct/range {v29 .. v36}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 2050
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    sub-int/2addr v6, v0

    .line 2052
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_111

    .line 2053
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v0, v9

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2055
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_112

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_112

    .line 2056
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2057
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_110

    .line 2058
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_7a

    :cond_110
    const/4 v10, 0x5

    .line 2059
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_112

    .line 2060
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2061
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_112

    .line 2062
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_7a

    .line 2068
    :cond_111
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2069
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2070
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2071
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_112
    :goto_7a
    const/4 v9, 0x1

    .line 2073
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_7b

    :cond_113
    const/4 v9, 0x0

    .line 2075
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    :goto_7b
    if-eqz v13, :cond_119

    .line 2078
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_114

    .line 2079
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2080
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v31, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sget-object v33, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v0

    move-object/from16 v30, v13

    move/from16 v32, v9

    invoke-direct/range {v29 .. v36}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    goto :goto_7c

    .line 2082
    :cond_114
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2084
    :goto_7c
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    sub-int/2addr v6, v0

    .line 2086
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_116

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sub-int/2addr v0, v9

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_115

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_7d

    :cond_115
    const/4 v9, 0x0

    :goto_7d
    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2089
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_118

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_118

    .line 2090
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    goto :goto_7f

    .line 2094
    :cond_116
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v10, :cond_117

    const/16 v11, 0x12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_7e

    :cond_117
    const/4 v10, 0x0

    :goto_7e
    add-int/2addr v9, v10

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2095
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2096
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2097
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_118
    :goto_7f
    const/4 v9, 0x1

    .line 2099
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto :goto_80

    :cond_119
    const/4 v9, 0x0

    .line 2101
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2103
    :goto_80
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_123

    const/16 v0, 0x18

    .line 2104
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    .line 2106
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_11e

    .line 2107
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/16 v9, 0x20

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v0, v10

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2108
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_11b

    .line 2109
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v9, :cond_11a

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_81

    :cond_11a
    const/4 v9, 0x0

    :goto_81
    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2111
    :cond_11b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_11d

    .line 2112
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_11c

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_82

    :cond_11c
    const/4 v9, 0x0

    :goto_82
    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2115
    :cond_11d
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_123

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_123

    .line 2116
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    goto :goto_85

    .line 2120
    :cond_11e
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2121
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_120

    .line 2122
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v9, :cond_11f

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_83

    :cond_11f
    const/4 v9, 0x0

    :goto_83
    add-int/2addr v5, v9

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2124
    :cond_120
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v5, :cond_122

    .line 2125
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_121

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_84

    :cond_121
    const/4 v9, 0x0

    :goto_84
    add-int/2addr v5, v9

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2127
    :cond_122
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2128
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2129
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_123
    :goto_85
    if-eqz v8, :cond_129

    if-nez v3, :cond_124

    move-object/from16 v3, v22

    .line 2151
    :cond_124
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0x96

    if-le v0, v5, :cond_125

    const/4 v8, 0x0

    .line 2152
    invoke-interface {v3, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2154
    :cond_125
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_126

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_127

    :cond_126
    if-eqz v2, :cond_128

    .line 2155
    :cond_127
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_86

    .line 2157
    :cond_128
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2159
    :goto_86
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v5, 0x0

    invoke-static {v0, v3, v8, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2160
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_129

    .line 2161
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_129

    move-object v3, v0

    .line 2167
    :cond_129
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2168
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_12b

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_12a

    goto :goto_87

    :cond_12a
    const/16 v0, 0x3e

    goto :goto_88

    :cond_12b
    :goto_87
    const/16 v0, 0x3a

    :goto_88
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 2170
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_12d

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_12c

    goto :goto_89

    :cond_12c
    const/16 v0, 0x27

    .line 2173
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_8a

    :cond_12d
    :goto_89
    const/16 v0, 0x22

    .line 2171
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    :goto_8a
    const/4 v0, 0x0

    .line 2175
    :goto_8b
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v8, v6

    if-ge v0, v8, :cond_137

    .line 2176
    aget-object v6, v6, v0

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 2178
    :cond_12e
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_12f

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_133

    :cond_12f
    if-eqz v2, :cond_133

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_130

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_133

    .line 2180
    :cond_130
    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_131

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 2181
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_131

    move-object v2, v0

    .line 2186
    :cond_131
    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget-object v30, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    const/16 v33, 0x0

    sget-object v34, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v36, 0x1

    move-object/from16 v27, v2

    move/from16 v29, v5

    move/from16 v35, v5

    invoke-static/range {v27 .. v36}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8c

    :catch_3
    move-exception v0

    .line 2188
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8c
    const/16 v0, 0x33

    .line 2190
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2191
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_132

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_132

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_8d

    :cond_132
    const/4 v0, 0x0

    :goto_8d
    const/4 v6, 0x0

    .line 2192
    :goto_8e
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v8

    if-ge v6, v9, :cond_137

    .line 2193
    aget-object v8, v8, v6

    add-int v9, v16, v0

    const/16 v10, 0x28

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    :cond_133
    const/4 v6, 0x0

    .line 2196
    iput-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_135

    .line 2197
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_134

    goto :goto_8f

    :cond_134
    const/16 v0, 0x27

    .line 2204
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_92

    :cond_135
    :goto_8f
    const/16 v6, 0x20

    .line 2198
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2199
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_136

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_136

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_90

    :cond_136
    const/4 v0, 0x0

    :goto_90
    const/4 v6, 0x0

    .line 2200
    :goto_91
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v8

    if-ge v6, v9, :cond_137

    .line 2201
    aget-object v8, v8, v6

    add-int v9, v16, v0

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    :cond_137
    :goto_92
    move-object v10, v2

    .line 2208
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_138

    .line 2209
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2211
    :cond_138
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v6, v2, [Landroid/text/Layout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    invoke-static {v8, v1, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2215
    :try_start_4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    .line 2216
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 2217
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v2, 0x11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    move-object/from16 v6, v37

    invoke-static {v6, v0, v2, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2218
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v6, 0x1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2219
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v14, v5, v2

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 2220
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2221
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2222
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v1, v0, v2, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    goto :goto_93

    :cond_139
    const/4 v2, 0x0

    .line 2224
    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2229
    :catch_4
    :goto_93
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v6, v2, [Landroid/text/Layout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    invoke-static {v8, v1, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2233
    :try_start_5
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_13a

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_13b

    :cond_13a
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v2, :cond_13b

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_13b

    .line 2236
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v3, v10

    const/4 v10, 0x0

    goto :goto_94

    :cond_13b
    if-nez v0, :cond_13c

    .line 2237
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_13d

    :cond_13c
    if-eqz v10, :cond_13f

    .line 2238
    :cond_13d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_13e

    instance-of v0, v3, Landroid/text/Spanned;

    if-eqz v0, :cond_13e

    move-object v0, v3

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v8, 0x0

    invoke-interface {v0, v8, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    array-length v0, v0

    if-gtz v0, :cond_13e

    .line 2239
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    mul-int v2, v2, v6

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, 0xc

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v2, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_94

    .line 2241
    :cond_13e
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v2, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2247
    :cond_13f
    :goto_94
    instance-of v0, v3, Landroid/text/Spannable;

    if-eqz v0, :cond_142

    .line 2248
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    .line 2249
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v6, Landroid/text/style/CharacterStyle;

    const/4 v8, 0x0

    invoke-interface {v0, v8, v2, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    array-length v6, v2

    const/4 v8, 0x0

    :goto_95
    if-ge v8, v6, :cond_142

    aget-object v9, v2, v8

    .line 2250
    instance-of v11, v9, Landroid/text/style/ClickableSpan;

    if-nez v11, :cond_140

    instance-of v11, v9, Landroid/text/style/StyleSpan;

    if-eqz v11, :cond_141

    move-object v11, v9

    check-cast v11, Landroid/text/style/StyleSpan;

    invoke-virtual {v11}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_141

    .line 2251
    :cond_140
    invoke-interface {v0, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_141
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 2256
    :cond_142
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_145

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_143

    goto :goto_96

    .line 2262
    :cond_143
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_144

    .line 2263
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v6, 0x2

    add-int/2addr v2, v6

    mul-int v0, v0, v2

    sub-int/2addr v0, v6

    const/4 v2, 0x5

    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 2264
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_144

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_144

    .line 2265
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    mul-int v2, v2, v6

    sub-int/2addr v2, v8

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2268
    :cond_144
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    move-object v12, v3

    move v14, v5

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    goto :goto_98

    :cond_145
    :goto_96
    const/4 v8, 0x2

    .line 2257
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_146

    if-eqz v10, :cond_146

    const/4 v2, 0x5

    .line 2258
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 2260
    :cond_146
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v17, 0x0

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eqz v10, :cond_147

    const/16 v20, 0x1

    goto :goto_97

    :cond_147
    const/16 v20, 0x2

    :goto_97
    move-object v11, v3

    move v13, v5

    move/from16 v16, v0

    move/from16 v19, v5

    invoke-static/range {v11 .. v20}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2270
    :goto_98
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2271
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2272
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_99

    :catch_5
    move-exception v0

    const/4 v2, 0x0

    .line 2274
    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2275
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2279
    :goto_99
    :try_start_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 2280
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_149

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_148

    goto :goto_9a

    .line 2283
    :cond_148
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2284
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v2, v3

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    move v11, v5

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    goto :goto_9b

    .line 2281
    :cond_149
    :goto_9a
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v0, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v12, v0

    const/4 v13, 0x0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v16, 0x1

    move v9, v5

    move v15, v5

    invoke-static/range {v7 .. v16}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9b

    :catch_6
    move-exception v0

    .line 2288
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2290
    :cond_14a
    :goto_9b
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v6, v1, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2294
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_159

    .line 2295
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_152

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_152

    .line 2296
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 2297
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 2298
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2299
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v6, :cond_14b

    .line 2300
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2302
    :cond_14b
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v6, :cond_14c

    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v6, :cond_14d

    :cond_14c
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v6, :cond_14d

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v6, :cond_14d

    .line 2303
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v8, v8

    sub-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_9d

    .line 2304
    :cond_14d
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v6, :cond_14e

    .line 2305
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v8, v8

    sub-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_9d

    .line 2306
    :cond_14e
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v6, :cond_14f

    .line 2307
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v8, v8

    sub-double/2addr v8, v2

    float-to-double v10, v0

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    const/16 v8, 0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_9d

    .line 2308
    :cond_14f
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v6, :cond_151

    .line 2309
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v8, v8

    sub-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_150

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_9c

    :cond_150
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_9c
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_9d

    :cond_151
    const/4 v6, 0x0

    .line 2311
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    :goto_9d
    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_152

    .line 2314
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_152

    .line 2315
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v8, v0

    sub-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2319
    :cond_152
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_155

    .line 2320
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_155

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_9e
    if-ge v2, v0, :cond_154

    .line 2324
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_153

    .line 2326
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v5

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2327
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_153
    const/4 v3, 0x0

    :cond_154
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_155

    .line 2334
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2338
    :cond_155
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_158

    .line 2339
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_158

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_9f
    if-ge v2, v0, :cond_157

    .line 2343
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_156

    .line 2345
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v5

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2346
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_156
    const/4 v3, 0x0

    :cond_157
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_158

    .line 2353
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2357
    :cond_158
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_165

    .line 2358
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_165

    .line 2360
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v5, v5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_165

    .line 2362
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-double v7, v0

    sub-double/2addr v5, v2

    add-double/2addr v7, v5

    double-to-int v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_a3

    .line 2367
    :cond_159
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_15e

    .line 2368
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v0

    .line 2369
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v2, :cond_15a

    .line 2370
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2372
    :cond_15a
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_15c

    .line 2373
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 2374
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v5, :cond_15b

    .line 2375
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2379
    :cond_15b
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v5

    cmpg-double v8, v2, v6

    if-gez v8, :cond_15c

    .line 2380
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v8, v5

    sub-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2383
    :cond_15c
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v2, :cond_15d

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-nez v2, :cond_15d

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_15d

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v2, :cond_15d

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v2, :cond_15e

    .line 2384
    :cond_15d
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 2387
    :cond_15e
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_160

    .line 2388
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_160

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v0, :cond_15f

    .line 2392
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 2394
    :cond_15f
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2397
    :cond_160
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_162

    .line 2398
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_162

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_a1
    if-ge v3, v0, :cond_161

    .line 2402
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 2404
    :cond_161
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2407
    :cond_162
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_164

    .line 2408
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_164

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_a2
    if-ge v3, v0, :cond_163

    .line 2412
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 2414
    :cond_163
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2417
    :cond_164
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_165

    .line 2418
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2421
    :cond_165
    :goto_a3
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_168

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-ltz v2, :cond_168

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_168

    if-ltz v4, :cond_166

    add-int/lit8 v0, v4, 0x1

    .line 2423
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_166

    .line 2424
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2425
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_a4

    .line 2427
    :cond_166
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2428
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_a4
    cmpg-float v3, v2, v0

    if-gez v3, :cond_167

    .line 2431
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    goto :goto_a5

    .line 2433
    :cond_167
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    .line 2436
    :cond_168
    :goto_a5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateThumbsPosition()V

    return-void
.end method

.method public checkCurrentDialogIndex(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkHeight()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected drawLock2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClipProgress()F
    .locals 1

    .line 5071
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    return v0
.end method

.method public getCurrentDialogFolderId()I
    .locals 1

    .line 5087
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 696
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public getHasUnread()Z
    .locals 1

    .line 856
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getIsMuted()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 5095
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 700
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    return v0
.end method

.method public getMessageNameString()Ljava/lang/String;
    .locals 8

    .line 4855
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4861
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    .line 4862
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4863
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 4865
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4868
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4869
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4870
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const-string v3, ""

    const-string v4, "\n"

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4871
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4872
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    if-eqz v1, :cond_8

    .line 4875
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 4882
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4876
    :cond_6
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4877
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v1, "HiddenName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4879
    :cond_7
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 4884
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4885
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "DELETED"

    return-object v0
.end method

.method public getMessageStringFormatted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 4893
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 4894
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x1

    .line 4895
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 4896
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v6, :cond_1

    new-array v2, v7, [Ljava/lang/CharSequence;

    aput-object p2, v2, v8

    aput-object p3, v2, v5

    .line 4897
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4898
    :cond_1
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v10, :cond_6

    .line 4900
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v3, :cond_2

    goto :goto_1

    .line 4903
    :cond_2
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 4905
    :cond_3
    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 4906
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 4907
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v8

    instance-of v2, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v2, :cond_5

    .line 4908
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4910
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    check-cast v3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 4914
    :cond_4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 4915
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_5
    :goto_2
    if-eqz p4, :cond_2e

    .line 4918
    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_c

    :cond_6
    const-string v10, ": "

    const/16 v11, 0x82

    const/16 v12, 0x108

    const-string v13, ""

    const/16 v14, 0x96

    if-eqz v2, :cond_14

    .line 4920
    iget-object v15, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v15, :cond_14

    .line 4922
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4924
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v6, :cond_7

    goto :goto_3

    .line 4926
    :cond_7
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v13, "\ud83d\udcf9 "

    goto :goto_3

    .line 4928
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v13, "\ud83c\udfa4 "

    goto :goto_3

    .line 4930
    :cond_9
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v13, "\ud83c\udfa7 "

    goto :goto_3

    .line 4932
    :cond_a
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v13, "\ud83d\uddbc "

    goto :goto_3

    :cond_b
    const-string v13, "\ud83d\udcce "

    .line 4937
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 4938
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 4942
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v4, v4, 0x17

    add-int/lit8 v4, v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 4943
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v4, :cond_d

    .line 4944
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    int-to-float v3, v3

    .line 4945
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :cond_c
    int-to-float v3, v3

    .line 4947
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :cond_d
    if-lez v3, :cond_e

    .line 4950
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v2, v3, v4, v11}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4952
    :cond_e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4954
    :cond_f
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v14, :cond_10

    .line 4955
    invoke-interface {v3, v8, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4957
    :cond_10
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4958
    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-static {v9, v3, v6, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 4959
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_12

    .line 4960
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    :goto_4
    invoke-static {v2, v6, v4}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 4962
    :cond_12
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-eqz p4, :cond_13

    .line 4964
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_13
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 4966
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4968
    :cond_14
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v9, 0xa

    if-eqz v2, :cond_23

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 4969
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v4

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 4972
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const-string v10, "chats_actionMessage"

    const/16 v11, 0x12

    const-string v12, "chats_attachMessage"

    if-eqz v6, :cond_16

    .line 4973
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 4974
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_15

    new-array v2, v5, [Ljava/lang/Object;

    .line 4975
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_15
    new-array v2, v5, [Ljava/lang/Object;

    .line 4977
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83d\udcca %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 4979
    :cond_16
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_18

    .line 4980
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_17

    new-array v2, v5, [Ljava/lang/Object;

    .line 4981
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_17
    new-array v2, v5, [Ljava/lang/Object;

    .line 4983
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83c\udfae %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 4985
    :cond_18
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v6, :cond_19

    .line 4986
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    :goto_5
    move-object v10, v12

    goto :goto_8

    .line 4987
    :cond_19
    iget v4, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1b

    .line 4988
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_1a

    new-array v3, v7, [Ljava/lang/Object;

    .line 4989
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_1a
    new-array v3, v7, [Ljava/lang/Object;

    .line 4991
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "\ud83c\udfa7 %s - %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 4993
    :cond_1b
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le v2, v5, :cond_1f

    .line 4994
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v2, :cond_1d

    .line 4995
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_6

    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Media"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 4997
    :cond_1d
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_7

    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_7
    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Photos"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 5001
    :cond_1f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    const/16 v3, 0x20

    .line 5004
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_20

    .line 5007
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_20
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 5009
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 5010
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5012
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v10, v3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v3, :cond_21

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v8, v3, 0x2

    :cond_21
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 5014
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_22
    :goto_9
    move-object v0, v2

    goto/16 :goto_c

    .line 5017
    :cond_23
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 5019
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5020
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    if-eqz v2, :cond_24

    move-object v3, v2

    .line 5023
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x17

    add-int/2addr v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 5024
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v6, :cond_26

    .line 5025
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    int-to-float v2, v2

    .line 5026
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v2, v6

    float-to-int v2, v2

    :cond_25
    int-to-float v2, v2

    .line 5028
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v2, v6

    float-to-int v2, v2

    :cond_26
    if-lez v2, :cond_29

    .line 5031
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v3, v6, v2, v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 5034
    :cond_27
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v14, :cond_28

    .line 5035
    invoke-interface {v3, v8, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5037
    :cond_28
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5039
    :cond_29
    :goto_a
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5040
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3, v2, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 5041
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2b

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_2b

    .line 5042
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v6, :cond_2a

    goto :goto_b

    :cond_2a
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    :goto_b
    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_2b
    if-eqz p4, :cond_2c

    .line 5045
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2c
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 5047
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_c

    .line 5049
    :cond_2d
    invoke-static {v13}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_2e
    :goto_c
    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 3153
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 4613
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4616
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4614
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public isDialogFolder()Z
    .locals 1

    .line 5091
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolderCell()Z
    .locals 1

    .line 2721
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForumCell()Z
    .locals 1

    .line 2569
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMoving()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 3

    .line 2641
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 2642
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2644
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 740
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 742
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 743
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 748
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 749
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 709
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 711
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    const/4 v1, 0x0

    .line 712
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 713
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 715
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v2, 0x0

    .line 716
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 717
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 719
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_2

    .line 720
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 721
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 722
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 723
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 724
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 726
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_3

    .line 727
    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->remove(J)V

    .line 729
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 730
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 732
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    .line 3191
    iget-wide v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_0

    return-void

    .line 3197
    :cond_0
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_3

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v14, :cond_3

    :cond_1
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_3

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_3

    .line 3198
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_2

    .line 3199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3200
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3201
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v8, v15, v15, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3202
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    .line 3208
    :cond_3
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/16 v12, 0x18

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v12, :cond_4

    .line 3209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3210
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float v0, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3214
    :cond_4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v7, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v13

    if-nez v0, :cond_7

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_5

    goto :goto_0

    .line 3380
    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_6

    .line 3381
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3382
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3383
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    .line 3384
    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3385
    iput-boolean v15, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    :cond_6
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    goto/16 :goto_8

    .line 3215
    :cond_7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3216
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3220
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const-string v4, "chats_archivePinBackground"

    const-string v3, "chats_archiveBackground"

    if-eqz v0, :cond_8

    .line 3221
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:Ljava/lang/String;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3222
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:Ljava/lang/String;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3223
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3224
    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    move v12, v1

    move v1, v6

    move-object v6, v2

    goto/16 :goto_3

    .line 3225
    :cond_8
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_a

    .line 3226
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_9

    .line 3227
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3228
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3229
    sget v6, Lorg/telegram/messenger/R$string;->UnhideFromTop:I

    const-string v2, "UnhideFromTop"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3230
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3232
    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3233
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3234
    sget v6, Lorg/telegram/messenger/R$string;->HideOnTop:I

    const-string v2, "HideOnTop"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3235
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3238
    :cond_a
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    if-eqz v0, :cond_b

    .line 3239
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3240
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3241
    sget v6, Lorg/telegram/messenger/R$string;->PsaHide:I

    const-string v2, "PsaHide"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3242
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3243
    :cond_b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-nez v0, :cond_14

    .line 3244
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3245
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3246
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v10, :cond_d

    .line 3247
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_c

    .line 3248
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnmute:I

    const-string v2, "SwipeUnmute"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3249
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnmuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3251
    :cond_c
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMute:I

    const-string v2, "SwipeMute"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3252
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeMuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3254
    :cond_d
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v7, :cond_e

    .line 3255
    sget v6, Lorg/telegram/messenger/R$string;->SwipeDeleteChat:I

    const-string v0, "SwipeDeleteChat"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3256
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "dialogSwipeRemove"

    invoke-static {v12, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3257
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeDeleteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3258
    :cond_e
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v14, :cond_11

    .line 3259
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-gtz v2, :cond_10

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v2, :cond_f

    goto :goto_2

    .line 3263
    :cond_f
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsUnread:I

    const-string v2, "SwipeMarkAsUnread"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3264
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnreadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3260
    :cond_10
    :goto_2
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsRead:I

    const-string v2, "SwipeMarkAsRead"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3261
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeReadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3266
    :cond_11
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-nez v2, :cond_13

    .line 3267
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3268
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnpin:I

    const-string v2, "SwipeUnpin"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3269
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnpinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3271
    :cond_12
    sget v6, Lorg/telegram/messenger/R$string;->SwipePin:I

    const-string v2, "SwipePin"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3272
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipePinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3275
    :cond_13
    sget v6, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v2, "Archive"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3276
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3279
    :cond_14
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3280
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3281
    sget v6, Lorg/telegram/messenger/R$string;->Unarchive:I

    const-string v2, "Unarchive"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3282
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unarchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3286
    :goto_3
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-eqz v2, :cond_15

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_15

    .line 3287
    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3288
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    goto :goto_4

    .line 3290
    :cond_15
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3291
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    :goto_4
    move v2, v1

    .line 3294
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    if-nez v1, :cond_16

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v18, 0x2b

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v1, v1, v10

    if-lez v1, :cond_16

    .line 3295
    iput-boolean v14, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3296
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3297
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3298
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3301
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v10, v1

    .line 3302
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_18

    .line 3303
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3304
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v10, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move/from16 v21, v1

    move-object/from16 v1, p1

    move v7, v2

    move v2, v0

    move-object v0, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    move/from16 v4, v21

    move-object/from16 v29, v6

    const/4 v14, 0x2

    move-object/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3305
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_19

    .line 3306
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-eqz v1, :cond_17

    .line 3307
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Arrow.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3308
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3310
    :cond_17
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-eqz v1, :cond_19

    .line 3311
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3312
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Line 1.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3313
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Line 2.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3314
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Line 3.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3315
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3316
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_5

    :cond_18
    move v7, v2

    move-object/from16 v18, v4

    move-object/from16 v29, v6

    const/4 v14, 0x2

    .line 3320
    :cond_19
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x2b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int/2addr v0, v1

    .line 3321
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x36

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v14

    .line 3322
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v14

    add-int/2addr v2, v0

    .line 3323
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v14

    add-int/2addr v3, v1

    .line 3325
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_1b

    .line 3326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3327
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v10, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v4, v13, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3328
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    mul-int v4, v2, v2

    .line 3330
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    .line 3331
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    invoke-virtual {v5, v6}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3334
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-nez v2, :cond_1a

    .line 3335
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Arrow.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 3336
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3338
    :cond_1a
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-nez v2, :cond_1b

    .line 3339
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3340
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 1.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3341
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 2.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3342
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 3.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3343
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 v2, 0x1

    .line 3344
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    .line 3348
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    int-to-float v2, v1

    .line 3349
    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3350
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v2, v0, v13

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1c

    cmpl-float v2, v0, v12

    if-eqz v2, :cond_1c

    .line 3351
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v12

    .line 3352
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v14

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v14

    int-to-float v3, v3

    invoke-virtual {v8, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3354
    :cond_1c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v15, v15}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3355
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3356
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3358
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v10, v13, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3360
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, v29

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 3362
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    if-ne v3, v7, :cond_1d

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 3363
    :cond_1d
    iput v7, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    .line 3364
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iput v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    .line 3365
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaint:Landroid/text/TextPaint;

    const/16 v4, 0x50

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3367
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1e

    .line 3368
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaintSmall:Landroid/text/TextPaint;

    const/16 v4, 0x52

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3372
    :cond_1e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_20

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3374
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v7, 0x4

    if-le v0, v2, :cond_1f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_6

    :cond_1f
    const/4 v0, 0x0

    .line 3375
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x2b

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/16 v3, 0x26

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3376
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3377
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_20
    const/4 v7, 0x4

    .line 3379
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3388
    :goto_8
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_21

    .line 3389
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3390
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3393
    :cond_21
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    mul-float v0, v0, v1

    .line 3394
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_22

    .line 3395
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v4

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v13, v13, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3396
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3397
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3400
    :cond_22
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const-string v10, "chats_pinnedOverlay"

    if-eqz v1, :cond_24

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_23

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_24

    .line 3401
    :cond_23
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-static {v15, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3402
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3403
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->xOffset:F

    neg-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    sub-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 3404
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_25

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_26

    .line 3405
    :cond_25
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3406
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3407
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->xOffset:F

    neg-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    sub-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3410
    :cond_26
    :goto_9
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->updateAnimationValues()V

    .line 3412
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_27

    .line 3413
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3414
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3417
    :cond_27
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v19, 0x16

    const-string v6, "windowBackgroundWhite"

    const/16 v20, 0xa

    const v21, 0x3dda740e

    cmpl-float v2, v1, v12

    if-eqz v2, :cond_bd

    const/high16 v22, 0x437f0000    # 255.0f

    cmpl-float v2, v1, v13

    if-eqz v2, :cond_29

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 3420
    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 3421
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v14, :cond_28

    .line 3422
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v12, v1

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v5

    mul-float v5, v5, v22

    float-to-int v5, v5

    const/16 v25, 0x1f

    move/from16 v27, v1

    move-object/from16 v1, p1

    const/4 v14, -0x1

    move/from16 v18, v4

    const/16 v23, 0x5

    move/from16 v4, v27

    move/from16 v24, v5

    const/16 v27, 0x6

    move/from16 v5, v18

    move-object v14, v6

    move/from16 v6, v24

    move/from16 v7, v25

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    move v3, v1

    const/16 v16, 0x1

    goto :goto_a

    :cond_28
    move-object v14, v6

    const/16 v23, 0x5

    const/16 v27, 0x6

    .line 3424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3425
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v12, v1

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v3, v13, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v3, v2

    .line 3427
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x4a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float v1, v1, v2

    invoke-virtual {v8, v1, v13}, Landroid/graphics/Canvas;->translate(FF)V

    move v7, v3

    goto :goto_b

    :cond_29
    move-object v14, v6

    const/16 v16, 0x1

    const/16 v23, 0x5

    const/16 v27, 0x6

    const/4 v7, -0x1

    .line 3430
    :goto_b
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_2a

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_30

    .line 3431
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3433
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3434
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3435
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3436
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3438
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_2b

    .line 3439
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3442
    :cond_2b
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_2d

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_2c

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2d

    .line 3443
    :cond_2c
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-static {v15, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3444
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3445
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 3446
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_2f

    .line 3447
    :cond_2e
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3448
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3449
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3451
    :cond_2f
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3454
    :cond_30
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_31

    .line 3455
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v1, v0, v12

    if-gez v1, :cond_33

    add-float v0, v0, v21

    .line 3456
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_32

    .line 3458
    iput v12, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    goto :goto_d

    .line 3462
    :cond_31
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_33

    sub-float v0, v0, v21

    .line 3463
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_32

    .line 3465
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    :cond_32
    :goto_d
    const/16 v24, 0x1

    goto :goto_e

    :cond_33
    const/16 v24, 0x0

    .line 3472
    :goto_e
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_34

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_35

    .line 3473
    :cond_34
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_35

    .line 3474
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3475
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3478
    :cond_35
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_42

    .line 3479
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_38

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_38

    .line 3480
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_36

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_36

    .line 3481
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    .line 3482
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    const/16 v35, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3483
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_f

    .line 3484
    :cond_36
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_37

    .line 3485
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    .line 3486
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v17, 0x18

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v35, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    new-array v5, v3, [F

    fill-array-data v5, :array_3

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3487
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_10

    :cond_37
    :goto_f
    const/16 v17, 0x18

    :goto_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3489
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v0, 0x1f

    move-object/from16 v1, p1

    move/from16 v39, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3490
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v0, v15, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_11

    :cond_38
    move/from16 v39, v7

    const/16 v17, 0x18

    .line 3492
    :goto_11
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_39

    .line 3493
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v3, "chats_nameArchived"

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x2

    goto :goto_13

    .line 3494
    :cond_39
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_3c

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v0, :cond_3a

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    goto :goto_12

    :cond_3a
    const/4 v1, 0x2

    .line 3497
    :cond_3b
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "chats_name"

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_13

    :cond_3c
    const/4 v1, 0x2

    .line 3495
    :goto_12
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "chats_secretName"

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 3499
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3501
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_3d

    .line 3502
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    add-float/2addr v0, v2

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_16

    .line 3504
    :cond_3d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    add-float/2addr v0, v2

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_3f

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_3e

    goto :goto_14

    :cond_3e
    const/16 v2, 0xd

    goto :goto_15

    :cond_3f
    :goto_14
    const/16 v2, 0xa

    :goto_15
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3505
    :goto_16
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3506
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v3, -0x42666666    # -0.075f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v25, -0x1

    const/16 v26, 0x3

    move-object/from16 v10, p1

    const/16 v28, 0x8

    move-object v11, v0

    const/16 v29, 0x18

    move-object v12, v2

    const/4 v2, 0x0

    move v13, v3

    move-object v1, v14

    const/4 v3, 0x1

    move-object v14, v4

    const/4 v4, 0x0

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3508
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_41

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_41

    .line 3509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3510
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_40

    .line 3511
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 3512
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    move-object v15, v1

    move-object/from16 v1, p1

    const/4 v14, 0x0

    move v2, v0

    const/4 v13, 0x1

    move v3, v5

    const/4 v12, 0x0

    move v4, v6

    move v5, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_17

    :cond_40
    move-object v15, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 3514
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v0, v1

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v8, v0, v14}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3515
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3517
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_41
    move-object v15, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_18

    :cond_42
    move/from16 v39, v7

    move-object v15, v14

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v26, 0x3

    const/16 v28, 0x8

    const/16 v29, 0x18

    .line 3523
    :goto_18
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_43

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_44

    .line 3524
    :cond_43
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_44

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_44

    .line 3525
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3526
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3527
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3528
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3531
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3532
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3534
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v6, 0x2

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    .line 3535
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3536
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v5, v10

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 3532
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3538
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19

    :cond_45
    const/4 v6, 0x2

    .line 3541
    :goto_19
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_49

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_49

    .line 3542
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_46

    .line 3543
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_nameMessageArchived_threeLines"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1a

    .line 3544
    :cond_46
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v0, :cond_47

    .line 3545
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_draft"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1a

    .line 3547
    :cond_47
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_nameMessage_threeLines"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3549
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3550
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3552
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_48

    .line 3554
    :try_start_0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3555
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v1, -0x42666666    # -0.075f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    const/4 v5, 0x0

    move-object v12, v0

    const/4 v4, 0x1

    move v13, v1

    const/4 v1, 0x0

    move-object v14, v2

    move-object v2, v15

    move v15, v3

    :try_start_1
    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    goto :goto_1b

    :catch_1
    move-exception v0

    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3557
    :goto_1b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_48
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3559
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1d

    :cond_49
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3562
    :goto_1d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5b

    .line 3563
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_4b

    .line 3564
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4a

    .line 3565
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v11, "chats_nameMessageArchived"

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1e

    .line 3567
    :cond_4a
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v11, "chats_messageArchived"

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1e

    .line 3570
    :cond_4b
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v11, "chats_message"

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1e
    const/16 v0, 0xe

    .line 3573
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    .line 3574
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v10, :cond_4c

    .line 3575
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v11, v11, v3

    sub-float/2addr v10, v11

    goto :goto_1f

    .line 3577
    :cond_4c
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v11, v11, v3

    add-float/2addr v10, v11

    .line 3579
    :goto_1f
    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_50

    .line 3580
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3581
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3582
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v14

    .line 3583
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v10, v14

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v11, v15, v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3585
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_4e

    .line 3586
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3588
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3589
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3590
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3591
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    move v7, v14

    move-object v14, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v25

    :try_start_3
    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3592
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    .line 3594
    :goto_20
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_4f

    .line 3595
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3596
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3597
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :catch_2
    move-exception v0

    goto :goto_21

    :catch_3
    move-exception v0

    move v7, v14

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3600
    :goto_21
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_4d
    move v7, v14

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3603
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3604
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    goto :goto_22

    :cond_4e
    move v7, v14

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3606
    :cond_4f
    :goto_22
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3607
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_23

    :cond_50
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3610
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3611
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v7, :cond_51

    .line 3612
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v6, v0

    mul-float v0, v0, v3

    add-float/2addr v7, v0

    goto :goto_24

    .line 3614
    :cond_51
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v6, v0

    mul-float v0, v0, v3

    sub-float/2addr v7, v0

    .line 3616
    :goto_24
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3618
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_52

    .line 3619
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_52

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v7, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_52

    .line 3620
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 3621
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    int-to-float v10, v0

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3622
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3623
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3625
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3627
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5a

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-gez v0, :cond_53

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v10, v10, v1

    if-lez v10, :cond_5a

    iget v7, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    if-ltz v7, :cond_5a

    :cond_53
    if-ltz v0, :cond_54

    goto :goto_25

    .line 3628
    :cond_54
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 3629
    :goto_25
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 3631
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const-string v10, "chats_actionMessage"

    .line 3632
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    .line 3633
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 3634
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v11, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v11, :cond_55

    .line 3635
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v6, v10

    mul-float v3, v3, v10

    add-float/2addr v11, v3

    goto :goto_26

    .line 3637
    :cond_55
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v6, v10

    mul-float v3, v3, v10

    sub-float/2addr v11, v3

    .line 3640
    :goto_26
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_56

    .line 3641
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v9, v3}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x4

    goto :goto_29

    :cond_56
    const/4 v3, 0x4

    if-eq v0, v4, :cond_58

    if-ne v0, v3, :cond_57

    goto :goto_27

    .line 3646
    :cond_57
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v0, v0

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    add-float/2addr v11, v10

    invoke-virtual {v8, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_29

    .line 3644
    :cond_58
    :goto_27
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v10, v10

    if-ne v0, v4, :cond_59

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_28

    :cond_59
    const/4 v15, 0x0

    :goto_28
    int-to-float v0, v15

    add-float/2addr v11, v0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3648
    :goto_29
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3649
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3650
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2a

    :cond_5a
    const/4 v3, 0x4

    goto :goto_2a

    :cond_5b
    const/4 v3, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3655
    :goto_2a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_64

    .line 3656
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3657
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5c

    .line 3658
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 3660
    :cond_5c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_5d

    .line 3661
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 3662
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 3667
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 3674
    :cond_5d
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_61

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_61

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_61

    .line 3675
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v10

    if-eqz v10, :cond_5e

    const/16 v10, 0x24

    goto :goto_2b

    :cond_5e
    const/16 v10, 0x1a

    :goto_2b
    invoke-static {v7, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setColor(I)V

    .line 3676
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    if-nez v0, :cond_60

    .line 3677
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 3678
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_5f

    if-lez v0, :cond_5f

    .line 3679
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v7, v11

    int-to-float v7, v7

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v5}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v10

    add-float/2addr v7, v10

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v11, v11

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iget v14, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3680
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v7, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3681
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5f

    .line 3682
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3686
    :cond_5f
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v7, v10

    int-to-float v7, v7

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v11, v11

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v12

    add-float/2addr v11, v12

    const/16 v12, 0xc

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    iget-object v13, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3687
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v7, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3688
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    goto :goto_2c

    :cond_60
    const/16 v25, 0x2

    .line 3690
    :goto_2c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 3692
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x7d

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3693
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->right:F

    const/16 v11, 0x12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v7, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    add-float/2addr v11, v7

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3694
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2d

    :cond_61
    const/16 v25, 0x2

    .line 3698
    :goto_2d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v7, v7

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3699
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 3701
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3702
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3703
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3704
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    iget-object v14, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3705
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    .line 3707
    :goto_2e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_63

    .line 3708
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3709
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3710
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    :catch_4
    move-exception v0

    .line 3713
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 3716
    :cond_62
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3717
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3719
    :cond_63
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_30

    :cond_64
    const/16 v25, 0x2

    .line 3723
    :goto_30
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_65

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_74

    .line 3724
    :cond_65
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_74

    .line 3725
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v10, :cond_66

    const/4 v15, 0x2

    goto :goto_31

    :cond_66
    const/4 v15, 0x0

    :goto_31
    add-int/2addr v0, v15

    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_67

    const/4 v15, 0x4

    goto :goto_32

    :cond_67
    const/4 v15, 0x0

    :goto_32
    add-int/2addr v0, v15

    .line 3726
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    if-ltz v10, :cond_68

    if-eq v10, v0, :cond_68

    iget-boolean v11, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-nez v11, :cond_68

    .line 3727
    invoke-direct {v9, v10, v0}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    .line 3729
    :cond_68
    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-eqz v10, :cond_69

    .line 3730
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    :cond_69
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_6a

    const/4 v11, 0x1

    goto :goto_33

    :cond_6a
    const/4 v11, 0x0

    :goto_33
    and-int/lit8 v12, v0, 0x2

    if-eqz v12, :cond_6b

    const/4 v12, 0x1

    goto :goto_34

    :cond_6b
    const/4 v12, 0x0

    :goto_34
    and-int/2addr v0, v3

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    goto :goto_35

    :cond_6c
    const/4 v0, 0x0

    :goto_35
    if-eqz v10, :cond_71

    .line 3738
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_6d

    const/4 v13, 0x1

    goto :goto_36

    :cond_6d
    const/4 v13, 0x0

    :goto_36
    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_6e

    const/4 v14, 0x1

    goto :goto_37

    :cond_6e
    const/4 v14, 0x0

    :goto_37
    and-int/2addr v10, v3

    if-eqz v10, :cond_6f

    const/4 v10, 0x1

    goto :goto_38

    :cond_6f
    const/4 v10, 0x0

    :goto_38
    if-nez v11, :cond_70

    if-nez v13, :cond_70

    if-eqz v10, :cond_70

    if-nez v14, :cond_70

    if-eqz v12, :cond_70

    if-eqz v0, :cond_70

    const/4 v10, 0x1

    .line 3742
    iget v13, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, p1

    const/16 v30, 0x4

    move v3, v11

    const/4 v11, 0x1

    move v4, v12

    const/4 v12, 0x0

    move v5, v0

    const/high16 v15, 0x3f800000    # 1.0f

    move v6, v10

    const/4 v10, -0x1

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    move-object/from16 v40, v14

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_39

    :cond_70
    move-object v7, v2

    const/4 v6, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v30, 0x4

    const/16 v17, 0x0

    .line 3744
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    sub-float v18, v15, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v13

    const/4 v13, 0x1

    move v4, v14

    const/4 v14, 0x0

    move v5, v10

    const/4 v10, -0x1

    move/from16 v6, v17

    move-object/from16 v40, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    const/4 v6, 0x0

    .line 3745
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move v3, v11

    move v4, v12

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    goto :goto_39

    :cond_71
    move-object/from16 v40, v2

    const/4 v10, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v30, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move v5, v0

    .line 3748
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    .line 3750
    :goto_39
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v1, :cond_72

    const/4 v1, 0x2

    goto :goto_3a

    :cond_72
    const/4 v1, 0x0

    :goto_3a
    add-int/2addr v0, v1

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v1, :cond_73

    const/4 v1, 0x4

    goto :goto_3b

    :cond_73
    const/4 v1, 0x0

    :goto_3b
    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    goto :goto_3c

    :cond_74
    move-object/from16 v40, v2

    const/4 v10, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v30, 0x4

    .line 3753
    :goto_3c
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-nez v0, :cond_76

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_75

    goto :goto_3d

    :cond_75
    const/4 v0, 0x0

    goto :goto_3e

    :cond_76
    :goto_3d
    const/4 v0, 0x1

    .line 3755
    :goto_3e
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v1, v10, :cond_77

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v1, :cond_9f

    .line 3756
    :cond_77
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_89

    if-nez v0, :cond_78

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_89

    :cond_78
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v1, :cond_89

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v1, :cond_89

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v1, :cond_89

    if-eqz v0, :cond_7a

    .line 3757
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_7a

    add-float v1, v1, v21

    .line 3758
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v1, v15

    if-lez v0, :cond_79

    .line 3760
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_3f

    .line 3762
    :cond_79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3f

    :cond_7a
    if-nez v0, :cond_7c

    .line 3764
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7c

    sub-float v0, v0, v21

    .line 3765
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7b

    .line 3767
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_3f

    .line 3769
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3772
    :cond_7c
    :goto_3f
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_7e

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_7d

    goto :goto_40

    :cond_7d
    const/4 v1, 0x1

    goto :goto_41

    :cond_7e
    :goto_40
    const/4 v1, 0x0

    :goto_41
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3773
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_7f

    const/high16 v1, 0x41580000    # 13.5f

    goto :goto_42

    :cond_7f
    const/high16 v1, 0x418c0000    # 17.5f

    :goto_42
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 3775
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_82

    .line 3776
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_81

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_80

    goto :goto_43

    :cond_80
    const/4 v4, 0x1

    goto :goto_44

    :cond_81
    :goto_43
    const/4 v4, 0x0

    :goto_44
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v9, v4}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_45

    .line 3778
    :cond_82
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3780
    :goto_45
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_85

    .line 3781
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_84

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_83

    goto :goto_46

    :cond_83
    const/4 v2, 0x1

    goto :goto_47

    :cond_84
    :goto_46
    const/4 v2, 0x0

    :goto_47
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_48

    .line 3783
    :cond_85
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3784
    :goto_48
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_87

    .line 3785
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3786
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3787
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_86

    .line 3788
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3789
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3790
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_49

    .line 3792
    :cond_86
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3793
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3794
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3796
    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5c

    .line 3798
    :cond_87
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_88

    .line 3799
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3801
    :cond_88
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3805
    :cond_89
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_90

    .line 3807
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_8a

    .line 3808
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4c

    .line 3810
    :cond_8a
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_8c

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_8b

    goto :goto_4a

    :cond_8b
    const/high16 v2, 0x41840000    # 16.5f

    goto :goto_4b

    :cond_8c
    :goto_4a
    const/high16 v2, 0x41580000    # 13.5f

    :goto_4b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3812
    :goto_4c
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_8d

    .line 3813
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4f

    .line 3815
    :cond_8d
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_8f

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_8e

    goto :goto_4d

    :cond_8e
    const/high16 v2, 0x41840000    # 16.5f

    goto :goto_4e

    :cond_8f
    :goto_4d
    const/high16 v2, 0x41580000    # 13.5f

    :goto_4e
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3816
    :goto_4f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3817
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3818
    :cond_90
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_98

    .line 3819
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_95

    .line 3820
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v2, 0x2

    .line 3821
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 3822
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_92

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_91

    goto :goto_50

    :cond_91
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_51

    :cond_92
    :goto_50
    const/high16 v2, 0x41480000    # 12.5f

    :goto_51
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/16 v4, 0x14

    .line 3823
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 3824
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_94

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_93

    goto :goto_52

    :cond_93
    const/high16 v4, 0x41780000    # 15.5f

    goto :goto_53

    :cond_94
    :goto_52
    const/high16 v4, 0x41480000    # 12.5f

    :goto_53
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3820
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3826
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_verifiedBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 3827
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3829
    :cond_95
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    .line 3830
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_97

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_96

    goto :goto_54

    :cond_96
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_55

    :cond_97
    :goto_54
    const/high16 v2, 0x41480000    # 12.5f

    :goto_55
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3831
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5c

    .line 3833
    :cond_98
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_9f

    .line 3835
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v1, :cond_9a

    if-ne v0, v13, :cond_99

    .line 3836
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_56

    :cond_99
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    .line 3837
    :goto_56
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_5a

    :cond_9a
    if-ne v0, v13, :cond_9b

    .line 3839
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_57

    :cond_9b
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_57
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_9d

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_9c

    goto :goto_58

    :cond_9c
    const/16 v2, 0xf

    goto :goto_59

    :cond_9d
    :goto_58
    const/16 v2, 0xc

    :goto_59
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3840
    :goto_5a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-ne v0, v13, :cond_9e

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5b

    :cond_9e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_5b
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScamDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3844
    :cond_9f
    :goto_5c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v10, :cond_a0

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_a2

    .line 3845
    :cond_a0
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_a1

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a2

    .line 3846
    :cond_a1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3847
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3848
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3851
    :cond_a2
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v10, :cond_a4

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_a3

    goto :goto_5e

    :cond_a3
    :goto_5d
    move-object v10, v8

    goto/16 :goto_64

    .line 3852
    :cond_a4
    :goto_5e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/16 v11, 0x17

    const/high16 v12, 0x41380000    # 11.5f

    if-eqz v0, :cond_a5

    .line 3853
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3854
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    int-to-float v2, v1

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3855
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v1, v12

    mul-float v1, v1, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3856
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3857
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5d

    .line 3858
    :cond_a5
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-nez v0, :cond_a6

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v0, :cond_a7

    :cond_a6
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v0, :cond_a9

    :cond_a7
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_a9

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_a9

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_a8

    goto :goto_5f

    .line 3907
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 3908
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3909
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3910
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5d

    .line 3860
    :cond_a9
    :goto_5f
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_aa

    .line 3861
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    goto :goto_60

    .line 3863
    :cond_aa
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_ac

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_ac

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_ac

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_ab

    const/4 v0, 0x1

    goto :goto_60

    :cond_ab
    const/4 v0, 0x0

    goto :goto_60

    :cond_ac
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3865
    :goto_60
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move-object v10, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 3866
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v1, :cond_af

    .line 3867
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v2

    mul-float v5, v5, v22

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3869
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3870
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v3, v1

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v4, v4

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    add-int/2addr v1, v5

    const/16 v5, 0xb

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v0, :cond_ad

    .line 3871
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eqz v0, :cond_ad

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_61

    :cond_ad
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 3872
    :goto_61
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float v2, v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3873
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_ae

    .line 3874
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3876
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3877
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3878
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3879
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_62

    .line 3881
    :cond_ae
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3883
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const v3, 0x404ccccd    # 3.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 3884
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3888
    :cond_af
    :goto_62
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_b0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_b3

    .line 3890
    :cond_b0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3892
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3893
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v0

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3894
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 3896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3897
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_b2

    .line 3898
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v2, :cond_b1

    goto :goto_63

    :cond_b1
    sub-float v1, v15, v1

    .line 3899
    :goto_63
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v10, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3901
    :cond_b2
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float v2, v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3902
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3903
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const v3, 0x40733333    # 3.8f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 3904
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3905
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3914
    :cond_b3
    :goto_64
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_bc

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isCloudContentHidden()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 3915
    :cond_b4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_bc

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v1, v0, v15

    if-eqz v1, :cond_bc

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b6

    sub-float v5, v15, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3919
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v5, v22

    float-to-int v6, v5

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3921
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v0, :cond_b5

    const/16 v0, 0xe

    .line 3922
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_65

    :cond_b5
    const/16 v0, 0xe

    .line 3924
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    :goto_65
    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 3926
    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b6
    const/4 v0, 0x0

    .line 3928
    :goto_66
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v0, v1, :cond_bb

    .line 3929
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_b7

    goto/16 :goto_67

    .line 3932
    :cond_b7
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_b8

    .line 3933
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3fab851f    # 1.34f

    .line 3934
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eae147b    # 0.34f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x18000000

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3935
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 3937
    :cond_b8
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 3938
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 3939
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    .line 3940
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    .line 3941
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    .line 3937
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3943
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 3945
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v14

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 3946
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    aget v3, v3, v13

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    .line 3943
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3949
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3950
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_b9

    .line 3951
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 3952
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    aget v3, v3, v14

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v4

    aget v4, v4, v13

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 3954
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3955
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3958
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea66666    # 0.325f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3959
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 3960
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 3961
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3963
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3965
    :cond_b9
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_ba

    .line 3966
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3967
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 3968
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3969
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_ba
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_66

    .line 3973
    :cond_bb
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_bc

    .line 3974
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_bc
    move/from16 v3, v39

    const/4 v1, -0x1

    if-eq v3, v1, :cond_be

    .line 3979
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_68

    :cond_bd
    move-object/from16 v40, v6

    move-object v10, v8

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v23, 0x5

    const/16 v26, 0x3

    const/16 v27, 0x6

    const/16 v28, 0x8

    const/16 v29, 0x18

    const/16 v30, 0x4

    const/16 v24, 0x0

    .line 3983
    :cond_be
    :goto_68
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_bf

    .line 3984
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3985
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v2, 0x432a0000    # 170.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v15

    .line 3986
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v10, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3989
    :cond_bf
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    if-eqz v0, :cond_c2

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_c0

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_c1

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_c1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v13, :cond_c1

    :cond_c0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 3990
    :cond_c1
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3993
    :cond_c2
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_c3

    .line 3994
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3997
    :cond_c3
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_102

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_102

    .line 3998
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-lez v0, :cond_c4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_c4

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_c4

    const/4 v0, 0x1

    goto :goto_69

    :cond_c4
    const/4 v0, 0x0

    :goto_69
    iput-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    .line 3999
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_cf

    if-nez v0, :cond_c5

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cf

    .line 4000
    :cond_c5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TimerDrawable;->getTime()I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-eq v0, v1, :cond_c7

    if-lez v1, :cond_c7

    .line 4001
    :cond_c6
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-static {v0}, Lorg/telegram/ui/Components/TimerDrawable;->getTtlIconForDialogs(I)Lorg/telegram/ui/Components/TimerDrawable;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 4003
    :cond_c7
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c8

    .line 4004
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    .line 4005
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x32000000

    .line 4006
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4008
    :cond_c8
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4010
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c9

    .line 4011
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_6a

    .line 4013
    :cond_c9
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_6a
    float-to-int v1, v1

    .line 4015
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 4016
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 4015
    invoke-virtual {v2, v14, v14, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4019
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    .line 4020
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->updateThumbShaderMatrix()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 4021
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v2, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_cd

    .line 4022
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6b

    .line 4025
    :cond_ca
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4026
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_cb

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_cb

    .line 4027
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6b

    .line 4028
    :cond_cb
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v2, :cond_cc

    .line 4029
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 4030
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/GradientTools;->getAverageColor()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6b

    .line 4032
    :cond_cc
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4035
    :cond_cd
    :goto_6b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4036
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v15, v3

    mul-float v2, v2, v5

    .line 4037
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v3, :cond_ce

    .line 4038
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v3

    sub-float v5, v15, v3

    mul-float v2, v2, v5

    :cond_ce
    int-to-float v1, v1

    int-to-float v0, v0

    .line 4040
    invoke-virtual {v10, v2, v2, v1, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 4041
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 4042
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4043
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41300000    # 11.0f

    .line 4044
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4045
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/TimerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4046
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4047
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4049
    :cond_cf
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_de

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_de

    .line 4050
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_d1

    .line 4051
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d0

    goto :goto_6c

    :cond_d0
    move-object/from16 v11, v40

    goto/16 :goto_77

    .line 4052
    :cond_d1
    :goto_6c
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_d3

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_d2

    goto :goto_6d

    :cond_d2
    const/16 v11, 0x8

    goto :goto_6e

    :cond_d3
    :goto_6d
    const/4 v11, 0x6

    :goto_6e
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 4054
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d6

    .line 4055
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_d5

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_d4

    goto :goto_6f

    :cond_d4
    const/4 v5, 0x6

    goto :goto_70

    :cond_d5
    :goto_6f
    const/16 v5, 0xa

    :goto_70
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_73

    .line 4057
    :cond_d6
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v2

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_d8

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_d7

    goto :goto_71

    :cond_d7
    const/4 v5, 0x6

    goto :goto_72

    :cond_d8
    :goto_71
    const/16 v5, 0xa

    :goto_72
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :goto_73
    float-to-int v2, v2

    .line 4060
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v11, v40

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4062
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_d9

    .line 4063
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v5, v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_74

    :cond_d9
    int-to-float v3, v2

    int-to-float v4, v1

    const/4 v5, 0x7

    .line 4065
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v5, v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4066
    :goto_74
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "chats_onlineCircle"

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4068
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_da

    .line 4069
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_75

    :cond_da
    int-to-float v2, v2

    int-to-float v1, v1

    .line 4071
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_75
    if-eqz v0, :cond_db

    .line 4073
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_dd

    add-float v0, v0, v21

    .line 4074
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_dc

    .line 4076
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    goto :goto_76

    .line 4081
    :cond_db
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_dd

    sub-float v0, v0, v21

    .line 4082
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_dc

    .line 4084
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    :cond_dc
    :goto_76
    const/16 v24, 0x1

    :cond_dd
    :goto_77
    move/from16 v14, v24

    const/4 v7, 0x5

    goto/16 :goto_88

    :cond_de
    move-object/from16 v11, v40

    .line 4090
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_fd

    .line 4091
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_df

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v0, :cond_df

    const/4 v0, 0x1

    goto :goto_78

    :cond_df
    const/4 v0, 0x0

    :goto_78
    iput-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_e0

    .line 4092
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_fd

    :cond_e0
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpg-float v0, v0, v15

    if-gez v0, :cond_fd

    .line 4093
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v0

    sub-float v5, v15, v0

    goto :goto_79

    :cond_e1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 4094
    :goto_79
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_e3

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_e2

    goto :goto_7a

    :cond_e2
    const/16 v1, 0x8

    goto :goto_7b

    :cond_e3
    :goto_7a
    const/4 v1, 0x6

    :goto_7b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4096
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e6

    .line 4097
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_e5

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_e4

    goto :goto_7c

    :cond_e4
    const/4 v2, 0x6

    goto :goto_7d

    :cond_e5
    :goto_7c
    const/16 v2, 0xa

    :goto_7d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_80

    .line 4099
    :cond_e6
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_e8

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_e7

    goto :goto_7e

    :cond_e7
    const/4 v2, 0x6

    goto :goto_7f

    :cond_e8
    :goto_7e
    const/16 v2, 0xa

    :goto_7f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_80
    float-to-int v1, v1

    .line 4102
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_ea

    .line 4103
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4104
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e9

    .line 4105
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_81

    .line 4107
    :cond_e9
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_81
    float-to-int v1, v1

    .line 4112
    :cond_ea
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_eb

    .line 4113
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4114
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v2, v15, v2

    int-to-float v3, v1

    int-to-float v4, v0

    .line 4115
    invoke-virtual {v10, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4117
    :cond_eb
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v1

    int-to-float v0, v0

    const/16 v3, 0xb

    .line 4118
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v3, v3, v4

    mul-float v3, v3, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4119
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v6, "chats_onlineCircle"

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x9

    .line 4120
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v3, v3, v4

    mul-float v3, v3, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4121
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x20

    .line 4125
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_ec

    const v3, 0x3f266666    # 0.65f

    .line 4126
    iput v3, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4128
    :cond_ec
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    if-nez v3, :cond_ed

    .line 4129
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    .line 4130
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v6, v7

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_82
    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    :goto_83
    move v6, v4

    const/4 v4, 0x3

    :goto_84
    const/4 v7, 0x5

    goto/16 :goto_85

    :cond_ed
    if-ne v3, v13, :cond_ee

    .line 4132
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    sub-float/2addr v3, v4

    .line 4133
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    goto :goto_83

    :cond_ee
    const/4 v4, 0x2

    if-ne v3, v4, :cond_ef

    .line 4135
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    .line 4136
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_82

    :cond_ef
    const/4 v4, 0x3

    if-ne v3, v4, :cond_f0

    .line 4138
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v7, v7, v8

    sub-float/2addr v3, v7

    .line 4139
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v6, v8

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v8

    add-float/2addr v6, v7

    goto :goto_84

    :cond_f0
    const/4 v6, 0x4

    if-ne v3, v6, :cond_f1

    .line 4141
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    .line 4142
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v7, v8

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    goto/16 :goto_84

    :cond_f1
    const/4 v7, 0x5

    if-ne v3, v7, :cond_f2

    .line 4144
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v8, v8, v12

    sub-float/2addr v3, v8

    .line 4145
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v12

    add-float/2addr v6, v8

    goto :goto_85

    :cond_f2
    const/4 v8, 0x6

    if-ne v3, v8, :cond_f3

    .line 4147
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v8, v8, v12

    add-float/2addr v3, v8

    .line 4148
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v12

    sub-float v6, v8, v6

    goto :goto_85

    .line 4150
    :cond_f3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v8

    sub-float/2addr v3, v6

    .line 4151
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v8, v12

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v8, v8, v12

    add-float/2addr v6, v8

    .line 4154
    :goto_85
    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v8, v8, v15

    if-ltz v8, :cond_f4

    cmpg-float v8, v5, v15

    if-gez v8, :cond_f5

    .line 4155
    :cond_f4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4156
    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v12, v8, v5

    mul-float v8, v8, v5

    invoke-virtual {v10, v12, v8, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4158
    :cond_f5
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    sub-float v12, v0, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v14, v1, v17

    int-to-float v14, v14

    add-float/2addr v3, v0

    invoke-virtual {v2, v8, v12, v14, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4159
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4161
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    sub-float v8, v0, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int v12, v1, v12

    int-to-float v12, v12

    add-float/2addr v0, v6

    invoke-virtual {v2, v3, v8, v12, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4162
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v6, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4164
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v2, v3, v8, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4165
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4166
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v0, v0, v15

    if-ltz v0, :cond_f6

    cmpg-float v0, v5, v15

    if-gez v0, :cond_f7

    .line 4167
    :cond_f6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f7
    const/16 v0, 0x20

    .line 4170
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 4171
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const v1, 0x3d23d70a    # 0.04f

    add-float/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    cmpl-float v0, v0, v15

    if-ltz v0, :cond_f8

    const/4 v1, 0x0

    .line 4173
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4174
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    add-int/2addr v0, v13

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_f8

    const/4 v1, 0x0

    .line 4176
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    :cond_f8
    const/4 v14, 0x1

    goto :goto_86

    :cond_f9
    move/from16 v14, v24

    .line 4182
    :goto_86
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v0, :cond_fb

    .line 4183
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_fa

    add-float v0, v0, v21

    .line 4184
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_fa

    .line 4186
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    :cond_fa
    const/4 v1, 0x0

    goto :goto_87

    .line 4190
    :cond_fb
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_fc

    sub-float v0, v0, v21

    .line 4191
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_fc

    .line 4193
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    .line 4199
    :cond_fc
    :goto_87
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_fe

    .line 4200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_88

    :cond_fd
    const/4 v7, 0x5

    move/from16 v14, v24

    .line 4205
    :cond_fe
    :goto_88
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v0, :cond_100

    .line 4206
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_ff

    add-float v0, v0, v21

    .line 4207
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    goto :goto_89

    :cond_ff
    const/4 v1, 0x0

    goto :goto_8a

    .line 4211
    :cond_100
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_101

    sub-float v0, v0, v21

    .line 4212
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    :goto_89
    const/4 v14, 0x1

    .line 4216
    :cond_101
    :goto_8a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    invoke-static {v0, v15, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    goto :goto_8b

    :cond_102
    move-object/from16 v11, v40

    const/4 v1, 0x0

    const/4 v7, 0x5

    move/from16 v14, v24

    .line 4219
    :goto_8b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_107

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_107

    .line 4221
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_103

    .line 4222
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    :goto_8c
    move v3, v0

    goto :goto_8d

    .line 4224
    :cond_103
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_105

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_105

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_105

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_104

    const/4 v0, 0x1

    goto :goto_8c

    :cond_104
    const/4 v0, 0x0

    goto :goto_8c

    :cond_105
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    goto :goto_8c

    .line 4226
    :goto_8d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4227
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 4228
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    add-float/2addr v2, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 4230
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v4, :cond_106

    .line 4231
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 4232
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4233
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_106
    move v5, v0

    move v6, v1

    move v4, v2

    .line 4236
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 4239
    :cond_107
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_108

    .line 4240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4243
    :cond_108
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_109

    .line 4244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4246
    :cond_109
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_10a

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_10b

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_10b

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v13, :cond_10b

    :cond_10a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10b

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_10b

    .line 4247
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4248
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4249
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4250
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4254
    :cond_10b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_111

    .line 4256
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v0, :cond_10e

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_10c

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_10c

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_10e

    :cond_10c
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_10d

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-nez v0, :cond_10d

    goto :goto_8e

    .line 4259
    :cond_10d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_8f

    :cond_10e
    :goto_8e
    const/4 v0, 0x0

    .line 4262
    :goto_8f
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_111

    .line 4263
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 4264
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_10f

    .line 4265
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v7

    sub-float v5, v15, v1

    mul-float v3, v3, v5

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4267
    :cond_10f
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_110

    const/4 v2, 0x0

    .line 4268
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v13

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v13

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_90

    :cond_110
    int-to-float v2, v0

    .line 4270
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v13

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v13

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4272
    :goto_90
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_112

    .line 4273
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_91

    :cond_111
    const/4 v1, 0x0

    .line 4278
    :cond_112
    :goto_91
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_114

    .line 4279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_113

    .line 4280
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_92

    .line 4282
    :cond_113
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4283
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float v5, v0, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4284
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v1, v1

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4288
    :cond_114
    :goto_92
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_116

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_115

    goto :goto_93

    :cond_115
    const/4 v1, 0x0

    goto :goto_95

    :cond_116
    :goto_93
    if-eqz v0, :cond_118

    .line 4290
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_115

    const v1, 0x3dc0c0c1

    add-float/2addr v0, v1

    .line 4291
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_117

    .line 4293
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_117
    const/4 v1, 0x0

    goto :goto_94

    .line 4298
    :cond_118
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_11a

    const v2, 0x3dc0c0c1

    sub-float/2addr v0, v2

    .line 4299
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_119

    .line 4301
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_119
    :goto_94
    const/4 v14, 0x1

    .line 4308
    :cond_11a
    :goto_95
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_11c

    .line 4309
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_11f

    const v2, 0x3d8e7835

    sub-float/2addr v0, v2

    .line 4310
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11b

    .line 4312
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4314
    :cond_11b
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11e

    .line 4315
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    goto :goto_96

    .line 4320
    :cond_11c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_11f

    const v1, 0x3d8e7835

    add-float/2addr v0, v1

    .line 4321
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_11d

    .line 4323
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4325
    :cond_11d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11e

    .line 4326
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    :cond_11e
    :goto_96
    const/4 v14, 0x1

    .line 4332
    :cond_11f
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_121

    .line 4333
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v1, 0x432a0000    # 170.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_120

    const/high16 v0, 0x432a0000    # 170.0f

    .line 4335
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/4 v1, 0x0

    .line 4336
    iput-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    :cond_120
    const/4 v14, 0x1

    .line 4340
    :cond_121
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eqz v0, :cond_123

    .line 4341
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_122

    const v1, 0x3dc0c0c1

    add-float/2addr v0, v1

    .line 4342
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_122

    .line 4344
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/4 v14, 0x1

    .line 4348
    :cond_122
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_126

    const v1, 0x3d5a740e

    add-float/2addr v0, v1

    .line 4349
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_125

    .line 4351
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_97

    .line 4356
    :cond_123
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v15

    const/4 v1, 0x0

    if-nez v0, :cond_124

    .line 4357
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/4 v14, 0x1

    .line 4360
    :cond_124
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_126

    const v2, 0x3d5a740e

    sub-float/2addr v0, v2

    .line 4361
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_125

    .line 4363
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    :cond_125
    :goto_97
    const/4 v14, 0x1

    :cond_126
    if-eqz v14, :cond_127

    .line 4370
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_127
    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 4636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4637
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4638
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 4640
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 4641
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4642
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 4643
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    sget v2, Lorg/telegram/messenger/R$string;->AccActionChatPreview:I

    const-string v3, "AccActionChatPreview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4646
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CheckBox"

    .line 4647
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4648
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4649
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 815
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez p1, :cond_0

    return-void

    .line 818
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_9

    .line 819
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0x1b

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p3, 0x1d

    :goto_1
    sub-int/2addr p1, p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 821
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz p3, :cond_3

    const/16 p1, 0x8

    .line 822
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 823
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 825
    :cond_3
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_4

    sub-int/2addr p4, p2

    sub-int p1, p4, p1

    .line 826
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p3, :cond_6

    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p3, 0x6

    :goto_3
    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 829
    :goto_4
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz p3, :cond_8

    .line 830
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_7

    .line 831
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result p2

    goto :goto_5

    :cond_7
    const/16 p1, 0x25

    .line 833
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 p2, 0x17

    .line 834
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 838
    :cond_8
    :goto_5
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 840
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 841
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    if-eq p1, p2, :cond_a

    .line 842
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 846
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 773
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 775
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 776
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 774
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 779
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_4

    .line 780
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    add-int/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 781
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTwoLinesForName()V

    .line 784
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 785
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    .line 786
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 4655
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4657
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v2, 0x1

    const-string v3, ". "

    if-ne v1, v2, :cond_0

    .line 4658
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v4, "ArchivedChats"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4661
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_1

    .line 4662
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSecretChat:I

    const-string v4, "AccDescrSecretChat"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4665
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_2

    .line 4666
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTopic:I

    const-string v4, "AccDescrTopic"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4667
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4670
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    .line 4671
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4672
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v4, "RepliesTitle"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4674
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_4

    .line 4675
    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v4, "Bot"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4678
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v4, :cond_5

    .line 4679
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v4, "SavedMessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4681
    :cond_5
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4684
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4685
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_8

    .line 4686
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_7

    .line 4687
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    const-string v4, "AccDescrChannel"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4689
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    const-string v4, "AccDescrGroup"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4691
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4692
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4693
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v1, :cond_9

    .line 4697
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v4, "AccDescrVerified"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4700
    :cond_9
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v1, :cond_a

    .line 4701
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrNotificationsMuted:I

    const-string v4, "AccDescrNotificationsMuted"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4704
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4705
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrUserOnline:I

    const-string v4, "AccDescrUserOnline"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    :cond_b
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    const/4 v4, 0x0

    if-lez v1, :cond_c

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "NewMessages"

    .line 4709
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4712
    :cond_c
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-lez v1, :cond_d

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "AccDescrMentionCount"

    .line 4713
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    :cond_d
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v1, :cond_e

    .line 4717
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMentionReaction:I

    const-string v5, "AccDescrMentionReaction"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4718
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4720
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1b

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_f

    goto/16 :goto_6

    .line 4725
    :cond_f
    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v5, :cond_10

    .line 4727
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_10
    int-to-long v5, v5

    .line 4729
    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v1

    .line 4730
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4731
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrSentDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4733
    :cond_11
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrReceivedDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4736
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_12

    .line 4737
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4739
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4740
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4743
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_1a

    .line 4744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4745
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4746
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 4747
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 4748
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 4749
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_13

    .line 4750
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4752
    :cond_13
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4755
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_15

    const/4 v2, -0x1

    goto :goto_4

    :cond_15
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_4
    if-lez v2, :cond_19

    .line 4757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v5, "\n"

    .line 4758
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_16

    if-ltz v5, :cond_16

    move v3, v5

    :cond_16
    const-string v5, "\t"

    .line 4760
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_17

    if-ltz v5, :cond_17

    move v3, v5

    :cond_17
    const-string v5, " "

    .line 4762
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v3, :cond_18

    if-ltz v2, :cond_18

    move v3, v2

    .line 4764
    :cond_18
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4766
    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4769
    :cond_1a
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4770
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 4721
    :cond_1b
    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4722
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReorderStateChanged(ZZ)V
    .locals 2

    .line 4592
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-ne v0, p1, :cond_3

    .line 4593
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4594
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    :cond_2
    return-void

    .line 4598
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 4600
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 4602
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 4604
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5056
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->canClickButtonInside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5057
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5061
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 4627
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 4628
    invoke-virtual {v0, p0}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    const/4 p1, 0x1

    return p1

    .line 4631
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public resetPinnedArchiveState()V
    .locals 4

    .line 756
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 757
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 758
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    .line 759
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/4 v0, 0x0

    .line 760
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 761
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 763
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    .line 764
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTranslationX(F)V

    .line 765
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_2
    return-void
.end method

.method public setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 5083
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    .line 5079
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 2675
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto :goto_0

    :cond_1
    const/16 v2, 0x15

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$1;-><init>(Lorg/telegram/ui/Cells/DialogCell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    const-string v2, "windowBackgroundWhite"

    const-string v3, "checkboxCheck"

    .line 2682
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 2685
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2687
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2688
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setClipProgress(F)V
    .locals 0

    .line 5066
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    .line 5067
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 2

    .line 138
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 141
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setSize(I)V

    :cond_1
    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V
    .locals 3

    .line 673
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    .line 674
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 676
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 678
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 679
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 680
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 681
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 682
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 683
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 684
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 685
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 686
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 687
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 688
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 689
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 690
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 692
    :cond_4
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 6

    .line 580
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 585
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    const/4 v0, -0x1

    .line 586
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 588
    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 591
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v0, :cond_2

    .line 592
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 593
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_3

    .line 595
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    goto :goto_0

    .line 598
    :cond_2
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 600
    :cond_3
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 601
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    .line 602
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 603
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 606
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 607
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 608
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 609
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/4 p1, 0x0

    .line 618
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 619
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 620
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 621
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 622
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 623
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V
    .locals 0

    .line 5099
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    .line 2649
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 2650
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2652
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return-void
.end method

.method public setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V
    .locals 6

    .line 226
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 227
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    .line 228
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/4 v4, -0x1

    cmp-long v5, v2, p2

    if-eqz v5, :cond_1

    .line 229
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 231
    :cond_1
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v3, :cond_2

    .line 232
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    .line 234
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 236
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 237
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 238
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    .line 240
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 241
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 242
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 243
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 244
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 246
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 247
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    :cond_4
    if-nez p6, :cond_5

    .line 250
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_5
    if-eqz p1, :cond_6

    .line 253
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 255
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v0, :cond_7

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_7

    .line 257
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    .line 260
    :cond_7
    invoke-virtual {p0, v1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setIsTransitionSupport(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return-void
.end method

.method public setPinForced(Z)V
    .locals 0

    .line 868
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    .line 869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 870
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 872
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    return-void
.end method

.method public setRightFragmentOpenedProgress(F)V
    .locals 1

    .line 264
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 265
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    .line 266
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSliding(Z)V
    .locals 0

    .line 4608
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    .line 5075
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 5

    .line 3158
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3161
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    .line 3162
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    .line 3163
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3164
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3165
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    .line 3166
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3167
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 3169
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/4 v0, 0x1

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_2

    .line 3170
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    goto :goto_0

    .line 3172
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    .line 3173
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3174
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3176
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-nez v2, :cond_4

    .line 3177
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3178
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float v3, v3, v4

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eq v2, v1, :cond_4

    .line 3179
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 3181
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    :catch_0
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public startOutAnimation()V
    .locals 3

    .line 4575
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_1

    .line 4576
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    .line 4577
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4578
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4579
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4580
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    goto :goto_0

    .line 4582
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4583
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4584
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4585
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    .line 4587
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->startOutAnimation()V

    :cond_1
    return-void
.end method

.method public update(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2725
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    return p1
.end method

.method public update(IZ)Z
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    const/4 v3, 0x0

    .line 2733
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    .line 2734
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 2735
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2736
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v9, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2737
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2738
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2739
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2740
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 2741
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    int-to-long v10, v10

    iget-object v4, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 2742
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v14, "50_50"

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    const/4 v4, 0x0

    .line 2743
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v10, v9

    if-ge v4, v10, :cond_1

    .line 2744
    aget-object v9, v9, v4

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2746
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2747
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    const/4 v5, 0x0

    goto/16 :goto_2a

    .line 2749
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2750
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 2751
    :goto_2
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2752
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    const/4 v11, -0x1

    .line 2753
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2754
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_18

    .line 2755
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v11, :cond_16

    .line 2757
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2758
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-nez p1, :cond_17

    .line 2760
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v14, v12, v13}, Lorg/telegram/messenger/MessagesController;->isClearingDialog(J)Z

    move-result v12

    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2761
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v12, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    .line 2762
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    goto :goto_3

    :cond_4
    move-object v12, v7

    :goto_3
    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_5

    .line 2763
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2764
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 2765
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    :cond_6
    if-eqz v12, :cond_8

    .line 2766
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_8

    .line 2767
    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v13

    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v5, v6}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v5

    .line 2768
    aget v6, v5, v3

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2769
    aget v6, v5, v8

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    const/4 v6, 0x2

    .line 2770
    aget v12, v5, v6

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v6, 0x3

    .line 2771
    aget v5, v5, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    goto :goto_6

    .line 2772
    :cond_8
    instance-of v5, v11, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v5, :cond_9

    .line 2773
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2774
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2775
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    goto :goto_6

    .line 2777
    :cond_9
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2778
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2779
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2781
    :goto_6
    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2782
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 2783
    :cond_a
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2785
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v5, :cond_c

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/fork/controller/ForkTopicsController;->getInstance(I)Lorg/fork/controller/ForkTopicsController;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v5, v6}, Lorg/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2786
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto/16 :goto_f

    .line 2788
    :cond_c
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_f

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_9

    .line 2802
    :cond_d
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v5, :cond_e

    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_f

    .line 2792
    :cond_f
    :goto_9
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2793
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->selectedForwardDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v12, 0xc9

    if-ne v6, v12, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    aget-object v5, v5, v6

    goto :goto_d

    .line 2794
    :cond_11
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2795
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->selectedArchiveDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v12, 0x12d

    if-ne v6, v12, :cond_12

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    aget-object v5, v5, v6

    goto :goto_d

    .line 2797
    :cond_13
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v12, 0x8

    if-ne v6, v12, :cond_14

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    :goto_c
    aget-object v5, v5, v6

    :goto_d
    if-eqz v5, :cond_15

    .line 2800
    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_15

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2804
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_17

    .line 2805
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    goto :goto_10

    .line 2809
    :cond_16
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2810
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2811
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2813
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2814
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2816
    :cond_17
    :goto_10
    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-eqz v13, :cond_19

    sget-wide v11, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    cmp-long v13, v5, v11

    goto :goto_11

    .line 2818
    :cond_18
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2820
    :cond_19
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_1a

    .line 2821
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2822
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2823
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2825
    :cond_1a
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 2826
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    :cond_1b
    if-eqz p1, :cond_38

    .line 2831
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1c

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_1c

    .line 2832
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2833
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2835
    :cond_1c
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_22

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_22

    .line 2836
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2838
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 2839
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 2840
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v13, v5, v11

    if-eqz v13, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v13, v11, v5

    if-eqz v13, :cond_1e

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v5, :cond_1e

    :cond_1d
    const/4 v5, 0x1

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    :goto_12
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 2842
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v5

    .line 2844
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v6, :cond_21

    .line 2845
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v6, :cond_1f

    if-eqz v5, :cond_1f

    .line 2846
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2847
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_13

    .line 2849
    :cond_1f
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2851
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_20

    .line 2852
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2853
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_13

    .line 2855
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 2857
    :cond_21
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2859
    :cond_22
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v5, :cond_23

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v5, :cond_27

    .line 2860
    :cond_23
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int v5, p1, v5

    if-eqz v5, :cond_27

    .line 2861
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v6

    invoke-virtual {v5, v11, v12, v6, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2862
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v6, :cond_24

    if-eqz v5, :cond_26

    :cond_24
    if-nez v6, :cond_25

    if-nez v5, :cond_26

    :cond_25
    if-eqz v6, :cond_27

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_26
    const/4 v5, 0x1

    goto :goto_14

    :cond_27
    const/4 v5, 0x0

    :goto_14
    if-nez v5, :cond_28

    .line 2867
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_MESSAGE_TEXT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_28

    .line 2868
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_28

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    if-eq v6, v11, :cond_28

    const/4 v5, 0x1

    :cond_28
    if-nez v5, :cond_2a

    .line 2872
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_2a

    .line 2873
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 2874
    iget-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v11, :cond_29

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_15

    :cond_29
    const/4 v6, 0x0

    :goto_15
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eq v6, v11, :cond_2a

    const/4 v5, 0x1

    :cond_2a
    if-nez v5, :cond_2b

    .line 2878
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2b

    .line 2879
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_2b

    const/4 v5, 0x1

    :cond_2b
    if-nez v5, :cond_2c

    .line 2883
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2c

    .line 2884
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_2c

    const/4 v5, 0x1

    :cond_2c
    if-nez v5, :cond_2d

    .line 2888
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2d

    .line 2889
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v6, :cond_2d

    const/4 v5, 0x1

    :cond_2d
    if-nez v5, :cond_2e

    .line 2893
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2e

    .line 2894
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v6, :cond_2e

    const/4 v5, 0x1

    :cond_2e
    if-nez v5, :cond_36

    .line 2899
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_2f

    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    if-eq v11, v6, :cond_2f

    .line 2900
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    const/4 v5, 0x1

    .line 2903
    :cond_2f
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v6, :cond_36

    .line 2904
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v6, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v6, :cond_30

    move-object v11, v7

    goto :goto_16

    .line 2909
    :cond_30
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    :goto_16
    if-eqz v11, :cond_32

    .line 2910
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v12, :cond_32

    .line 2911
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v12

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v12, v14, v15}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v11

    .line 2912
    aget v12, v11, v3

    .line 2913
    aget v14, v11, v8

    const/4 v15, 0x2

    .line 2914
    aget v19, v11, v15

    const/4 v15, 0x3

    .line 2915
    aget v11, v11, v15

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    goto :goto_17

    :cond_31
    const/4 v11, 0x0

    :goto_17
    iput-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    move/from16 v11, v19

    goto :goto_19

    .line 2916
    :cond_32
    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v11, :cond_33

    .line 2917
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v12

    const/4 v11, 0x0

    :goto_18
    const/4 v14, 0x0

    goto :goto_19

    :cond_33
    if-eqz v6, :cond_34

    .line 2920
    iget v12, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 2921
    iget v14, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    .line 2922
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    goto :goto_19

    :cond_34
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_18

    :goto_19
    if-eqz v6, :cond_36

    .line 2927
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v15, v12, :cond_35

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-ne v15, v13, :cond_35

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v13, v14, :cond_35

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eq v13, v11, :cond_36

    .line 2928
    :cond_35
    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2929
    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2930
    iget-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2931
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v5, 0x1

    :cond_36
    if-nez v5, :cond_37

    .line 2936
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SEND_STATE:I

    and-int v6, p1, v6

    if-eqz v6, :cond_37

    .line 2937
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_37

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v11, v6, :cond_37

    .line 2938
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    const/4 v5, 0x1

    :cond_37
    if-nez v5, :cond_38

    .line 2944
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    return v3

    .line 2949
    :cond_38
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2950
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2951
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2954
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_3a

    .line 2955
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2956
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 2957
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->findFolderTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_39

    .line 2959
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    :goto_1a
    const-wide/16 v5, 0x0

    goto :goto_1d

    :cond_39
    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x0

    goto :goto_1d

    .line 2964
    :cond_3a
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 2965
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_3c

    .line 2966
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v5, v6, v7, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v5

    .line 2967
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v6, v11, v12, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    if-ne v5, v6, :cond_3b

    .line 2969
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2970
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1c

    .line 2972
    :cond_3b
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    xor-int/lit8 v5, v6, 0x1

    .line 2973
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1c

    .line 2976
    :cond_3c
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v5, :cond_3d

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    invoke-virtual {v5, v6, v7, v11}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_1b

    :cond_3d
    const/4 v5, 0x0

    :goto_1b
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2979
    :goto_1c
    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    goto :goto_1a

    :goto_1d
    cmp-long v7, v11, v5

    if-eqz v7, :cond_41

    .line 2983
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2984
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_40

    .line 2986
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1e

    .line 2988
    :cond_3e
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2989
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1e

    .line 2991
    :cond_3f
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2992
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v6, :cond_40

    if-eqz v5, :cond_40

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_40

    .line 2993
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 2995
    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2999
    :cond_40
    :goto_1e
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v5, :cond_41

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_41

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3000
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3004
    :cond_41
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/16 v6, 0xc

    if-eqz v5, :cond_42

    .line 3005
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3006
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3007
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1f

    .line 3009
    :cond_42
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v5, :cond_43

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_43

    .line 3010
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 3011
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    .line 3012
    :cond_43
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_46

    .line 3013
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 3014
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 3015
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3016
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1f

    .line 3017
    :cond_44
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v5, :cond_45

    .line 3018
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3019
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1f

    .line 3021
    :cond_45
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    invoke-virtual/range {v26 .. v31}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZI)V

    goto :goto_1f

    .line 3023
    :cond_46
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_48

    .line 3024
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3026
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v5, v11, v12}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 3027
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3028
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v25, 0x0

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1f

    .line 3030
    :cond_47
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_48
    :goto_1f
    const-wide/16 v11, 0x96

    const-wide/16 v13, 0xdc

    if-eqz v1, :cond_55

    .line 3034
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v4, v5, :cond_49

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eq v10, v5, :cond_55

    :cond_49
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v5, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    sub-long v17, v17, v6

    const-wide/16 v5, 0x64

    cmp-long v7, v17, v5

    if-lez v7, :cond_55

    .line 3035
    :cond_4a
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_4b

    .line 3036
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4b
    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 3038
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    .line 3039
    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3043
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/DialogCell$2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_4c

    .line 3053
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v5, :cond_4d

    :cond_4c
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v5, :cond_4f

    if-nez v10, :cond_4d

    goto :goto_20

    .line 3056
    :cond_4d
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v5, :cond_4e

    .line 3057
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3058
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_21

    .line 3060
    :cond_4e
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1ae

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3061
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_21

    .line 3054
    :cond_4f
    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3055
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3063
    :goto_21
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v5, :cond_53

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-eqz v5, :cond_53

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_53

    new-array v5, v8, [Ljava/lang/Object;

    .line 3064
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v8, [Ljava/lang/Object;

    .line 3065
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3067
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v7, v10, :cond_52

    .line 3068
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3069
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3070
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    .line 3071
    :goto_22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_51

    .line 3072
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_50

    .line 3073
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v7, v11, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3074
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v10, v11, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_23

    .line 3076
    :cond_50
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v15, v11, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_51
    const/16 v8, 0xc

    .line 3080
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v5, v11

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3081
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3082
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v6

    move-object/from16 v20, v15

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 3083
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v6

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_24

    .line 3085
    :cond_52
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3088
    :cond_53
    :goto_24
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    .line 3089
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    .line 3090
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-le v5, v4, :cond_54

    const/4 v4, 0x1

    goto :goto_25

    :cond_54
    const/4 v4, 0x0

    :goto_25
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    .line 3091
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3094
    :cond_55
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v4, :cond_56

    const/4 v4, 0x1

    goto :goto_26

    :cond_56
    const/4 v4, 0x0

    :goto_26
    if-eqz v1, :cond_59

    if-eq v4, v9, :cond_59

    .line 3096
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_57

    .line 3097
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_57
    const/4 v5, 0x0

    .line 3099
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 3100
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    .line 3101
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3105
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_58

    .line 3113
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3114
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_27

    .line 3116
    :cond_58
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3117
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3119
    :goto_27
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_28

    :cond_59
    const/4 v5, 0x0

    .line 3122
    :goto_28
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_5b

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v6, :cond_5b

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v6, :cond_5b

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v6, :cond_5b

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v6, :cond_5a

    const/16 v6, 0x8

    goto :goto_29

    :cond_5a
    const/16 v6, 0x10

    goto :goto_29

    :cond_5b
    const/16 v6, 0x1c

    :goto_29
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3124
    :goto_2a
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v4, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-eqz v4, :cond_5d

    :cond_5c
    const/4 v4, 0x1

    goto :goto_2b

    :cond_5d
    const/4 v4, 0x0

    :goto_2b
    if-nez v1, :cond_60

    .line 3131
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v1, :cond_5e

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v1, :cond_5f

    :cond_5e
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_5f
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    .line 3132
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_60

    .line 3133
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3137
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3138
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eq v1, v2, :cond_61

    const/4 v3, 0x1

    :cond_61
    if-eqz v4, :cond_62

    .line 3142
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_62
    return v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateMessageThumbs()V
    .locals 9

    .line 4799
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 4802
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 4803
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const-string v2, "telegram_"

    const-string v3, "article"

    const-string v4, "profile"

    const-string v5, "app"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_5

    .line 4804
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4805
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4806
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 v0, 0x3

    .line 4807
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v7, v0, :cond_9

    .line 4808
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 4809
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4810
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 4811
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4812
    :cond_3
    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4816
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_9

    .line 4817
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4818
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4819
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4820
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    .line 4821
    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v6, :cond_8

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4822
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method
