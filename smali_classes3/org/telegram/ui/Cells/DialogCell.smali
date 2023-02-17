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

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private bottomClip:I

.field private buttonBackgroundPaint:Landroid/graphics/Paint;

.field private buttonCreated:Z

.field private buttonLayout:Landroid/text/StaticLayout;

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

    .line 551
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

    .line 557
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 180
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    const/16 v0, 0x48

    .line 181
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    .line 182
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 v0, 0x4e

    .line 183
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/high16 v0, 0x42280000    # 42.0f

    .line 191
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    .line 213
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    .line 214
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 374
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/telegram/messenger/ImageReceiver;

    .line 384
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    new-array v2, v1, [Z

    .line 385
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    new-array v1, v1, [Z

    .line 386
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    .line 388
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 389
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 392
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    .line 454
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    .line 456
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    .line 481
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    const/high16 p3, 0x3f800000    # 1.0f

    .line 490
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 491
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 512
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    const/4 p3, -0x1

    .line 519
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 531
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 532
    new-instance p3, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell$1;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    .line 558
    iput-object p6, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 559
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 560
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 p1, 0x0

    .line 563
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 564
    new-instance p3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object p3, p2, p1

    .line 565
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, p1

    const/4 p3, 0x2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 566
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, p1

    invoke-virtual {p2, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 568
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    .line 569
    iput p5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    .line 572
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 573
    iput-boolean v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/DialogCell;II)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/DialogCell;Z)Z
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Cells/DialogCell;I)I
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/DialogCell;)J
    .locals 2

    .line 122
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 122
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 122
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 122
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 122
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    return p0
.end method

.method private applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 2455
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_0

    .line 2456
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, " "

    .line 2457
    invoke-virtual {p1, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2458
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

    .line 153
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private checkChatTheme()V
    .locals 5

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    if-eqz v1, :cond_0

    .line 664
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 665
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

    .line 653
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

    .line 654
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    return-void
.end method

.method private checkOnline()V
    .locals 3

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 625
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

    .line 627
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 630
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 631
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    return-void
.end method

.method private checkTtl()V
    .locals 1

    .line 658
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

    .line 659
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return-void
.end method

.method private checkTwoLinesForName()V
    .locals 1

    const/4 v0, 0x0

    .line 796
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 797
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 799
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 801
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method private computeHeight()I
    .locals 1

    .line 784
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    if-nez v0, :cond_3

    .line 785
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

    .line 787
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method private createStatusDrawableAnimator(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4516
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4517
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 4518
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4520
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4521
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    .line 4522
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    .line 4523
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4527
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x1

    .line 4540
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    .line 4541
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

    .line 2554
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_1

    .line 2556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2557
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

    .line 2558
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p6, p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2560
    :cond_1
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_2

    .line 2562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2563
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2565
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_a

    if-eqz p3, :cond_8

    .line 2568
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    if-eqz p5, :cond_4

    .line 2570
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2571
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

    .line 2572
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p3, p6, v4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-nez p5, :cond_5

    if-eqz v1, :cond_5

    .line 2575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2576
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

    .line 2577
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v4, v4, p6

    float-to-int p3, v4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2578
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2581
    :cond_5
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_6

    .line 2584
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2585
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x4

    .line 2586
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p6

    mul-float p2, p2, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2588
    :cond_6
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 2589
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_7

    .line 2591
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2592
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez p5, :cond_a

    if-eqz v1, :cond_a

    .line 2596
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2597
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2598
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 2601
    :cond_8
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_9

    .line 2603
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2604
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

    .line 2605
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p6, p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2607
    :cond_9
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_a

    .line 2609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2610
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

    .line 4345
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

    .line 4346
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

    .line 4347
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

    .line 4352
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    if-nez v12, :cond_5

    .line 4353
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    .line 4354
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4355
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4356
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 4357
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_5
    const-string v12, "chats_pinnedOverlay"

    .line 4359
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 4360
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const-string v14, "windowBackgroundWhite"

    .line 4361
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    .line 4362
    invoke-static {v12, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    .line 4363
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    .line 4360
    invoke-static {v14, v15, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 4366
    :cond_6
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v12, :cond_a

    .line 4367
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 4368
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    .line 4370
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_8

    const-string v10, "topics_unreadCounterMuted"

    goto :goto_3

    :cond_8
    const-string v10, "topics_unreadCounter"

    .line 4371
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    .line 4372
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4373
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

    .line 4377
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

    .line 4380
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x40b00000    # 5.5f

    const/16 v16, 0x4

    const/high16 v17, 0x41380000    # 11.5f

    if-eqz v12, :cond_1d

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v13, :cond_d

    goto/16 :goto_f

    .line 4435
    :cond_d
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    int-to-float v10, v10

    mul-float v12, v12, v10

    float-to-int v10, v12

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4436
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

    .line 4444
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    .line 4445
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

    .line 4449
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float v8, v8, v9

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 4451
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

    .line 4454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v8, v8, v4

    .line 4455
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v5, :cond_14

    .line 4457
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 4458
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_11

    .line 4459
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_9

    .line 4461
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4463
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_12

    .line 4464
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4466
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4468
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_15

    .line 4470
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 4473
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

    .line 4475
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4478
    :cond_15
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_16

    .line 4479
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4480
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4481
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4485
    :cond_16
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 4486
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float v6, v5, v12

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4487
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/16 v6, 0xd

    if-eqz v4, :cond_18

    .line 4488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4489
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

    .line 4490
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    .line 4492
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1a

    .line 4493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4494
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

    .line 4495
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4496
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4499
    :cond_1a
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1c

    .line 4500
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    mul-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4501
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4502
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

    .line 4503
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4506
    :cond_1c
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 4381
    :cond_1d
    :goto_f
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 4382
    :goto_10
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v9, v13, v9

    int-to-float v10, v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4383
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v10, v13, v10

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4385
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v3, v9

    .line 4386
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

    .line 4388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v10

    if-eqz v13, :cond_1f

    .line 4390
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

    .line 4393
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4394
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v13, v10, v13

    mul-float v13, v13, v11

    float-to-int v11, v13

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4395
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v4, v11, v13}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4396
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v4, v10, v8

    .line 4397
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

    .line 4398
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4401
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

    .line 4405
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_22

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4406
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_23

    .line 4407
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_11

    .line 4409
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4411
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_24

    .line 4412
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4414
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4416
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_27

    .line 4418
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    .line 4421
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

    .line 4423
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

    .line 4427
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    .line 4428
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4429
    invoke-virtual {v12, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4430
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4433
    :cond_28
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_13
    if-eqz v7, :cond_29

    .line 4510
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

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2672
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2673
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2675
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2676
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2678
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 2679
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2680
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_4

    .line 2682
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2683
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

    .line 2684
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_3

    :cond_2
    move-object v4, v7

    .line 2687
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

    .line 870
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 872
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 875
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 876
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 877
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    .line 878
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 881
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 882
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

    .line 884
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

    .line 887
    :cond_1
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 888
    iget v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_1

    .line 890
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

    .line 895
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_7

    .line 897
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 898
    sget v6, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v7, "HiddenName"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 900
    :cond_4
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 905
    :goto_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, ", "

    .line 906
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 908
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 909
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    .line 910
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 911
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v5, :cond_6

    .line 912
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

    .line 914
    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x96

    if-le v5, v6, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 918
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

    .line 2468
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2469
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2470
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 2471
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

    .line 2474
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2476
    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2477
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2480
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const-string v5, " "

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 2481
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4, v6}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 2482
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

    .line 2484
    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2485
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2486
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v9, :cond_0

    .line 2487
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 2489
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2490
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2492
    iget-object v8, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2493
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

    .line 2495
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

    .line 2498
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    const/4 v9, 0x0

    .line 2500
    :goto_3
    iget-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v7, :cond_5

    .line 2501
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2502
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

    .line 2508
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 2509
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v10, v4, :cond_7

    goto :goto_7

    .line 2513
    :cond_7
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 2515
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_8
    const-string v6, ", "

    .line 2517
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2521
    :cond_9
    :goto_6
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ForumTopic;

    iget-object v10, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2522
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    if-lez v9, :cond_b

    .line 2525
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v4, "fonts/rmedium.ttf"

    .line 2526
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const-string v5, "chats_name"

    invoke-direct {v3, v4, v0, v5, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2527
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v9, v9, 0x2

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2525
    invoke-virtual {v1, v3, v0, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    return-object v1

    .line 2533
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

    .line 2534
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

    .line 4734
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4735
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

    .line 4743
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4744
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_3

    .line 4745
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 4747
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

    .line 792
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

    .line 3121
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

    .line 157
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/LockedSectionsController;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
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

    .line 162
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/LockedSectionsController;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
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

    .line 635
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v0, :cond_2

    .line 642
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

    .line 646
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

    .line 4524
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    .line 4525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    .line 2476
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 1

    .line 3636
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3637
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$4()V
    .locals 1

    .line 3641
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3642
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3016
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 3017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3078
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 3079
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$updateMessageThumbs$6(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 0

    .line 4766
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private setThumb(ILorg/telegram/messenger/MessageObject;)V
    .locals 11

    .line 4789
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 4790
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 4795
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

    .line 4800
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

    .line 4801
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_a

    add-int/2addr v2, v3

    .line 4802
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4803
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

    .line 4804
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v4

    aput-boolean v4, v2, p1

    .line 4805
    iget v2, p2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v3, :cond_7

    if-eqz v1, :cond_7

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 4806
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

    .line 4807
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

    .line 4808
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

    .line 4809
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_a
    return-void
.end method

.method private updateThumbsPosition()V
    .locals 6

    .line 2422
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_4

    .line 2423
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2428
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2429
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    .line 2430
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    if-eqz v2, :cond_4

    .line 2431
    array-length v3, v2

    if-lez v3, :cond_4

    .line 2432
    check-cast v1, Landroid/text/Spanned;

    aget-object v2, v2, v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 2437
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 2438
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2439
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 2441
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2443
    :cond_3
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v5, v1, :cond_4

    .line 2444
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v5

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2449
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public animateArchiveAvatar()V
    .locals 2

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2639
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/4 v0, 0x0

    .line 2640
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 2641
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 2642
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2643
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public buildLayout()V
    .locals 52

    move-object/from16 v1, p0

    .line 924
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-eqz v0, :cond_0

    return-void

    .line 927
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    return-void

    .line 934
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

    .line 944
    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 945
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 946
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 947
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 949
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v7, v0, v6

    aget-object v0, v0, v6

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v9, "chats_message"

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iput v8, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 950
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    const/16 v0, 0x13

    .line 951
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    goto :goto_1

    .line 935
    :cond_3
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 936
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 937
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    const/16 v7, 0xf

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 938
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v5

    const/16 v7, 0xf

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 940
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v7, v0, v5

    aget-object v0, v0, v5

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v9, "chats_message_threeLines"

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iput v8, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 941
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    .line 942
    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    .line 954
    :goto_1
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 964
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_5

    .line 965
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

    .line 967
    :goto_2
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v9

    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 970
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 971
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 972
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 973
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 974
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 975
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 976
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 977
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 978
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 980
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

    .line 982
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 984
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-nez v10, :cond_7

    .line 985
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 989
    :cond_7
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v4, :cond_b

    .line 990
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

    .line 995
    :cond_9
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "\u2068%1$s\u2069"

    goto :goto_6

    .line 992
    :cond_a
    :goto_4
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%2$s: \u2068%1$s\u2069"

    goto :goto_6

    .line 998
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

    .line 1003
    :cond_d
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%1$s"

    goto :goto_6

    .line 1000
    :cond_e
    :goto_5
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const-string v10, "%2$s: %1$s"

    .line 1007
    :goto_6
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_f

    .line 1008
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    .line 1010
    :cond_f
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_10
    move-object v11, v7

    .line 1011
    :goto_7
    instance-of v12, v11, Landroid/text/Spannable;

    if-eqz v12, :cond_13

    .line 1012
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1013
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

    .line 1014
    invoke-interface {v12, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1015
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

    .line 1016
    invoke-interface {v12, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_12
    move-object v11, v12

    .line 1019
    :cond_13
    iput-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    .line 1021
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

    .line 1022
    iget v0, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v13, :cond_19

    .line 1023
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1025
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x418c0000    # 17.5f

    .line 1026
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1027
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1028
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

    .line 1030
    :cond_14
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    const/high16 v0, 0x41840000    # 16.5f

    .line 1040
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1041
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_16

    .line 1042
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1043
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

    .line 1045
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

    .line 1046
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1031
    :cond_17
    :goto_a
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1032
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_18

    .line 1033
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1034
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

    .line 1036
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

    .line 1037
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1050
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

    .line 1052
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_1b

    .line 1053
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v13

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1055
    :cond_1b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1c

    goto :goto_c

    .line 1062
    :cond_1c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1d

    .line 1063
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1065
    :cond_1d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1056
    :cond_1e
    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1f

    .line 1057
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1059
    :cond_1f
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1070
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v8, v5, :cond_24

    .line 1071
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v8, "FromYou"

    invoke-static {v8, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1074
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v11, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v11, :cond_20

    .line 1075
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v11

    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    new-array v8, v5, [Ljava/lang/Object;

    .line 1076
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v11, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 1077
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "chats_attachMessage"

    invoke-direct {v10, v12, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v8, v10, v6, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    .line 1079
    :cond_20
    iget-object v2, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1080
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_21

    .line 1081
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1083
    :cond_21
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v8, :cond_23

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_22

    goto :goto_e

    :cond_22
    new-array v8, v13, [Ljava/lang/Object;

    .line 1086
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

    .line 1084
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 1089
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

    .line 1091
    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1092
    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v0, :cond_25

    .line 1093
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v8

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_25
    move-object v0, v7

    const/4 v8, 0x1

    .line 1097
    :goto_10
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 1099
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v11, :cond_26

    .line 1100
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    new-array v12, v5, [Ljava/lang/Object;

    .line 1101
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v6

    const-string v11, "%d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    .line 1103
    :cond_26
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object v11, v7

    .line 1106
    :goto_11
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v14, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    if-nez v14, :cond_27

    .line 1107
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1108
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1109
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    goto :goto_12

    :cond_27
    if-ne v14, v13, :cond_28

    .line 1111
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1112
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1113
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    :cond_28
    if-ne v14, v5, :cond_29

    .line 1115
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1116
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1117
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    .line 1119
    :cond_29
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1120
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1121
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1124
    :goto_12
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1125
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

    .line 1128
    :cond_2a
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_2b

    .line 1129
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v12, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1131
    :cond_2b
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v12, :cond_2e

    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v12, :cond_2c

    goto :goto_13

    .line 1138
    :cond_2c
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_2d

    .line 1139
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1141
    :cond_2d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1132
    :cond_2e
    :goto_13
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_2f

    .line 1133
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_14

    .line 1135
    :cond_2f
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1145
    :goto_14
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v12, :cond_35

    .line 1146
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v12, :cond_41

    .line 1147
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1149
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_30

    const/high16 v12, 0x418c0000    # 17.5f

    .line 1150
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1151
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1152
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

    .line 1154
    :cond_30
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v12, :cond_33

    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v12, :cond_31

    goto :goto_15

    :cond_31
    const/high16 v12, 0x41840000    # 16.5f

    .line 1164
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1165
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_32

    .line 1166
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1167
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

    .line 1169
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

    .line 1170
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1155
    :cond_33
    :goto_15
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1156
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_34

    .line 1157
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1158
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

    .line 1160
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

    .line 1161
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1a

    .line 1175
    :cond_35
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v12, :cond_41

    .line 1176
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_39

    .line 1177
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v14, :cond_36

    .line 1178
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1179
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1a

    .line 1180
    :cond_36
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v14, :cond_37

    .line 1181
    iput v13, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1182
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1a

    .line 1184
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

    .line 1186
    :cond_39
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_41

    .line 1187
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v14, :cond_3a

    .line 1188
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1189
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_18

    .line 1190
    :cond_3a
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v14, :cond_3b

    .line 1191
    iput v13, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1192
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_18

    .line 1194
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

    .line 1197
    :goto_18
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v12

    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1198
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v12

    iput-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 1200
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

    .line 1202
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v3

    .line 1203
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v4, :cond_3f

    if-eqz v3, :cond_3f

    .line 1204
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1205
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_1a

    .line 1207
    :cond_3f
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1209
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v3, :cond_40

    .line 1210
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1211
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v7, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1a

    .line 1213
    :cond_40
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1220
    :cond_41
    :goto_1a
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v3, :cond_42

    .line 1221
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_42

    .line 1222
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1225
    :cond_42
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v4, :cond_43

    .line 1226
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

    .line 1227
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1228
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1b

    .line 1230
    :cond_43
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v4, :cond_44

    .line 1231
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v4, v12, v13, v6}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1b

    .line 1233
    :cond_44
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1236
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

    .line 1237
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

    .line 1238
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v3, :cond_4b

    .line 1239
    :cond_4a
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1242
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1243
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1244
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatTopicsNames()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1248
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4c

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_4c
    move-object v3, v7

    .line 1249
    :goto_1c
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_4d

    invoke-virtual {v1, v10, v3, v0, v5}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1d

    :cond_4d
    move-object/from16 v3, v22

    .line 1250
    :goto_1d
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_4e

    if-eqz v0, :cond_4e

    .line 1251
    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1252
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

    .line 1255
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

    .line 1258
    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 1259
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

    .line 1260
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1263
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_1e

    :cond_50
    const/4 v3, 0x0

    .line 1265
    :goto_1e
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v12, "..."

    .line 1267
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v12, v13}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1268
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_51

    .line 1269
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

    .line 1272
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

    .line 1274
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

    .line 1280
    :cond_53
    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1281
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    move-object/from16 v4, v22

    const/4 v0, 0x1

    const/16 v16, -0x1

    .line 1283
    :goto_21
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_5b

    .line 1285
    sget v0, Lorg/telegram/messenger/R$string;->Draft:I

    const-string v3, "Draft"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1287
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_55

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_54

    goto :goto_22

    .line 1290
    :cond_54
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1291
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

    .line 1295
    :cond_56
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 1296
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x96

    if-le v11, v12, :cond_57

    .line 1297
    invoke-virtual {v3, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1299
    :cond_57
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1300
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/16 v12, 0x108

    invoke-static {v3, v11, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/tgnet/TLRPC$DraftMessage;Landroid/text/Spannable;I)V

    .line 1301
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_59

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    .line 1302
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

    .line 1305
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v12, v6

    aput-object v0, v12, v5

    invoke-static {v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1306
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_5a

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v10, :cond_5a

    .line 1307
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "chats_draft"

    invoke-direct {v10, v12, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v3, v10, v6, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1309
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

    .line 1312
    :cond_5b
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v3, :cond_5c

    .line 1313
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1314
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

    .line 1315
    :cond_5c
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_63

    .line 1316
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_61

    .line 1317
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v10

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1318
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v3, :cond_5d

    .line 1319
    sget v2, Lorg/telegram/messenger/R$string;->EncryptionProcessing:I

    const-string v3, "EncryptionProcessing"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1320
    :cond_5d
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v3, :cond_5e

    .line 1321
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

    .line 1322
    :cond_5e
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v3, :cond_5f

    .line 1323
    sget v2, Lorg/telegram/messenger/R$string;->EncryptionRejected:I

    const-string v3, "EncryptionRejected"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1324
    :cond_5f
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_62

    .line 1325
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v12, v2, v10

    if-nez v12, :cond_60

    .line 1326
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

    .line 1328
    :cond_60
    sget v2, Lorg/telegram/messenger/R$string;->EncryptedChatStartedIncoming:I

    const-string v3, "EncryptedChatStartedIncoming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 1332
    :cond_61
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_62

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1333
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

    .line 1341
    :cond_63
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1344
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v12

    .line 1345
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v14

    if-eqz v14, :cond_64

    .line 1346
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-object v12, v7

    goto :goto_27

    .line 1348
    :cond_64
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 1350
    :goto_27
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    .line 1352
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

    .line 1353
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 1354
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

    .line 1356
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    .line 1357
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v7

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1358
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_65

    .line 1359
    sget v2, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const-string v3, "ReactionInDialog"

    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_28
    const/4 v3, 0x1

    goto :goto_2b

    .line 1361
    :cond_65
    sget v3, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "**reaction**"

    aput-object v8, v7, v6

    const-string v8, "ReactionInDialog"

    invoke-static {v8, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "**reaction**"

    .line 1362
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "**reaction**"

    const-string v13, "d"

    .line 1363
    invoke-virtual {v3, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1365
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1366
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

    .line 1374
    :cond_6a
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_72

    .line 1375
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_71

    .line 1376
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_6d

    .line 1377
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_6b

    const-string v2, "Subscribers"

    .line 1378
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1380
    :cond_6b
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1381
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v3, "ChannelPrivate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1383
    :cond_6c
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v3, "ChannelPublic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1387
    :cond_6d
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v3, :cond_6e

    const-string v2, "Members"

    .line 1388
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1390
    :cond_6e
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_6f

    .line 1391
    sget v2, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v3, "MegaLocation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1392
    :cond_6f
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 1393
    sget v2, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v3, "MegaPrivate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 1395
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

    .line 1402
    :goto_2e
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    goto :goto_2f

    :cond_72
    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    .line 1405
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1406
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    const-string v3, "SavedMessagesInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_47

    .line 1409
    :cond_73
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_76

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v2, :cond_76

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v2, :cond_76

    .line 1411
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

    .line 1412
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

    .line 1413
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

    .line 1419
    :goto_32
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1420
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_79

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1422
    invoke-direct {v1, v11}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2d

    :cond_79
    move-object v2, v11

    goto/16 :goto_2d

    .line 1425
    :cond_7a
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1427
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

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_7e

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v2, :cond_7e

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v2, :cond_7e

    .line 1430
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

    .line 1431
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1432
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v7, "-"

    invoke-direct {v3, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1433
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1434
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

    .line 1435
    invoke-virtual {v3, v7, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1436
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1437
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

    .line 1442
    invoke-virtual {v1, v10, v2, v7, v6}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1445
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

    .line 1447
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

    .line 1450
    :goto_36
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_81
    const/4 v3, 0x0

    .line 1453
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

    .line 1454
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1455
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_82

    move-object v0, v2

    .line 1460
    :cond_82
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v2, :cond_85

    .line 1461
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_83

    .line 1462
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 1465
    :cond_83
    move-object v2, v0

    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 1466
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lt v3, v8, :cond_84

    const-string v3, " "

    .line 1467
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1468
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

    .line 1470
    invoke-virtual {v2, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1471
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

    .line 1475
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    :goto_39
    move-object v3, v2

    goto/16 :goto_45

    .line 1477
    :cond_87
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1478
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

    .line 1481
    :cond_88
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1483
    :cond_89
    :goto_3a
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    instance-of v2, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v2, :cond_a4

    .line 1484
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

    .line 1486
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    check-cast v7, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto/16 :goto_45

    .line 1489
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

    .line 1490
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v3, "AttachPhotoExpired"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_45

    .line 1491
    :cond_8b
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_8c

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v3, :cond_8c

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v2, :cond_8c

    .line 1492
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v3, "AttachVideoExpired"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_45

    .line 1493
    :cond_8c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 1494
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 1496
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v3, :cond_8d

    move-object/from16 v3, v22

    goto :goto_3b

    .line 1498
    :cond_8d
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string v3, "\ud83d\udcf9 "

    goto :goto_3b

    .line 1500
    :cond_8e
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_8f

    const-string v3, "\ud83c\udfa4 "

    goto :goto_3b

    .line 1502
    :cond_8f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, "\ud83c\udfa7 "

    goto :goto_3b

    .line 1504
    :cond_90
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v3

    if-eqz v3, :cond_91

    const-string v3, "\ud83d\uddbc "

    goto :goto_3b

    :cond_91
    const-string v3, "\ud83d\udcce "

    .line 1509
    :goto_3b
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v7

    if-eqz v7, :cond_95

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 1510
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1514
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0x17

    add-int/lit8 v10, v10, 0x18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    .line 1515
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v10, :cond_93

    const/4 v10, 0x0

    .line 1516
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_92

    int-to-float v8, v8

    .line 1519
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v8, v11

    float-to-int v8, v8

    goto :goto_3c

    .line 1517
    :cond_92
    throw v10

    :cond_93
    :goto_3c
    if-lez v8, :cond_94

    .line 1522
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

    .line 1524
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 1526
    :cond_95
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1527
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_97

    .line 1528
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v11, 0x108

    invoke-static {v8, v10, v7, v11}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 1529
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

    .line 1531
    :cond_97
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_39

    .line 1533
    :cond_98
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le v2, v5, :cond_9c

    .line 1534
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v2, :cond_9a

    .line 1535
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

    .line 1537
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

    .line 1539
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v7

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_45

    .line 1541
    :cond_9c
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v7, :cond_9d

    .line 1542
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1543
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

    .line 1544
    :cond_9d
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v7, :cond_9e

    .line 1545
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

    .line 1546
    :cond_9e
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v7, :cond_9f

    .line 1547
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto :goto_41

    .line 1548
    :cond_9f
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xe

    if-ne v3, v7, :cond_a0

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    .line 1549
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

    .line 1551
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

    .line 1552
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v7, v7, 0x17

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v3, v7

    .line 1557
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

    .line 1559
    :cond_a1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v7, 0x108

    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 1561
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_a3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_a3

    .line 1562
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

    .line 1566
    :cond_a3
    :goto_43
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto/16 :goto_41

    .line 1568
    :goto_44
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_a4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 1569
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v7

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1572
    :cond_a4
    :goto_45
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v2, :cond_a8

    .line 1573
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

    .line 1574
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 1578
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

    .line 1579
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

    .line 1581
    :cond_a5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x96

    if-le v0, v2, :cond_a6

    .line 1582
    invoke-interface {v3, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1584
    :cond_a6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1586
    :goto_46
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_a7

    .line 1587
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 1590
    :cond_a7
    move-object v2, v0

    check-cast v2, Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    .line 1591
    invoke-virtual {v2, v6, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1592
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

    .line 1593
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v7, 0x11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2, v3, v8, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 1594
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1595
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

    .line 1603
    :goto_47
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v10, :cond_aa

    .line 1604
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

    .line 1610
    :goto_49
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v11, :cond_ab

    .line 1611
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    .line 1612
    :cond_ab
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v11, :cond_ac

    int-to-long v11, v11

    .line 1613
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    .line 1614
    :cond_ac
    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_ad

    .line 1615
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v11

    goto :goto_4a

    :cond_ad
    move-object/from16 v11, v22

    .line 1618
    :goto_4a
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v12, :cond_ae

    .line 1619
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1620
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1621
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1622
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1623
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 1624
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1625
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_58

    .line 1627
    :cond_ae
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v13, :cond_b2

    .line 1629
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isArchiveContentHidden()Z

    move-result v12

    if-eqz v12, :cond_af

    .line 1630
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_4b

    .line 1632
    :cond_af
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    add-int v14, v12, v13

    if-lez v14, :cond_b1

    if-le v12, v13, :cond_b0

    .line 1634
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1635
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v5, [Ljava/lang/Object;

    add-int/2addr v12, v13

    .line 1636
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v6

    const-string v12, "%d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4c

    .line 1638
    :cond_b0
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1639
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v5, [Ljava/lang/Object;

    add-int/2addr v12, v13

    .line 1640
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v6

    const-string v12, "%d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    const/4 v12, 0x0

    goto :goto_4d

    .line 1643
    :cond_b1
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1644
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    :goto_4b
    const/4 v12, 0x0

    :goto_4c
    const/4 v13, 0x0

    .line 1646
    :goto_4d
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_51

    .line 1648
    :cond_b2
    iget-boolean v13, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v13, :cond_b3

    .line 1649
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v8, 0x0

    :goto_4e
    const/4 v12, 0x0

    goto :goto_4f

    .line 1651
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

    .line 1652
    :cond_b4
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1654
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v12, :cond_b5

    const/16 v12, 0x63

    if-le v13, v12, :cond_b5

    const-string v12, "99+"

    goto :goto_4f

    :cond_b5
    new-array v12, v5, [Ljava/lang/Object;

    .line 1657
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "%d"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4f

    .line 1658
    :cond_b6
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v12, :cond_b7

    .line 1659
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object/from16 v12, v22

    goto :goto_4f

    .line 1662
    :cond_b7
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_4e

    .line 1664
    :goto_4f
    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-eqz v13, :cond_b8

    .line 1665
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const-string v13, "@"

    goto :goto_50

    .line 1668
    :cond_b8
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const/4 v13, 0x0

    .line 1670
    :goto_50
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v14, :cond_b9

    .line 1671
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_51

    .line 1673
    :cond_b9
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1677
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

    .line 1678
    :cond_ba
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 1679
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1680
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1681
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1682
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_58

    .line 1683
    :cond_bb
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 1684
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1685
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1686
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1687
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1688
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1689
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_58

    .line 1690
    :cond_bc
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 1691
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v8, :cond_be

    .line 1692
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

    .line 1693
    :cond_be
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v8, :cond_c2

    .line 1694
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

    .line 1696
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

    .line 1698
    :goto_57
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1699
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1700
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_58

    .line 1703
    :cond_c5
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1704
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1705
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1706
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1710
    :cond_c6
    :goto_58
    iput-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1711
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    .line 1712
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    move/from16 v26, v10

    if-nez v14, :cond_ca

    iget-wide v9, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v8, v9, v10, v5}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 1713
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1714
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1715
    iget v9, v8, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v10, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PROXY:I

    if-ne v9, v10, :cond_c7

    .line 1716
    sget v8, Lorg/telegram/messenger/R$string;->UseProxySponsor:I

    const-string v9, "UseProxySponsor"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_59

    .line 1717
    :cond_c7
    sget v10, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-ne v9, v10, :cond_ca

    .line 1718
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

    .line 1719
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 1720
    sget v9, Lorg/telegram/messenger/R$string;->PsaTypeDefault:I

    const-string v10, "PsaTypeDefault"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1722
    :cond_c8
    iget-object v10, v8, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c9

    .line 1723
    iget-object v2, v8, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    .line 1724
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    :cond_c9
    move-object v10, v9

    goto :goto_59

    :cond_ca
    move-object v10, v11

    .line 1729
    :goto_59
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_cc

    .line 1730
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

    .line 1732
    :cond_cc
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_d2

    .line 1733
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v9, :cond_ce

    .line 1734
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_cd

    new-array v8, v5, [Landroid/graphics/drawable/Drawable;

    .line 1735
    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1737
    :cond_cd
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v9, v8, v6

    .line 1738
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

    .line 1742
    :cond_ce
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v9, :cond_d1

    .line 1743
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_cf

    new-array v8, v5, [Landroid/graphics/drawable/Drawable;

    .line 1744
    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1746
    :cond_cf
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v9, v8, v6

    .line 1747
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

    .line 1749
    :cond_d1
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_5c

    .line 1751
    :cond_d2
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_d7

    .line 1752
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1753
    sget v8, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v9, "RepliesTitle"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5c

    .line 1754
    :cond_d3
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 1755
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v8, :cond_d4

    .line 1756
    sget v8, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v9, "FromYou"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5c

    .line 1758
    :cond_d4
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d5

    .line 1759
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1761
    :cond_d5
    sget v8, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v9, "SavedMessages"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1763
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isCloudContentHidden()Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 1764
    sget v2, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 1769
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

    .line 1772
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_cb

    .line 1773
    sget v8, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v9, "HiddenName"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5a

    :goto_5d
    if-eqz v0, :cond_da

    .line 1780
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 1781
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

    .line 1782
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_d9

    .line 1783
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

    .line 1785
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

    .line 1789
    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    .line 1790
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    const/4 v0, 0x0

    .line 1794
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1795
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_db

    .line 1796
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v5, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    goto :goto_5f

    .line 1798
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

    .line 1800
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

    .line 1804
    :goto_60
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_dd

    .line 1805
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

    .line 1807
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

    .line 1808
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v5

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1811
    :goto_61
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    const/16 v10, 0x1f

    const/16 v40, 0xc

    if-eqz v9, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v9

    if-nez v9, :cond_e2

    .line 1812
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v9, :cond_de

    .line 1813
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

    .line 1821
    :cond_df
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v9, :cond_e3

    .line 1822
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

    .line 1816
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

    .line 1819
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

    .line 1826
    :cond_e3
    :goto_64
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v9, :cond_e4

    .line 1827
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v11, v14

    sub-int/2addr v9, v11

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1829
    :cond_e4
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_e6

    .line 1830
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    .line 1831
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1832
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e5

    .line 1833
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    goto/16 :goto_65

    .line 1835
    :cond_e5
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    .line 1836
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_65

    .line 1838
    :cond_e6
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_ea

    .line 1839
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    .line 1840
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1841
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v14, :cond_e8

    .line 1842
    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v11, v14

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1843
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e7

    .line 1844
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v0, 0x40b00000    # 5.5f

    .line 1845
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v11, v0

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto :goto_65

    .line 1847
    :cond_e7
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v11, 0x40b00000    # 5.5f

    .line 1848
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v0, v11

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 1849
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

    .line 1852
    :cond_e8
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_e9

    .line 1853
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    goto :goto_65

    .line 1855
    :cond_e9
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v0, v5

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    .line 1856
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1861
    :cond_ea
    :goto_65
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_eb

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_eb

    const/16 v0, 0x24

    .line 1862
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1863
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1864
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_f1

    .line 1865
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_67

    .line 1867
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

    .line 1868
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

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

    goto :goto_67

    .line 1873
    :cond_ed
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_ee

    .line 1874
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

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
    :cond_ee
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_ef

    const/16 v0, 0x24

    .line 1880
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

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
    :cond_ef
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_f1

    .line 1886
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

    .line 1893
    :cond_f1
    :goto_67
    :try_start_2
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    if-gez v0, :cond_f2

    const/4 v0, 0x0

    .line 1897
    :cond_f2
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_f3

    .line 1898
    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    const/16 v6, 0x20

    const/16 v9, 0xa

    invoke-virtual {v14, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1901
    :cond_f3
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v9, :cond_f5

    .line 1902
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

    .line 1903
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    .line 1905
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

    .line 1906
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-nez v9, :cond_f7

    .line 1907
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v14

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v9, v11, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1909
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

    .line 1910
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_f8

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 1911
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

    .line 1916
    :goto_6a
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v6, :cond_f9

    .line 1917
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

    .line 1919
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

    .line 1921
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

    .line 1922
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

    .line 1924
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1927
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

    .line 1935
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_fc

    const/4 v0, 0x7

    .line 1936
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x11

    .line 1937
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/high16 v6, 0x41480000    # 12.5f

    .line 1938
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 1939
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 1940
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v6, 0x13

    .line 1941
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1942
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1943
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

    .line 1944
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

    .line 1946
    :cond_fc
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_102

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_fd

    goto/16 :goto_73

    :cond_fd
    const/16 v0, 0x9

    .line 1970
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x1f

    .line 1971
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v6, 0x10

    .line 1972
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v6, 0x27

    .line 1973
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v6, 0x27

    .line 1974
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 1975
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

    .line 1976
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1977
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

    .line 1979
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_100

    .line 1980
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 1981
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x40

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 1982
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

    .line 1984
    :cond_100
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    const/16 v9, 0xa

    .line 1985
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v10, 0x43

    .line 1986
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 1988
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

    .line 1989
    :goto_71
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v11, v9

    if-ge v6, v11, :cond_105

    .line 1990
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

    .line 1947
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v6, 0x20

    .line 1948
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v6, 0xd

    .line 1949
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v6, 0x2b

    .line 1950
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v6, 0x2b

    .line 1951
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v6, 0x2b

    .line 1952
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v6, 0xd

    .line 1953
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 1954
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1956
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_103

    const/16 v9, 0x10

    .line 1957
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 1958
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x42

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x1f

    .line 1959
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v10, v9, v11

    goto :goto_74

    .line 1961
    :cond_103
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    const/16 v9, 0xa

    .line 1962
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v10, 0x45

    .line 1963
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 1965
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

    .line 1966
    :goto_75
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v11, v9

    if-ge v6, v11, :cond_105

    .line 1967
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

    .line 1993
    :goto_77
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_106

    .line 1994
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 1996
    :cond_106
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1997
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_108

    .line 1998
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

    .line 2000
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_109

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_109

    .line 2001
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2002
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_107

    .line 2003
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

    .line 2004
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_109

    .line 2005
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2006
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_109

    .line 2007
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

    .line 2013
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2016
    :cond_109
    :goto_78
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v0, :cond_10c

    const/16 v9, 0x1f

    .line 2017
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    .line 2019
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_10b

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/16 v9, 0x22

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2022
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_123

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_123

    .line 2023
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/16 v9, 0xb

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2024
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v5, :cond_10a

    .line 2025
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

    .line 2026
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v5, :cond_123

    .line 2027
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2028
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v5, :cond_123

    .line 2029
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

    .line 2035
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2036
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2037
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2038
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_85

    :cond_10c
    if-nez v12, :cond_10f

    if-nez v13, :cond_10f

    .line 2040
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_10d

    goto :goto_79

    .line 2127
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2128
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    sub-int/2addr v6, v0

    .line 2130
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10e

    .line 2131
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2132
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2133
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_10e
    const/4 v5, 0x0

    .line 2136
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2137
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_85

    :cond_10f
    :goto_79
    if-eqz v12, :cond_113

    .line 2042
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

    .line 2043
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

    .line 2044
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    sub-int/2addr v6, v0

    .line 2046
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_111

    .line 2047
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v0, v9

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2049
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_112

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_112

    .line 2050
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2051
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_110

    .line 2052
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

    .line 2053
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_112

    .line 2054
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2055
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_112

    .line 2056
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_7a

    .line 2062
    :cond_111
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2063
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2064
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2065
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_112
    :goto_7a
    const/4 v9, 0x1

    .line 2067
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_7b

    :cond_113
    const/4 v9, 0x0

    .line 2069
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    :goto_7b
    if-eqz v13, :cond_119

    .line 2072
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_114

    .line 2073
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

    .line 2074
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

    .line 2076
    :cond_114
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2078
    :goto_7c
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    sub-int/2addr v6, v0

    .line 2080
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_116

    .line 2081
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

    .line 2083
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_118

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_118

    .line 2084
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v5

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    goto :goto_7f

    .line 2088
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

    .line 2089
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2090
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2091
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_118
    :goto_7f
    const/4 v9, 0x1

    .line 2093
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto :goto_80

    :cond_119
    const/4 v9, 0x0

    .line 2095
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2097
    :goto_80
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_123

    const/16 v0, 0x18

    .line 2098
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    .line 2100
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_11e

    .line 2101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/16 v9, 0x20

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v0, v10

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2102
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_11b

    .line 2103
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

    .line 2105
    :cond_11b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_11d

    .line 2106
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

    .line 2109
    :cond_11d
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_123

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_123

    .line 2110
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    goto :goto_85

    .line 2114
    :cond_11e
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2115
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_120

    .line 2116
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

    .line 2118
    :cond_120
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v5, :cond_122

    .line 2119
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

    .line 2121
    :cond_122
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2122
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2123
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_123
    :goto_85
    if-eqz v8, :cond_129

    if-nez v3, :cond_124

    move-object/from16 v3, v22

    .line 2145
    :cond_124
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0x96

    if-le v0, v5, :cond_125

    const/4 v8, 0x0

    .line 2146
    invoke-interface {v3, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2148
    :cond_125
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_126

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_127

    :cond_126
    if-eqz v2, :cond_128

    .line 2149
    :cond_127
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_86

    .line 2151
    :cond_128
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2153
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

    .line 2154
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_129

    .line 2155
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_129

    move-object v3, v0

    .line 2161
    :cond_129
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2162
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

    .line 2163
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 2164
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_12d

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_12c

    goto :goto_89

    :cond_12c
    const/16 v0, 0x27

    .line 2167
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_8a

    :cond_12d
    :goto_89
    const/16 v0, 0x22

    .line 2165
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    :goto_8a
    const/4 v0, 0x0

    .line 2169
    :goto_8b
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v8, v6

    if-ge v0, v8, :cond_137

    .line 2170
    aget-object v6, v6, v0

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 2172
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

    .line 2174
    :cond_130
    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_131

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 2175
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_131

    move-object v2, v0

    .line 2180
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

    .line 2182
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8c
    const/16 v0, 0x33

    .line 2184
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2185
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

    .line 2186
    :goto_8e
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v8

    if-ge v6, v9, :cond_137

    .line 2187
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

    .line 2190
    iput-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_135

    .line 2191
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_134

    goto :goto_8f

    :cond_134
    const/16 v0, 0x27

    .line 2198
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_92

    :cond_135
    :goto_8f
    const/16 v6, 0x20

    .line 2192
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2193
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

    .line 2194
    :goto_91
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v8

    if-ge v6, v9, :cond_137

    .line 2195
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

    .line 2202
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_138

    .line 2203
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2205
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

    .line 2209
    :try_start_4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    .line 2210
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 2211
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v2, 0x11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    move-object/from16 v6, v37

    invoke-static {v6, v0, v2, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2212
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v6, 0x1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2213
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

    .line 2214
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2215
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2216
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v1, v0, v2, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    goto :goto_93

    :cond_139
    const/4 v2, 0x0

    .line 2218
    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2223
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

    .line 2227
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

    .line 2230
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v3, v10

    const/4 v10, 0x0

    goto :goto_94

    :cond_13b
    if-nez v0, :cond_13c

    .line 2231
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_13d

    :cond_13c
    if-eqz v10, :cond_13f

    .line 2232
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

    .line 2233
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

    .line 2235
    :cond_13e
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v2, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2241
    :cond_13f
    :goto_94
    instance-of v0, v3, Landroid/text/Spannable;

    if-eqz v0, :cond_142

    .line 2242
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    .line 2243
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

    .line 2244
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

    .line 2245
    :cond_140
    invoke-interface {v0, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_141
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 2250
    :cond_142
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_145

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_143

    goto :goto_96

    .line 2256
    :cond_143
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_144

    .line 2257
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

    .line 2258
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_144

    .line 2259
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

    .line 2262
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

    .line 2251
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_146

    if-eqz v10, :cond_146

    const/4 v2, 0x5

    .line 2252
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 2254
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

    .line 2264
    :goto_98
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2265
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2266
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

    .line 2268
    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2269
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2273
    :goto_99
    :try_start_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 2274
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_149

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_148

    goto :goto_9a

    .line 2277
    :cond_148
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2278
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

    .line 2275
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

    .line 2282
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2284
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

    .line 2288
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_159

    .line 2289
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_152

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_152

    .line 2290
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 2291
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 2292
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2293
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v6, :cond_14b

    .line 2294
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2296
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

    .line 2297
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

    .line 2298
    :cond_14d
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v6, :cond_14e

    .line 2299
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

    .line 2300
    :cond_14e
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v6, :cond_14f

    .line 2301
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

    .line 2302
    :cond_14f
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v6, :cond_151

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

    :cond_151
    :goto_9d
    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_152

    .line 2306
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_152

    .line 2307
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v8, v0

    sub-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2311
    :cond_152
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_155

    .line 2312
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_155

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_9e
    if-ge v2, v0, :cond_154

    .line 2316
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_153

    .line 2318
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v5

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2319
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_153
    const/4 v3, 0x0

    :cond_154
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_155

    .line 2326
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2330
    :cond_155
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_158

    .line 2331
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_158

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_9f
    if-ge v2, v0, :cond_157

    .line 2335
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_156

    .line 2337
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v5

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2338
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_156
    const/4 v3, 0x0

    :cond_157
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_158

    .line 2345
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2349
    :cond_158
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_163

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_163

    .line 2350
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_163

    .line 2352
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v5, v5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_163

    .line 2354
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-double v7, v0

    sub-double/2addr v5, v2

    add-double/2addr v7, v5

    double-to-int v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_a2

    .line 2359
    :cond_159
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_15e

    .line 2360
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v0

    .line 2361
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v2, :cond_15a

    .line 2362
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2364
    :cond_15a
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_15c

    .line 2365
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 2366
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v5, :cond_15b

    .line 2367
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2371
    :cond_15b
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v6, v5

    cmpg-double v8, v2, v6

    if-gez v8, :cond_15c

    .line 2372
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v8, v5

    sub-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2375
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

    .line 2376
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

    .line 2379
    :cond_15e
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_160

    .line 2380
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_160

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v0, :cond_15f

    .line 2384
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 2386
    :cond_15f
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2389
    :cond_160
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_162

    .line 2390
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_162

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_a1
    if-ge v3, v0, :cond_161

    .line 2394
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 2396
    :cond_161
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2399
    :cond_162
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_163

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_163

    .line 2400
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2403
    :cond_163
    :goto_a2
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_166

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-ltz v2, :cond_166

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_166

    if-ltz v4, :cond_164

    add-int/lit8 v0, v4, 0x1

    .line 2405
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_164

    .line 2406
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2407
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_a3

    .line 2409
    :cond_164
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2410
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_a3
    cmpg-float v3, v2, v0

    if-gez v3, :cond_165

    .line 2413
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    goto :goto_a4

    .line 2415
    :cond_165
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

    .line 2418
    :cond_166
    :goto_a4
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

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 277
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

    .line 5031
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    return v0
.end method

.method public getCurrentDialogFolderId()I
    .locals 1

    .line 5047
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 693
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public getHasUnread()Z
    .locals 1

    .line 850
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

    .line 854
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 858
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

    .line 5055
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 697
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    return v0
.end method

.method public getMessageNameString()Ljava/lang/String;
    .locals 8

    .line 4815
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4821
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    .line 4822
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4823
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

    .line 4825
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4828
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4829
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4830
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

    .line 4831
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4832
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

    .line 4835
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 4842
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4836
    :cond_6
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4837
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v1, "HiddenName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4839
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

    .line 4844
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4845
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

    .line 4853
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 4854
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x1

    .line 4855
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 4856
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v6, :cond_1

    new-array v2, v7, [Ljava/lang/CharSequence;

    aput-object p2, v2, v8

    aput-object p3, v2, v5

    .line 4857
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4858
    :cond_1
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v10, :cond_6

    .line 4860
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v3, :cond_2

    goto :goto_1

    .line 4863
    :cond_2
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 4865
    :cond_3
    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 4866
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 4867
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v8

    instance-of v2, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v2, :cond_5

    .line 4868
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

    .line 4870
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    check-cast v3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 4874
    :cond_4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 4875
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_5
    :goto_2
    if-eqz p4, :cond_2e

    .line 4878
    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_c

    :cond_6
    const-string v10, ": "

    const/16 v11, 0x82

    const/16 v12, 0x108

    const-string v13, ""

    const/16 v14, 0x96

    if-eqz v2, :cond_14

    .line 4880
    iget-object v15, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v15, :cond_14

    .line 4882
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4884
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v6, :cond_7

    goto :goto_3

    .line 4886
    :cond_7
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v13, "\ud83d\udcf9 "

    goto :goto_3

    .line 4888
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v13, "\ud83c\udfa4 "

    goto :goto_3

    .line 4890
    :cond_9
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v13, "\ud83c\udfa7 "

    goto :goto_3

    .line 4892
    :cond_a
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v13, "\ud83d\uddbc "

    goto :goto_3

    :cond_b
    const-string v13, "\ud83d\udcce "

    .line 4897
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 4898
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    .line 4902
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v4, v4, 0x17

    add-int/lit8 v4, v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 4903
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v4, :cond_d

    .line 4904
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    int-to-float v3, v3

    .line 4905
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :cond_c
    int-to-float v3, v3

    .line 4907
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :cond_d
    if-lez v3, :cond_e

    .line 4910
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v2, v3, v4, v11}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4912
    :cond_e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4914
    :cond_f
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v14, :cond_10

    .line 4915
    invoke-interface {v3, v8, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4917
    :cond_10
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4918
    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-static {v9, v3, v6, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 4919
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_12

    .line 4920
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    :goto_4
    invoke-static {v2, v6, v4}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 4922
    :cond_12
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-eqz p4, :cond_13

    .line 4924
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_13
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 4926
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_c

    .line 4928
    :cond_14
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v9, 0xa

    if-eqz v2, :cond_23

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 4929
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v4

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 4932
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const-string v10, "chats_actionMessage"

    const/16 v11, 0x12

    const-string v12, "chats_attachMessage"

    if-eqz v6, :cond_16

    .line 4933
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 4934
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_15

    new-array v2, v5, [Ljava/lang/Object;

    .line 4935
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_15
    new-array v2, v5, [Ljava/lang/Object;

    .line 4937
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83d\udcca %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 4939
    :cond_16
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_18

    .line 4940
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_17

    new-array v2, v5, [Ljava/lang/Object;

    .line 4941
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_17
    new-array v2, v5, [Ljava/lang/Object;

    .line 4943
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "\ud83c\udfae %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 4945
    :cond_18
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v6, :cond_19

    .line 4946
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    :goto_5
    move-object v10, v12

    goto :goto_8

    .line 4947
    :cond_19
    iget v4, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1b

    .line 4948
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_1a

    new-array v3, v7, [Ljava/lang/Object;

    .line 4949
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

    .line 4951
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

    .line 4953
    :cond_1b
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le v2, v5, :cond_1f

    .line 4954
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v2, :cond_1d

    .line 4955
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

    .line 4957
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

    .line 4961
    :cond_1f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    const/16 v3, 0x20

    .line 4964
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_20

    .line 4967
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_20
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 4969
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 4970
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4972
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

    .line 4974
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_22
    :goto_9
    move-object v0, v2

    goto/16 :goto_c

    .line 4977
    :cond_23
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 4979
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4980
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/String;

    if-eqz v2, :cond_24

    move-object v3, v2

    .line 4983
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x17

    add-int/2addr v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 4984
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v6, :cond_26

    .line 4985
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    int-to-float v2, v2

    .line 4986
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v2, v6

    float-to-int v2, v2

    :cond_25
    int-to-float v2, v2

    .line 4988
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v2, v6

    float-to-int v2, v2

    :cond_26
    if-lez v2, :cond_29

    .line 4991
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

    .line 4994
    :cond_27
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v14, :cond_28

    .line 4995
    invoke-interface {v3, v8, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4997
    :cond_28
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4999
    :cond_29
    :goto_a
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5000
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3, v2, v12}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 5001
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2b

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_2b

    .line 5002
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

    .line 5005
    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2c
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object p3, v3, v5

    .line 5007
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_c

    .line 5009
    :cond_2d
    invoke-static {v13}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_2e
    :goto_c
    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 3126
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

    .line 4583
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4586
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4584
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

    .line 5051
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

    .line 2697
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

    .line 2545
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

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 3

    .line 2617
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 2618
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

    .line 2620
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

    .line 737
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 739
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 740
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 744
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 745
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 706
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 707
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 708
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    const/4 v1, 0x0

    .line 709
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 711
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

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v2, 0x0

    .line 713
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 714
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 716
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_2

    .line 717
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 718
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 719
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 720
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 721
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 723
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_3

    .line 724
    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->remove(J)V

    .line 726
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 727
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 729
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    .line 3164
    iget-wide v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_0

    return-void

    .line 3170
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

    .line 3171
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_2

    .line 3172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3173
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3174
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v8, v15, v15, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3175
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    .line 3181
    :cond_3
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/16 v12, 0x18

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v12, :cond_4

    .line 3182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3183
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

    .line 3187
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

    .line 3353
    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_6

    .line 3354
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3355
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3356
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    .line 3357
    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3358
    iput-boolean v15, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    :cond_6
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    goto/16 :goto_8

    .line 3188
    :cond_7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3189
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3193
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const-string v4, "chats_archivePinBackground"

    const-string v3, "chats_archiveBackground"

    if-eqz v0, :cond_8

    .line 3194
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:Ljava/lang/String;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3195
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:Ljava/lang/String;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3196
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3197
    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    move v12, v1

    move v1, v6

    move-object v6, v2

    goto/16 :goto_3

    .line 3198
    :cond_8
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_a

    .line 3199
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_9

    .line 3200
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3201
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3202
    sget v6, Lorg/telegram/messenger/R$string;->UnhideFromTop:I

    const-string v2, "UnhideFromTop"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3203
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3205
    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3206
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3207
    sget v6, Lorg/telegram/messenger/R$string;->HideOnTop:I

    const-string v2, "HideOnTop"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3208
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3211
    :cond_a
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    if-eqz v0, :cond_b

    .line 3212
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3213
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3214
    sget v6, Lorg/telegram/messenger/R$string;->PsaHide:I

    const-string v2, "PsaHide"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3215
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3216
    :cond_b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-nez v0, :cond_14

    .line 3217
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3218
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3219
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v10, :cond_d

    .line 3220
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_c

    .line 3221
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnmute:I

    const-string v2, "SwipeUnmute"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3222
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnmuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3224
    :cond_c
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMute:I

    const-string v2, "SwipeMute"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3225
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeMuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3227
    :cond_d
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v7, :cond_e

    .line 3228
    sget v6, Lorg/telegram/messenger/R$string;->SwipeDeleteChat:I

    const-string v0, "SwipeDeleteChat"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3229
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v12, "dialogSwipeRemove"

    invoke-static {v12, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3230
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeDeleteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3231
    :cond_e
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v14, :cond_11

    .line 3232
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-gtz v2, :cond_10

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v2, :cond_f

    goto :goto_2

    .line 3236
    :cond_f
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsUnread:I

    const-string v2, "SwipeMarkAsUnread"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3237
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnreadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3233
    :cond_10
    :goto_2
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsRead:I

    const-string v2, "SwipeMarkAsRead"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3234
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeReadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3239
    :cond_11
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-nez v2, :cond_13

    .line 3240
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3241
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnpin:I

    const-string v2, "SwipeUnpin"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3242
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnpinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3244
    :cond_12
    sget v6, Lorg/telegram/messenger/R$string;->SwipePin:I

    const-string v2, "SwipePin"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3245
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipePinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3248
    :cond_13
    sget v6, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v2, "Archive"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3249
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3252
    :cond_14
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3253
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3254
    sget v6, Lorg/telegram/messenger/R$string;->Unarchive:I

    const-string v2, "Unarchive"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3255
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unarchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3259
    :goto_3
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-eqz v2, :cond_15

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_15

    .line 3260
    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3261
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    goto :goto_4

    .line 3263
    :cond_15
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3264
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    :goto_4
    move v2, v1

    .line 3267
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

    .line 3268
    iput-boolean v14, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3269
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3270
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3271
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3274
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v10, v1

    .line 3275
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_18

    .line 3276
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3277
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

    .line 3278
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_19

    .line 3279
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-eqz v1, :cond_17

    .line 3280
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Arrow.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3281
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3283
    :cond_17
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-eqz v1, :cond_19

    .line 3284
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3285
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Line 1.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3286
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Line 2.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3287
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Line 3.**"

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3288
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3289
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_5

    :cond_18
    move v7, v2

    move-object/from16 v18, v4

    move-object/from16 v29, v6

    const/4 v14, 0x2

    .line 3293
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

    .line 3294
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x36

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v14

    .line 3295
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v14

    add-int/2addr v2, v0

    .line 3296
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v14

    add-int/2addr v3, v1

    .line 3298
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_1b

    .line 3299
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3300
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

    .line 3301
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    mul-int v4, v2, v2

    .line 3303
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

    .line 3304
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    invoke-virtual {v5, v6}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3307
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-nez v2, :cond_1a

    .line 3308
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Arrow.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 3309
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3311
    :cond_1a
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-nez v2, :cond_1b

    .line 3312
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3313
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 1.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3314
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 2.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3315
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Line 3.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3316
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 v2, 0x1

    .line 3317
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    .line 3321
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    int-to-float v2, v1

    .line 3322
    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3323
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v2, v0, v13

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1c

    cmpl-float v2, v0, v12

    if-eqz v2, :cond_1c

    .line 3324
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v12

    .line 3325
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

    .line 3327
    :cond_1c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v15, v15}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3328
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3331
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v10, v13, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3333
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, v29

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 3335
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    if-ne v3, v7, :cond_1d

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 3336
    :cond_1d
    iput v7, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    .line 3337
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iput v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    .line 3338
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

    .line 3340
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1e

    .line 3341
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

    .line 3345
    :cond_1e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_20

    .line 3346
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3347
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

    .line 3348
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

    .line 3349
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_20
    const/4 v7, 0x4

    .line 3352
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3361
    :goto_8
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_21

    .line 3362
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3363
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3366
    :cond_21
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    mul-float v0, v0, v1

    .line 3367
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_22

    .line 3368
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

    .line 3369
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3370
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3373
    :cond_22
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const-string v10, "chats_pinnedOverlay"

    if-eqz v1, :cond_24

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_23

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_24

    .line 3374
    :cond_23
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-static {v15, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3375
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3376
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

    .line 3377
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_25

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_26

    .line 3378
    :cond_25
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3379
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3380
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

    .line 3383
    :cond_26
    :goto_9
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->updateAnimationValues()V

    .line 3385
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_27

    .line 3386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3387
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3390
    :cond_27
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v19, 0x16

    const-string v6, "windowBackgroundWhite"

    const/16 v20, 0xa

    const v21, 0x3dda740e

    cmpl-float v2, v1, v12

    if-eqz v2, :cond_bc

    const/high16 v22, 0x437f0000    # 255.0f

    cmpl-float v2, v1, v13

    if-eqz v2, :cond_29

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 3393
    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 3394
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v14, :cond_28

    .line 3395
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

    .line 3397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3398
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

    .line 3400
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

    .line 3403
    :goto_b
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_2a

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_30

    .line 3404
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3406
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3407
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

    .line 3408
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3409
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3411
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_2b

    .line 3412
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3415
    :cond_2b
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_2d

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_2c

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2d

    .line 3416
    :cond_2c
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-static {v15, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3417
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3418
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 3419
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_2f

    .line 3420
    :cond_2e
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3421
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3422
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3424
    :cond_2f
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3427
    :cond_30
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_31

    .line 3428
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v1, v0, v12

    if-gez v1, :cond_33

    add-float v0, v0, v21

    .line 3429
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_32

    .line 3431
    iput v12, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    goto :goto_d

    .line 3435
    :cond_31
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_33

    sub-float v0, v0, v21

    .line 3436
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_32

    .line 3438
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    :cond_32
    :goto_d
    const/16 v24, 0x1

    goto :goto_e

    :cond_33
    const/16 v24, 0x0

    .line 3445
    :goto_e
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_34

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_35

    .line 3446
    :cond_34
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_35

    .line 3447
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3448
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3451
    :cond_35
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_42

    .line 3452
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_38

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_38

    .line 3453
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_36

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_36

    .line 3454
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    .line 3455
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

    .line 3456
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_f

    .line 3457
    :cond_36
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_37

    .line 3458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    .line 3459
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

    .line 3460
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

    .line 3462
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

    .line 3463
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

    .line 3465
    :goto_11
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_39

    .line 3466
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

    .line 3467
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

    .line 3470
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

    .line 3468
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

    .line 3472
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3474
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_3d

    .line 3475
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

    .line 3477
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

    .line 3478
    :goto_16
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3479
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

    .line 3480
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3481
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_41

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_41

    .line 3482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3483
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_40

    .line 3484
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 3485
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

    .line 3487
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

    .line 3488
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3490
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3491
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

    .line 3496
    :goto_18
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_43

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_44

    .line 3497
    :cond_43
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_44

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_44

    .line 3498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3499
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3500
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3501
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3504
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3505
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3507
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

    .line 3508
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3509
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

    .line 3505
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3511
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19

    :cond_45
    const/4 v6, 0x2

    .line 3514
    :goto_19
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_49

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_49

    .line 3515
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_46

    .line 3516
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_nameMessageArchived_threeLines"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1a

    .line 3517
    :cond_46
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v0, :cond_47

    .line 3518
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_draft"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1a

    .line 3520
    :cond_47
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_nameMessage_threeLines"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3522
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3523
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3525
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_48

    .line 3527
    :try_start_0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3528
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

    .line 3530
    :goto_1b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_48
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3532
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1d

    :cond_49
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3535
    :goto_1d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5b

    .line 3536
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_4b

    .line 3537
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4a

    .line 3538
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

    .line 3540
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

    .line 3543
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

    .line 3546
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    .line 3547
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v10, :cond_4c

    .line 3548
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v11, v11, v3

    sub-float/2addr v10, v11

    goto :goto_1f

    .line 3550
    :cond_4c
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v11, v11, v3

    add-float/2addr v10, v11

    .line 3552
    :goto_1f
    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_50

    .line 3553
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3554
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3555
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v14

    .line 3556
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

    .line 3558
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_4e

    .line 3559
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3561
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3562
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3563
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3564
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

    .line 3565
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    .line 3567
    :goto_20
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_4f

    .line 3568
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3569
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3570
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

    .line 3573
    :goto_21
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_4d
    move v7, v14

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3576
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3577
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

    .line 3579
    :cond_4f
    :goto_22
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3580
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_23

    :cond_50
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3583
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3584
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v7, :cond_51

    .line 3585
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v6, v0

    mul-float v0, v0, v3

    add-float/2addr v7, v0

    goto :goto_24

    .line 3587
    :cond_51
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v6, v0

    mul-float v0, v0, v3

    sub-float/2addr v7, v0

    .line 3589
    :goto_24
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3591
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_52

    .line 3592
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_52

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v7, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_52

    .line 3593
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 3594
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    int-to-float v10, v0

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3595
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3596
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3598
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3600
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

    .line 3601
    :cond_54
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 3602
    :goto_25
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 3604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const-string v10, "chats_actionMessage"

    .line 3605
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    .line 3606
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

    .line 3607
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v11, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v11, :cond_55

    .line 3608
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v6, v10

    mul-float v3, v3, v10

    add-float/2addr v11, v3

    goto :goto_26

    .line 3610
    :cond_55
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v6, v10

    mul-float v3, v3, v10

    sub-float/2addr v11, v3

    .line 3613
    :goto_26
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_56

    .line 3614
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

    .line 3619
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

    .line 3617
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

    .line 3621
    :goto_29
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3622
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3623
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2a

    :cond_5a
    const/4 v3, 0x4

    goto :goto_2a

    :cond_5b
    const/4 v3, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3628
    :goto_2a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_64

    .line 3629
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3630
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5c

    .line 3631
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 3633
    :cond_5c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_5d

    .line 3634
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 3635
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 3640
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 3647
    :cond_5d
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_61

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_61

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_61

    .line 3648
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

    .line 3649
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    if-nez v0, :cond_60

    .line 3650
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 3651
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_5f

    if-lez v0, :cond_5f

    .line 3652
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v7, v11

    int-to-float v7, v7

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

    .line 3653
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v7, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3654
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5f

    .line 3655
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3659
    :cond_5f
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

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

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

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

    .line 3660
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v7, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3661
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    goto :goto_2c

    :cond_60
    const/16 v25, 0x2

    .line 3663
    :goto_2c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 3665
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x7d

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3666
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

    .line 3667
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2d

    :cond_61
    const/16 v25, 0x2

    .line 3671
    :goto_2d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v7

    sub-float/2addr v0, v7

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v7, v7

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3672
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 3674
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3675
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3676
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3677
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

    .line 3678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v15, 0x0

    .line 3680
    :goto_2e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_63

    .line 3681
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3682
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3683
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    :catch_4
    move-exception v0

    .line 3686
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 3689
    :cond_62
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3690
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

    .line 3692
    :cond_63
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_30

    :cond_64
    const/16 v25, 0x2

    .line 3696
    :goto_30
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_65

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_74

    .line 3697
    :cond_65
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_74

    .line 3698
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

    .line 3699
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    if-ltz v10, :cond_68

    if-eq v10, v0, :cond_68

    iget-boolean v11, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-nez v11, :cond_68

    .line 3700
    invoke-direct {v9, v10, v0}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    .line 3702
    :cond_68
    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-eqz v10, :cond_69

    .line 3703
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

    .line 3711
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

    .line 3715
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

    .line 3717
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

    .line 3718
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

    .line 3721
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    .line 3723
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

    .line 3726
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

    .line 3728
    :goto_3e
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v1, v10, :cond_77

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v1, :cond_9f

    .line 3729
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

    .line 3730
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_7a

    add-float v1, v1, v21

    .line 3731
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v1, v15

    if-lez v0, :cond_79

    .line 3733
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_3f

    .line 3735
    :cond_79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3f

    :cond_7a
    if-nez v0, :cond_7c

    .line 3737
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7c

    sub-float v0, v0, v21

    .line 3738
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7b

    .line 3740
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_3f

    .line 3742
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3745
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

    .line 3746
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

    .line 3748
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_82

    .line 3749
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

    .line 3751
    :cond_82
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3753
    :goto_45
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_85

    .line 3754
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

    .line 3756
    :cond_85
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3757
    :goto_48
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_87

    .line 3758
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3759
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

    .line 3760
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_86

    .line 3761
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3762
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3763
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_49

    .line 3765
    :cond_86
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3766
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3767
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3769
    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5c

    .line 3771
    :cond_87
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_88

    .line 3772
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3774
    :cond_88
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3778
    :cond_89
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_90

    .line 3780
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_8a

    .line 3781
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4c

    .line 3783
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

    .line 3785
    :goto_4c
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v0, :cond_8d

    .line 3786
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4f

    .line 3788
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

    .line 3789
    :goto_4f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3790
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3791
    :cond_90
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_98

    .line 3792
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_95

    .line 3793
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v2, 0x2

    .line 3794
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 3795
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

    .line 3796
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 3797
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

    .line 3793
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3799
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chats_verifiedBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 3800
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5c

    .line 3802
    :cond_95
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    .line 3803
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

    .line 3804
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5c

    .line 3806
    :cond_98
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_9f

    .line 3808
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v1, :cond_9a

    if-ne v0, v13, :cond_99

    .line 3809
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_56

    :cond_99
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    .line 3810
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

    .line 3812
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

    .line 3813
    :goto_5a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-ne v0, v13, :cond_9e

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5b

    :cond_9e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_5b
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScamDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3817
    :cond_9f
    :goto_5c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v10, :cond_a0

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_a2

    .line 3818
    :cond_a0
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_a1

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a2

    .line 3819
    :cond_a1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3820
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3821
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3824
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

    .line 3825
    :cond_a4
    :goto_5e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/16 v11, 0x17

    const/high16 v12, 0x41380000    # 11.5f

    if-eqz v0, :cond_a5

    .line 3826
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3827
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

    .line 3828
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v1, v12

    mul-float v1, v1, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3829
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

    .line 3830
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5d

    .line 3831
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

    .line 3880
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 3881
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3882
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3883
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5d

    .line 3833
    :cond_a9
    :goto_5f
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_aa

    .line 3834
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    goto :goto_60

    .line 3836
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

    .line 3838
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

    .line 3839
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v1, :cond_af

    .line 3840
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v2

    mul-float v5, v5, v22

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3842
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3843
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

    .line 3844
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eqz v0, :cond_ad

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_61

    :cond_ad
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 3845
    :goto_61
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float v2, v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3846
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_ae

    .line 3847
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3849
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3850
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3851
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3852
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_62

    .line 3854
    :cond_ae
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3856
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

    .line 3857
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3861
    :cond_af
    :goto_62
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_b0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_b3

    .line 3863
    :cond_b0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3865
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3866
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

    .line 3867
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 3869
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3870
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_b2

    .line 3871
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v2, :cond_b1

    goto :goto_63

    :cond_b1
    sub-float v1, v15, v1

    .line 3872
    :goto_63
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v10, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3874
    :cond_b2
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float v2, v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3875
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v15, v1

    mul-float v5, v5, v22

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3876
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

    .line 3877
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3878
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3887
    :cond_b3
    :goto_64
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-nez v0, :cond_bb

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isCloudContentHidden()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 3888
    :cond_b4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_bb

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v1, v0, v15

    if-eqz v1, :cond_bb

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b6

    sub-float v5, v15, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3892
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

    .line 3894
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v0, :cond_b5

    const/16 v0, 0xe

    .line 3895
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_65

    :cond_b5
    const/16 v0, 0xe

    .line 3897
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    :goto_65
    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 3899
    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b6
    const/4 v0, 0x0

    .line 3901
    :goto_66
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v0, v1, :cond_ba

    .line 3902
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_b7

    .line 3903
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3fab851f    # 1.34f

    .line 3904
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

    .line 3905
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 3907
    :cond_b7
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 3908
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 3909
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    .line 3910
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    .line 3911
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    .line 3907
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3913
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 3915
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v14

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 3916
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    aget v3, v3, v13

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    .line 3913
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3919
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3920
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_b8

    .line 3921
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 3922
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

    .line 3924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3925
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3928
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

    .line 3929
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

    .line 3930
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 3931
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3933
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3935
    :cond_b8
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b9

    .line 3936
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

    .line 3937
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

    .line 3938
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3939
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_66

    .line 3943
    :cond_ba
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_bb

    .line 3944
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_bb
    move/from16 v3, v39

    const/4 v1, -0x1

    if-eq v3, v1, :cond_bd

    .line 3949
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_67

    :cond_bc
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

    .line 3953
    :cond_bd
    :goto_67
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_be

    .line 3954
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3955
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v2, 0x432a0000    # 170.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v15

    .line 3956
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v10, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3959
    :cond_be
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    if-eqz v0, :cond_c1

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_bf

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_c0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_c0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v13, :cond_c0

    :cond_bf
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 3960
    :cond_c0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3963
    :cond_c1
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_c2

    .line 3964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3967
    :cond_c2
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_101

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_101

    .line 3968
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-lez v0, :cond_c3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_c3

    const/4 v0, 0x1

    goto :goto_68

    :cond_c3
    const/4 v0, 0x0

    :goto_68
    iput-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    .line 3969
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_ce

    if-nez v0, :cond_c4

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ce

    .line 3970
    :cond_c4
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TimerDrawable;->getTime()I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-eq v0, v1, :cond_c6

    if-lez v1, :cond_c6

    .line 3971
    :cond_c5
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-static {v0}, Lorg/telegram/ui/Components/TimerDrawable;->getTtlIconForDialogs(I)Lorg/telegram/ui/Components/TimerDrawable;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 3973
    :cond_c6
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c7

    .line 3974
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    .line 3975
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x32000000

    .line 3976
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3978
    :cond_c7
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 3980
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c8

    .line 3981
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_69

    .line 3983
    :cond_c8
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_69
    float-to-int v1, v1

    .line 3985
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 3986
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 3985
    invoke-virtual {v2, v14, v14, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3989
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    .line 3990
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->updateThumbShaderMatrix()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 3991
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v2, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_cc

    .line 3992
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6a

    .line 3995
    :cond_c9
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3996
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_ca

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 3997
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6a

    .line 3998
    :cond_ca
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v2, :cond_cb

    .line 3999
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 4000
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v2, v2, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/GradientTools;->getAverageColor()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6a

    .line 4002
    :cond_cb
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4005
    :cond_cc
    :goto_6a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4006
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v15, v3

    mul-float v2, v2, v5

    .line 4007
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v3, :cond_cd

    .line 4008
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v3

    sub-float v5, v15, v3

    mul-float v2, v2, v5

    :cond_cd
    int-to-float v1, v1

    int-to-float v0, v0

    .line 4010
    invoke-virtual {v10, v2, v2, v1, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 4011
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 4012
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4013
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41300000    # 11.0f

    .line 4014
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4015
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/TimerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4016
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4017
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4019
    :cond_ce
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_dd

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_dd

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_dd

    .line 4020
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_d0

    .line 4021
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_cf

    goto :goto_6b

    :cond_cf
    move-object/from16 v11, v40

    goto/16 :goto_76

    .line 4022
    :cond_d0
    :goto_6b
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_d2

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_d1

    goto :goto_6c

    :cond_d1
    const/16 v11, 0x8

    goto :goto_6d

    :cond_d2
    :goto_6c
    const/4 v11, 0x6

    :goto_6d
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 4024
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d5

    .line 4025
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_d4

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_d3

    goto :goto_6e

    :cond_d3
    const/4 v5, 0x6

    goto :goto_6f

    :cond_d4
    :goto_6e
    const/16 v5, 0xa

    :goto_6f
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_72

    .line 4027
    :cond_d5
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v2

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_d7

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_d6

    goto :goto_70

    :cond_d6
    const/4 v5, 0x6

    goto :goto_71

    :cond_d7
    :goto_70
    const/16 v5, 0xa

    :goto_71
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :goto_72
    float-to-int v2, v2

    .line 4030
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v11, v40

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4032
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_d8

    .line 4033
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

    goto :goto_73

    :cond_d8
    int-to-float v3, v2

    int-to-float v4, v1

    const/4 v5, 0x7

    .line 4035
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v5, v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4036
    :goto_73
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "chats_onlineCircle"

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4038
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v3, :cond_d9

    .line 4039
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

    goto :goto_74

    :cond_d9
    int-to-float v2, v2

    int-to-float v1, v1

    .line 4041
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_74
    if-eqz v0, :cond_da

    .line 4043
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_dc

    add-float v0, v0, v21

    .line 4044
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_db

    .line 4046
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    goto :goto_75

    .line 4051
    :cond_da
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_dc

    sub-float v0, v0, v21

    .line 4052
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_db

    .line 4054
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    :cond_db
    :goto_75
    const/16 v24, 0x1

    :cond_dc
    :goto_76
    move/from16 v14, v24

    const/4 v7, 0x5

    goto/16 :goto_87

    :cond_dd
    move-object/from16 v11, v40

    .line 4060
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_fc

    .line 4061
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_de

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v0, :cond_de

    const/4 v0, 0x1

    goto :goto_77

    :cond_de
    const/4 v0, 0x0

    :goto_77
    iput-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_df

    .line 4062
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_fc

    :cond_df
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpg-float v0, v0, v15

    if-gez v0, :cond_fc

    .line 4063
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v0

    sub-float v5, v15, v0

    goto :goto_78

    :cond_e0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 4064
    :goto_78
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_e2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_e1

    goto :goto_79

    :cond_e1
    const/16 v1, 0x8

    goto :goto_7a

    :cond_e2
    :goto_79
    const/4 v1, 0x6

    :goto_7a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4066
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e5

    .line 4067
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_e4

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_e3

    goto :goto_7b

    :cond_e3
    const/4 v2, 0x6

    goto :goto_7c

    :cond_e4
    :goto_7b
    const/16 v2, 0xa

    :goto_7c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_7f

    .line 4069
    :cond_e5
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_e7

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_e6

    goto :goto_7d

    :cond_e6
    const/4 v2, 0x6

    goto :goto_7e

    :cond_e7
    :goto_7d
    const/16 v2, 0xa

    :goto_7e
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_7f
    float-to-int v1, v1

    .line 4072
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v2, :cond_e9

    .line 4073
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4074
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e8

    .line 4075
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_80

    .line 4077
    :cond_e8
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_80
    float-to-int v1, v1

    .line 4082
    :cond_e9
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_ea

    .line 4083
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4084
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v2, v15, v2

    int-to-float v3, v1

    int-to-float v4, v0

    .line 4085
    invoke-virtual {v10, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4087
    :cond_ea
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v1

    int-to-float v0, v0

    const/16 v3, 0xb

    .line 4088
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v3, v3, v4

    mul-float v3, v3, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4089
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v6, "chats_onlineCircle"

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x9

    .line 4090
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v3, v3, v4

    mul-float v3, v3, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4091
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4095
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v3

    if-eqz v3, :cond_eb

    const v3, 0x3f266666    # 0.65f

    .line 4096
    iput v3, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4098
    :cond_eb
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    if-nez v3, :cond_ec

    .line 4099
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    .line 4100
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v6, v7

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_81
    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    :goto_82
    move v6, v4

    const/4 v4, 0x3

    :goto_83
    const/4 v7, 0x5

    goto/16 :goto_84

    :cond_ec
    if-ne v3, v13, :cond_ed

    .line 4102
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    sub-float/2addr v3, v4

    .line 4103
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    goto :goto_82

    :cond_ed
    const/4 v4, 0x2

    if-ne v3, v4, :cond_ee

    .line 4105
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    .line 4106
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_81

    :cond_ee
    const/4 v4, 0x3

    if-ne v3, v4, :cond_ef

    .line 4108
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

    .line 4109
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v6, v8

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v8

    add-float/2addr v6, v7

    goto :goto_83

    :cond_ef
    const/4 v6, 0x4

    if-ne v3, v6, :cond_f0

    .line 4111
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    .line 4112
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

    goto/16 :goto_83

    :cond_f0
    const/4 v7, 0x5

    if-ne v3, v7, :cond_f1

    .line 4114
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v8, v8, v12

    sub-float/2addr v3, v8

    .line 4115
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v12

    add-float/2addr v6, v8

    goto :goto_84

    :cond_f1
    const/4 v8, 0x6

    if-ne v3, v8, :cond_f2

    .line 4117
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v8, v8, v12

    add-float/2addr v3, v8

    .line 4118
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v12

    sub-float v6, v8, v6

    goto :goto_84

    .line 4120
    :cond_f2
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float v6, v6, v8

    sub-float/2addr v3, v6

    .line 4121
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

    .line 4124
    :goto_84
    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v8, v8, v15

    if-ltz v8, :cond_f3

    cmpg-float v8, v5, v15

    if-gez v8, :cond_f4

    .line 4125
    :cond_f3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4126
    iget v8, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v12, v8, v5

    mul-float v8, v8, v5

    invoke-virtual {v10, v12, v8, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4128
    :cond_f4
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

    .line 4129
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4131
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

    .line 4132
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v6, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4134
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

    .line 4135
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4136
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v0, v0, v15

    if-ltz v0, :cond_f5

    cmpg-float v0, v5, v15

    if-gez v0, :cond_f6

    .line 4137
    :cond_f5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4140
    :cond_f6
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v0

    if-nez v0, :cond_f8

    .line 4141
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const v1, 0x3d23d70a    # 0.04f

    add-float/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    cmpl-float v0, v0, v15

    if-ltz v0, :cond_f7

    const/4 v1, 0x0

    .line 4143
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4144
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    add-int/2addr v0, v13

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_f7

    const/4 v1, 0x0

    .line 4146
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    :cond_f7
    const/4 v14, 0x1

    goto :goto_85

    :cond_f8
    move/from16 v14, v24

    .line 4152
    :goto_85
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v0, :cond_fa

    .line 4153
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_f9

    add-float v0, v0, v21

    .line 4154
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_f9

    .line 4156
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    :cond_f9
    const/4 v1, 0x0

    goto :goto_86

    .line 4160
    :cond_fa
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_fb

    sub-float v0, v0, v21

    .line 4161
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_fb

    .line 4163
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    .line 4169
    :cond_fb
    :goto_86
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_fd

    .line 4170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_87

    :cond_fc
    const/4 v7, 0x5

    move/from16 v14, v24

    .line 4175
    :cond_fd
    :goto_87
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v0, :cond_ff

    .line 4176
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_fe

    add-float v0, v0, v21

    .line 4177
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    goto :goto_88

    :cond_fe
    const/4 v1, 0x0

    goto :goto_89

    .line 4181
    :cond_ff
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_100

    sub-float v0, v0, v21

    .line 4182
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    :goto_88
    const/4 v14, 0x1

    .line 4186
    :cond_100
    :goto_89
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    invoke-static {v0, v15, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    goto :goto_8a

    :cond_101
    move-object/from16 v11, v40

    const/4 v1, 0x0

    const/4 v7, 0x5

    move/from16 v14, v24

    .line 4189
    :goto_8a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_106

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_106

    .line 4191
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_102

    .line 4192
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    :goto_8b
    move v3, v0

    goto :goto_8c

    .line 4194
    :cond_102
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_104

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_104

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_104

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_103

    const/4 v0, 0x1

    goto :goto_8b

    :cond_103
    const/4 v0, 0x0

    goto :goto_8b

    :cond_104
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    goto :goto_8b

    .line 4196
    :goto_8c
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

    .line 4197
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

    .line 4198
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

    .line 4200
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz v4, :cond_105

    .line 4201
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 4202
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4203
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_105
    move v5, v0

    move v6, v1

    move v4, v2

    .line 4206
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 4209
    :cond_106
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_107

    .line 4210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4213
    :cond_107
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_108

    .line 4214
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4216
    :cond_108
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_109

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_10a

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_10a

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v13, :cond_10a

    :cond_109
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10a

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_10a

    .line 4217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4218
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4219
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4220
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4224
    :cond_10a
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_110

    .line 4226
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v0, :cond_10d

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_10b

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_10b

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_10d

    :cond_10b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_10c

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-nez v0, :cond_10c

    goto :goto_8d

    .line 4229
    :cond_10c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_8e

    :cond_10d
    :goto_8d
    const/4 v0, 0x0

    .line 4232
    :goto_8e
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_110

    .line 4233
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 4234
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_10e

    .line 4235
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v7

    sub-float v5, v15, v1

    mul-float v3, v3, v5

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4237
    :cond_10e
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_10f

    const/4 v2, 0x0

    .line 4238
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

    goto :goto_8f

    :cond_10f
    int-to-float v2, v0

    .line 4240
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

    .line 4242
    :goto_8f
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_111

    .line 4243
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_90

    :cond_110
    const/4 v1, 0x0

    .line 4248
    :cond_111
    :goto_90
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_113

    .line 4249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_112

    .line 4250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_91

    .line 4252
    :cond_112
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4253
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

    .line 4254
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

    .line 4258
    :cond_113
    :goto_91
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_115

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_114

    goto :goto_92

    :cond_114
    const/4 v1, 0x0

    goto :goto_94

    :cond_115
    :goto_92
    if-eqz v0, :cond_117

    .line 4260
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_114

    const v1, 0x3dc0c0c1

    add-float/2addr v0, v1

    .line 4261
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_116

    .line 4263
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_116
    const/4 v1, 0x0

    goto :goto_93

    .line 4268
    :cond_117
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_119

    const v2, 0x3dc0c0c1

    sub-float/2addr v0, v2

    .line 4269
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_118

    .line 4271
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_118
    :goto_93
    const/4 v14, 0x1

    .line 4278
    :cond_119
    :goto_94
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_11b

    .line 4279
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_11e

    const v2, 0x3d8e7835

    sub-float/2addr v0, v2

    .line 4280
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11a

    .line 4282
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4284
    :cond_11a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11d

    .line 4285
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    goto :goto_95

    .line 4290
    :cond_11b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_11e

    const v1, 0x3d8e7835

    add-float/2addr v0, v1

    .line 4291
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_11c

    .line 4293
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4295
    :cond_11c
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11d

    .line 4296
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    :cond_11d
    :goto_95
    const/4 v14, 0x1

    .line 4302
    :cond_11e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_120

    .line 4303
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v1, 0x432a0000    # 170.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11f

    const/high16 v0, 0x432a0000    # 170.0f

    .line 4305
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/4 v1, 0x0

    .line 4306
    iput-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    :cond_11f
    const/4 v14, 0x1

    .line 4310
    :cond_120
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eqz v0, :cond_122

    .line 4311
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_121

    const v1, 0x3dc0c0c1

    add-float/2addr v0, v1

    .line 4312
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_121

    .line 4314
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/4 v14, 0x1

    .line 4318
    :cond_121
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_125

    const v1, 0x3d5a740e

    add-float/2addr v0, v1

    .line 4319
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_124

    .line 4321
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_96

    .line 4326
    :cond_122
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v15

    const/4 v1, 0x0

    if-nez v0, :cond_123

    .line 4327
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/4 v14, 0x1

    .line 4330
    :cond_123
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_125

    const v2, 0x3d5a740e

    sub-float/2addr v0, v2

    .line 4331
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_124

    .line 4333
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    :cond_124
    :goto_96
    const/4 v14, 0x1

    :cond_125
    if-eqz v14, :cond_126

    .line 4340
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_126
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

    .line 4606
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4607
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

    .line 4608
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 4610
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 4611
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4612
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 4613
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    sget v2, Lorg/telegram/messenger/R$string;->AccActionChatPreview:I

    const-string v3, "AccActionChatPreview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4616
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CheckBox"

    .line 4617
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4618
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4619
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 809
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez p1, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_9

    .line 813
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

    .line 815
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz p3, :cond_3

    const/16 p1, 0x8

    .line 816
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 817
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 819
    :cond_3
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_4

    sub-int/2addr p4, p2

    sub-int p1, p4, p1

    .line 820
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

    .line 823
    :goto_4
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    if-eqz p3, :cond_8

    .line 824
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_7

    .line 825
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result p2

    goto :goto_5

    :cond_7
    const/16 p1, 0x25

    .line 827
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 p2, 0x17

    .line 828
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 832
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

    .line 834
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 835
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    if-eq p1, p2, :cond_a

    .line 836
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 840
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 767
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 769
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 770
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 768
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 773
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_4

    .line 774
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

    .line 775
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTwoLinesForName()V

    .line 778
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 779
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    .line 780
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 4625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4627
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v2, 0x1

    const-string v3, ". "

    if-ne v1, v2, :cond_0

    .line 4628
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v4, "ArchivedChats"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4631
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_1

    .line 4632
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSecretChat:I

    const-string v4, "AccDescrSecretChat"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4635
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_2

    .line 4636
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTopic:I

    const-string v4, "AccDescrTopic"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4638
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4639
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4640
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    .line 4641
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4642
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v4, "RepliesTitle"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4644
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_4

    .line 4645
    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v4, "Bot"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4646
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4648
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v4, :cond_5

    .line 4649
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v4, "SavedMessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4651
    :cond_5
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4655
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_8

    .line 4656
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_7

    .line 4657
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    const-string v4, "AccDescrChannel"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4659
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    const-string v4, "AccDescrGroup"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4661
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4662
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v1, :cond_9

    .line 4667
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v4, "AccDescrVerified"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4670
    :cond_9
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    const/4 v4, 0x0

    if-lez v1, :cond_a

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "NewMessages"

    .line 4671
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4672
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4674
    :cond_a
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-lez v1, :cond_b

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "AccDescrMentionCount"

    .line 4675
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4678
    :cond_b
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v1, :cond_c

    .line 4679
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMentionReaction:I

    const-string v5, "AccDescrMentionReaction"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4680
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4682
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_19

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_d

    goto/16 :goto_6

    .line 4686
    :cond_d
    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v5, :cond_e

    .line 4688
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_e
    int-to-long v5, v5

    .line 4690
    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v1

    .line 4691
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4692
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrSentDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4694
    :cond_f
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrReceivedDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4697
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_10

    .line 4698
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

    if-eqz v1, :cond_10

    .line 4700
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4701
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4704
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_18

    .line 4705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4706
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4707
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 4708
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4709
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 4710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_11

    .line 4711
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    :cond_11
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4716
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_13

    const/4 v2, -0x1

    goto :goto_4

    :cond_13
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_4
    if-lez v2, :cond_17

    .line 4718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v5, "\n"

    .line 4719
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_14

    if-ltz v5, :cond_14

    move v3, v5

    :cond_14
    const-string v5, "\t"

    .line 4721
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_15

    if-ltz v5, :cond_15

    move v3, v5

    :cond_15
    const-string v5, " "

    .line 4723
    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v3, :cond_16

    if-ltz v2, :cond_16

    move v3, v2

    .line 4725
    :cond_16
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4727
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4730
    :cond_18
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 4683
    :cond_19
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReorderStateChanged(ZZ)V
    .locals 2

    .line 4562
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-ne v0, p1, :cond_3

    .line 4563
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4564
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    :cond_2
    return-void

    .line 4568
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 4570
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 4572
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 4574
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5016
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->canClickButtonInside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5017
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

    .line 5021
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 4597
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 4598
    invoke-virtual {v0, p0}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    const/4 p1, 0x1

    return p1

    .line 4601
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public resetPinnedArchiveState()V
    .locals 4

    .line 750
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 751
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 752
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    .line 753
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 755
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

    .line 757
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    .line 758
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTranslationX(F)V

    .line 759
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_2
    return-void
.end method

.method public setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 5043
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    .line 5039
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 2651
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

    .line 2658
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 2660
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 2661
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2663
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2664
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setClipProgress(F)V
    .locals 0

    .line 5026
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    .line 5027
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 2

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->compactMode:Z

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 140
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setSize(I)V

    :cond_1
    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V
    .locals 3

    .line 670
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    .line 671
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 673
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 675
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 676
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 677
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 678
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 679
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 680
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 681
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 682
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 683
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 684
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 685
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 686
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 687
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 689
    :cond_4
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 6

    .line 577
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 582
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    const/4 v0, -0x1

    .line 583
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 585
    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 588
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v0, :cond_2

    .line 589
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 590
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    goto :goto_0

    .line 595
    :cond_2
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 597
    :cond_3
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 598
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    .line 599
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 600
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 601
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 603
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 604
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 605
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 606
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/4 p1, 0x0

    .line 615
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 616
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 617
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 618
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 619
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 620
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V
    .locals 0

    .line 5059
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    .line 2625
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 2626
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2628
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return-void
.end method

.method public setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V
    .locals 6

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 226
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    .line 227
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/4 v4, -0x1

    cmp-long v5, v2, p2

    if-eqz v5, :cond_1

    .line 228
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 230
    :cond_1
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v3, :cond_2

    .line 231
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    .line 233
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 235
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 236
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 237
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    .line 239
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 240
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 241
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 242
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 243
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 245
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 246
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    :cond_4
    if-nez p6, :cond_5

    .line 249
    iput v4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_5
    if-eqz p1, :cond_6

    .line 252
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 254
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v0, :cond_7

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_7

    .line 256
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    .line 259
    :cond_7
    invoke-virtual {p0, v1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setIsTransitionSupport(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return-void
.end method

.method public setPinForced(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    .line 863
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 866
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    return-void
.end method

.method public setRightFragmentOpenedProgress(F)V
    .locals 1

    .line 263
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 264
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    .line 265
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSliding(Z)V
    .locals 0

    .line 4578
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    .line 5035
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 5

    .line 3131
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3134
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    .line 3135
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    .line 3136
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3137
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3138
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    .line 3139
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3140
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 3142
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/4 v0, 0x1

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_2

    .line 3143
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    goto :goto_0

    .line 3145
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    .line 3146
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3147
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3149
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-nez v2, :cond_4

    .line 3150
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3151
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

    .line 3152
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 3154
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :catch_0
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public startOutAnimation()V
    .locals 3

    .line 4545
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_1

    .line 4546
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    .line 4547
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4548
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4549
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4550
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    goto :goto_0

    .line 4552
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4553
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4554
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4555
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    .line 4557
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->startOutAnimation()V

    :cond_1
    return-void
.end method

.method public update(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2701
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    return p1
.end method

.method public update(IZ)Z
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2706
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    const/4 v3, 0x0

    .line 2708
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    .line 2709
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 2710
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2711
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v9, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2712
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2713
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2714
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2715
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 2716
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    int-to-long v10, v10

    iget-object v4, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 2717
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v14, "50_50"

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    const/4 v4, 0x0

    .line 2718
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v10, v9

    if-ge v4, v10, :cond_1

    .line 2719
    aget-object v9, v9, v4

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2721
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2722
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    const/4 v5, 0x0

    goto/16 :goto_2a

    .line 2724
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2725
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 2726
    :goto_2
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2727
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    const/4 v11, -0x1

    .line 2728
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2729
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_18

    .line 2730
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v11, :cond_16

    .line 2732
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2733
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-nez p1, :cond_17

    .line 2735
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v14, v12, v13}, Lorg/telegram/messenger/MessagesController;->isClearingDialog(J)Z

    move-result v12

    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2736
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

    .line 2737
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

    .line 2738
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2739
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

    .line 2740
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    :cond_6
    if-eqz v12, :cond_8

    .line 2741
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_8

    .line 2742
    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v13

    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v5, v6}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v5

    .line 2743
    aget v6, v5, v3

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2744
    aget v6, v5, v8

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    const/4 v6, 0x2

    .line 2745
    aget v12, v5, v6

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v6, 0x3

    .line 2746
    aget v5, v5, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    goto :goto_6

    .line 2747
    :cond_8
    instance-of v5, v11, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v5, :cond_9

    .line 2748
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2749
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2750
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    goto :goto_6

    .line 2752
    :cond_9
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2753
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2754
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2756
    :goto_6
    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2757
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 2758
    :cond_a
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2760
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

    .line 2761
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto/16 :goto_f

    .line 2763
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

    .line 2777
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

    .line 2767
    :cond_f
    :goto_9
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isForwardDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2768
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

    .line 2769
    :cond_11
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->isArchiveDialogsType(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2770
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

    .line 2772
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

    .line 2775
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

    .line 2779
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_17

    .line 2780
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    goto :goto_10

    .line 2784
    :cond_16
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2785
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2786
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2788
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2789
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2791
    :cond_17
    :goto_10
    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-eqz v13, :cond_19

    sget-wide v11, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    cmp-long v13, v5, v11

    goto :goto_11

    .line 2793
    :cond_18
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2795
    :cond_19
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_1a

    .line 2796
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2797
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2798
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2800
    :cond_1a
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 2801
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    :cond_1b
    if-eqz p1, :cond_38

    .line 2806
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1c

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_1c

    .line 2807
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

    .line 2808
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2810
    :cond_1c
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_22

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_22

    .line 2811
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

    .line 2813
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 2814
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 2815
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

    .line 2817
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v5

    .line 2819
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v6, :cond_21

    .line 2820
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v6, :cond_1f

    if-eqz v5, :cond_1f

    .line 2821
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2822
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_13

    .line 2824
    :cond_1f
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2826
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_20

    .line 2827
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2828
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_13

    .line 2830
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 2832
    :cond_21
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2834
    :cond_22
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v5, :cond_23

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v5, :cond_27

    .line 2835
    :cond_23
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int v5, p1, v5

    if-eqz v5, :cond_27

    .line 2836
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v6

    invoke-virtual {v5, v11, v12, v6, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2837
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

    .line 2842
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_MESSAGE_TEXT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_28

    .line 2843
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_28

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    if-eq v6, v11, :cond_28

    const/4 v5, 0x1

    :cond_28
    if-nez v5, :cond_2a

    .line 2847
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_2a

    .line 2848
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 2849
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

    .line 2853
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2b

    .line 2854
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_2b

    const/4 v5, 0x1

    :cond_2b
    if-nez v5, :cond_2c

    .line 2858
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2c

    .line 2859
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_2c

    const/4 v5, 0x1

    :cond_2c
    if-nez v5, :cond_2d

    .line 2863
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2d

    .line 2864
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v6, :cond_2d

    const/4 v5, 0x1

    :cond_2d
    if-nez v5, :cond_2e

    .line 2868
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v6, p1, v6

    if-eqz v6, :cond_2e

    .line 2869
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v6, :cond_2e

    const/4 v5, 0x1

    :cond_2e
    if-nez v5, :cond_36

    .line 2874
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_2f

    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    if-eq v11, v6, :cond_2f

    .line 2875
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    const/4 v5, 0x1

    .line 2878
    :cond_2f
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v6, :cond_36

    .line 2879
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

    .line 2884
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

    .line 2885
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v12, :cond_32

    .line 2886
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v12

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v12, v14, v15}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v11

    .line 2887
    aget v12, v11, v3

    .line 2888
    aget v14, v11, v8

    const/4 v15, 0x2

    .line 2889
    aget v19, v11, v15

    const/4 v15, 0x3

    .line 2890
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

    .line 2891
    :cond_32
    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v11, :cond_33

    .line 2892
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

    .line 2895
    iget v12, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 2896
    iget v14, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    .line 2897
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    goto :goto_19

    :cond_34
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_18

    :goto_19
    if-eqz v6, :cond_36

    .line 2902
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v15, v12, :cond_35

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-ne v15, v13, :cond_35

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v13, v14, :cond_35

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eq v13, v11, :cond_36

    .line 2903
    :cond_35
    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2904
    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2905
    iget-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2906
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v5, 0x1

    :cond_36
    if-nez v5, :cond_37

    .line 2911
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SEND_STATE:I

    and-int v6, p1, v6

    if-eqz v6, :cond_37

    .line 2912
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_37

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v11, v6, :cond_37

    .line 2913
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    const/4 v5, 0x1

    :cond_37
    if-nez v5, :cond_38

    .line 2919
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    return v3

    .line 2924
    :cond_38
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2925
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2926
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2929
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_3a

    .line 2930
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2931
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 2932
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->findFolderTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_39

    .line 2934
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    :goto_1a
    const-wide/16 v5, 0x0

    goto :goto_1d

    :cond_39
    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x0

    goto :goto_1d

    .line 2939
    :cond_3a
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 2940
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_3c

    .line 2941
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v5, v6, v7, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v5

    .line 2942
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

    .line 2944
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2945
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1c

    .line 2947
    :cond_3b
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    xor-int/lit8 v5, v6, 0x1

    .line 2948
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1c

    .line 2951
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

    .line 2955
    :goto_1c
    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    goto :goto_1a

    :goto_1d
    cmp-long v7, v11, v5

    if-eqz v7, :cond_41

    .line 2959
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2960
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

    .line 2962
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

    .line 2964
    :cond_3e
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2965
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1e

    .line 2967
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

    .line 2968
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v6, :cond_40

    if-eqz v5, :cond_40

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_40

    .line 2969
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

    .line 2971
    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2975
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

    .line 2976
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

    .line 2980
    :cond_41
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/16 v6, 0xc

    if-eqz v5, :cond_42

    .line 2981
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2982
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 2983
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

    .line 2985
    :cond_42
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v5, :cond_43

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_43

    .line 2986
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 2987
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    .line 2988
    :cond_43
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_46

    .line 2989
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2990
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2991
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 2992
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

    .line 2993
    :cond_44
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v5, :cond_45

    .line 2994
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 2995
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

    .line 2997
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

    .line 2999
    :cond_46
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_48

    .line 3000
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3002
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v5, v11, v12}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 3003
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3004
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

    .line 3006
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

    .line 3010
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

    .line 3011
    :cond_4a
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_4b

    .line 3012
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4b
    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 3014
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    .line 3015
    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3019
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/DialogCell$2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_4c

    .line 3029
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v5, :cond_4d

    :cond_4c
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v5, :cond_4f

    if-nez v10, :cond_4d

    goto :goto_20

    .line 3032
    :cond_4d
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v5, :cond_4e

    .line 3033
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3034
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_21

    .line 3036
    :cond_4e
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1ae

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3037
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_21

    .line 3030
    :cond_4f
    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3031
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3039
    :goto_21
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v5, :cond_53

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-eqz v5, :cond_53

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_53

    new-array v5, v8, [Ljava/lang/Object;

    .line 3040
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v8, [Ljava/lang/Object;

    .line 3041
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3043
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v7, v10, :cond_52

    .line 3044
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3045
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3046
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    .line 3047
    :goto_22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_51

    .line 3048
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_50

    .line 3049
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v7, v11, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3050
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v10, v11, v8, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_23

    .line 3052
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

    .line 3056
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

    .line 3057
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

    .line 3058
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v6

    move-object/from16 v20, v15

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 3059
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v6

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_24

    .line 3061
    :cond_52
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3064
    :cond_53
    :goto_24
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    .line 3065
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    .line 3066
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-le v5, v4, :cond_54

    const/4 v4, 0x1

    goto :goto_25

    :cond_54
    const/4 v4, 0x0

    :goto_25
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    .line 3067
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3070
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

    .line 3072
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_57

    .line 3073
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_57
    const/4 v5, 0x0

    .line 3075
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 3076
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    .line 3077
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3081
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_58

    .line 3089
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3090
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_27

    .line 3092
    :cond_58
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3093
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3095
    :goto_27
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_28

    :cond_59
    const/4 v5, 0x0

    .line 3098
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

    .line 3100
    :goto_2a
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v4, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 3101
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_5d
    if-nez v1, :cond_60

    .line 3107
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v1, :cond_5e

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v1, :cond_5f

    :cond_5e
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_5f
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    .line 3108
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_60

    .line 3109
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3113
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3114
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eq v1, v2, :cond_61

    const/4 v3, 0x1

    :cond_61
    return v3

    nop

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

    .line 4759
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 4762
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 4763
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

    .line 4764
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4765
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4766
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 v0, 0x3

    .line 4767
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v7, v0, :cond_9

    .line 4768
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 4769
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

    .line 4770
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

    .line 4771
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

    .line 4772
    :cond_3
    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4776
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_9

    .line 4777
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4778
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4779
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

    .line 4780
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

    .line 4781
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

    .line 4782
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method
